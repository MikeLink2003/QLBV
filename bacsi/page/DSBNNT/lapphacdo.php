<?php
$MaBN = isset($_GET['MaBN']) ? $_GET['MaBN'] : null;
if (!$MaBN) {
    echo '<script>
            Swal.fire({
                icon: "error",
                title: "Thất bại",
                text: "Không có dữ liệu bệnh nhân.",
                confirmButtonText: "Thử lại"
            });
        </script>';
    exit; // Dừng tiếp tục xử lý khi không có MaBN
}
$MaNS = $_SESSION['maNS'];
include_once(BACKEND_URL . 'model/mBenhNhan.php');

$con = new mBenhNhan(); 

$BenhNhan = $con->getBenhNhan($MaBN);
if (empty($BenhNhan)) {
    echo '<script>
            Swal.fire({
                icon: "error",
                title: "Thất bại",
                text: "Không có dữ liệu bệnh nhân.",
                confirmButtonText: "Thử lại"
            });
        </script>';
    exit;
}
$benhNhan = $BenhNhan[0]; 
include_once(BACKEND_URL . 'model/mThuoc.php');
$conThuoc = new mThuoc();
$dsThuoc = $conThuoc->getAllThuoc(); 

?>
<div class="main-content" id="main-content">
        <h2 class="text-center mb-4">Lập phác đồ điều trị</h2>
        <hr class="divider">
        <form>
            <!-- Thông tin bệnh nhân -->
            <fieldset class="border p-4 mb-4 rounded bg-white">
                <legend class="w-auto px-3">Thông tin bệnh nhân</legend>
                <div class="mb-3">
                    <label for="patientName" class="form-label">Họ và tên</label>
                    <input type="text" class="form-control" id="patientName"  value="<?php echo $benhNhan['HoTen']; ?>">
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="patientAge" class="form-label">Ngày sinh</label>
                        <input type="date" class="form-control" id="patientAge" value="<?php echo $benhNhan['NgaySinh']; ?>">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="patientGender" class="form-label"  >Giới tính</label>
                        <input type="text" class="form-control"  value="<?php echo $benhNhan['GioiTinh']; ?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="patientAge" class="form-label">Lý do nhập viện</label>
                        <input type="text" class="form-control" id="patientAge" value="<?php echo $benhNhan['LyDo']; ?>">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="patientGender" class="form-label"  >Chẩn đoán ban đầu</label>
                        <input type="text" class="form-control"  value="<?php echo $benhNhan['ChuanDoanBD']; ?>">
                    </div>
                </div>
                
            </fieldset>
            </form>

            <!-- Chẩn đoán và kế hoạch điều trị -->
            <fieldset class="border p-4 mb-4 rounded bg-white">
                <legend class="w-auto px-3">Kế hoạch điều trị</legend>
                <div class="mb-3">
                    <label for="diagnosis" class="form-label">Chẩn đoán</label>
                    <textarea class="form-control" id="diagnosis" rows="3" placeholder="Nhập chẩn đoán"></textarea>
                </div>
                <div class="mb-3">
                    <label for="treatmentPlan" class="form-label">Kế hoạch điều trị</label>
                    <textarea class="form-control" id="treatmentPlan" rows="5" placeholder="Nhập kế hoạch điều trị"></textarea>
                </div>
                 
                <div class="mb-3">
                    <label for="treatmentPlan" class="form-label">Chế độ dinh dưỡng</label>
                    <textarea class="form-control" id="CheDoDD" rows="5" placeholder="Nhập kế hoạch điều trị"></textarea>
                </div>
            </fieldset>


            <!-- Hướng dẫn thuốc -->
          
            <table class="results">
                <h4>TOA THUỐC</h4>
                <tr>
                    <th>STT</th>
                    <th>Tên thuốc</th>
                    <th>Liều lượng</th>
                    <th>Số lượng</th>
                    <th>Cách dùng</th>
                    <th>Thao tác</th>
                </tr>
                <tr>
                    <td><input type="number" value="1" readonly></td>
                    <td>
                        <input type="text" name="tenThuoc" id="tenThuoc" placeholder="Nhập tên thuốc..." autocomplete="off">
                        <select name="tenThuocOptions" id="tenThuocOptions">
                            <option value="">Chọn thuốc</option>
                        </select>
                    </td>
                    <td>
                        <select name="lieuLuong" id="lieuLuong">
                            <option value=""></option>
                            <option value="1 lần/ngày">1 lần/ngày</option>
                            <option value="2 lần/ngày">2 lần/ngày</option>
                            <option value="3 lần/ngày">3 lần/ngày</option>
                        </select>
                    </td>
                    <td><input type="number" id="soLuong"></td>
                    <td>
                        <select name="cachDung" id="cachDung">
                            <option value=""></option>
                            <option value="Uống vào buổi sáng">Uống vào buổi sáng</option>
                            <option value="Uống vào buổi sáng và tối">Uống vào buổi sáng và tối</option>
                            <option value="Tiêm">Tiêm</option>
                        </select>
                    </td>
                    <td><button class="lpk-button" id="addDrugButton">Thêm thuốc</button></td>
                </tr>
            </table>


            <!-- Nút hành động -->
            <div class="text-center">
            <button class="btn btn-primary btn-lg w-50" id="savePrescriptionButton">Lưu phác đồ</button>
            </div>
    </div>

    <script>
    // Lắng nghe sự kiện khi người dùng nhập dữ liệu tìm kiếm thuốc
    document.getElementById('tenThuoc').addEventListener('input', function() {
        var searchTerm = this.value.trim();

        var xhr = new XMLHttpRequest();
        var url = searchTerm.length > 0 
            ? "/QLBV/ajax/searchThuoc.php?search=" + searchTerm 
            : "/QLBV/ajax/searchThuoc.php"; 

        xhr.open("GET", url, true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var results = JSON.parse(xhr.responseText);
                var selectElement = document.getElementById('tenThuocOptions');
                selectElement.innerHTML = '<option value="">Chọn thuốc</option>'; 

                if (results.length > 0) {
                    results.forEach(function(thuoc) {
                        var option = document.createElement('option');
                        option.value = thuoc.MaThuoc;
                        option.textContent = thuoc.TenThuoc;
                        selectElement.appendChild(option);
                    });
                } else {
                    var option = document.createElement('option');
                    option.textContent = "Không tìm thấy thuốc";
                    selectElement.appendChild(option);
                }
            }
        };
        xhr.send();
    });

    // Lắng nghe sự kiện khi chọn thuốc từ danh sách
    document.getElementById('tenThuocOptions').addEventListener('change', function() {
        var selectedOption = this.options[this.selectedIndex];
        var selectedMaThuoc = selectedOption.value;
        var selectedTenThuoc = selectedOption.textContent;

        // Cập nhật ô input với mã thuốc và tên thuốc đã chọn
        document.getElementById('tenThuoc').value = selectedTenThuoc;
        document.getElementById('tenThuoc').setAttribute('data-ma-thuoc', selectedMaThuoc);
        
    });
    // Xử lý thêm thuốc vào bảng
// Lắng nghe sự kiện khi người dùng nhấn nút "Thêm thuốc"
document.getElementById('addDrugButton').addEventListener('click', function() {
    var maThuoc = document.getElementById('tenThuoc').getAttribute('data-ma-thuoc');
    var tenThuoc = document.getElementById('tenThuoc').value;
    var lieuLuong = document.getElementById('lieuLuong').value;
    var soLuong = document.getElementById('soLuong').value;
    var cachDung = document.getElementById('cachDung').value;

    if (maThuoc && tenThuoc && lieuLuong && soLuong && cachDung) {
        var table = document.querySelector('.results');
        
        // Tính số thứ tự mới, đếm các dòng dữ liệu trong bảng (bỏ qua dòng tiêu đề)
        var newSTT = table.querySelectorAll('tr[data-type="data"]').length + 1; 

        var newRow = table.insertRow(1);  // Insert new row at the top

        // Thêm thuộc tính data-type để dễ phân biệt dòng dữ liệu
        newRow.setAttribute('data-type', 'data'); 
        newRow.setAttribute('data-ma-thuoc', maThuoc); 
        // Thêm các ô dữ liệu vào dòng mới
        newRow.innerHTML = `
            <td>${newSTT}</td>
            <td>${tenThuoc}</td>
            <td>${lieuLuong}</td>
            <td>${soLuong}</td>
            <td>${cachDung}</td>
            <td>  <button class="icon-btn delete-btn"><i class="fas fa-trash-alt"></i></button></td>
        `;

        // Reset input fields after adding the drug
        document.getElementById('tenThuoc').value = '';
        document.getElementById('lieuLuong').value = '';
        document.getElementById('soLuong').value = '';
        document.getElementById('cachDung').value = '';

        // Thêm chức năng xóa thuốc
        newRow.querySelector('.delete-btn').addEventListener('click', function() {
            table.deleteRow(newRow.rowIndex);
            // Cập nhật lại STT sau khi xóa
            updateSTT();
        });

        // Cập nhật lại số thứ tự cho các dòng sau khi thêm
        updateSTT();
    } else {
        Swal.fire({
            icon: 'error',
            title: 'Lỗi',
            text: 'Vui lòng nhập đầy đủ thông tin thuốc.',
            confirmButtonText: 'Thử lại'
        });
    }
});

// Hàm cập nhật lại STT sau khi thêm/xóa thuốc
function updateSTT() {
    var rows = document.querySelectorAll('.results tr[data-type="data"]');
    rows.forEach(function(row, index) {
        row.cells[0].textContent = index + 1;  // Cập nhật STT cho mỗi dòng
    });
}

    

document.getElementById('savePrescriptionButton').addEventListener('click', function () {
    var table = document.querySelector('.results');
    var rows = table.querySelectorAll('tr');

    // Thu thập dữ liệu các thuốc trong bảng
    var chiTietDonThuoc = [];

    rows.forEach(function (row, index) {
        if (index === 0) return; // Bỏ qua tiêu đề

        var tenThuoc = row.cells[1].textContent;
        var lieuLuong = row.cells[2].textContent;
        var soLuong = parseInt(row.cells[3].textContent);
        var cachDung = row.cells[4].textContent;
        var maThuoc = row.getAttribute('data-ma-thuoc');

        if (maThuoc && soLuong) {
            chiTietDonThuoc.push({
                MaThuoc: maThuoc,
                SoLuong: soLuong,
                LieuDung: lieuLuong,
                CachDung: cachDung
            });
        }
    });

    var ChuanDoan = encodeURIComponent(document.getElementById('diagnosis').value.trim());
    var KeHoach = encodeURIComponent(document.getElementById('treatmentPlan').value.trim());
    var CheDoDD = encodeURIComponent(document.getElementById('CheDoDD').value.trim());
    var maNS = <?php echo json_encode($_SESSION['maNS']); ?>;
    if (!ChuanDoan || !KeHoach) {
        alert('Vui lòng nhập chẩn đoán và tình trạng hiện tại!');
        return;
    }

    // Gửi dữ liệu lên server để lưu
    if (chiTietDonThuoc.length > 0 || ChuanDoan || KeHoach || CheDoDD) {
        var xhr = new XMLHttpRequest();
        xhr.open('POST', '/QLBV/ajax/savePhacDo.php', true);
        xhr.setRequestHeader('Content-Type', 'application/json');

        xhr.onreadystatechange = function () {  
            if (xhr.readyState == 4 && xhr.status == 200) {
                console.log("Server Response: ", xhr.responseText);
                try {
                    // Kiểm tra dữ liệu phản hồi và phân tích JSON
                    console.log("Server Response: ", xhr.responseText);  // Kiểm tra dữ liệu phản hồi
                    var response = JSON.parse(xhr.responseText);

                    if (response.success) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Thành công',
                            text: 'Lập phác đồ thành công!',
                            confirmButtonText: 'OK'
                        }).then(() => {
                            window.location.href = '/QLBV/bacsi/index.php?page=DSBNNT';
                        });
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Lỗi',
                            text: 'Lỗi khi lưu phác đồ ' ,
                            confirmButtonText: 'Thử lại'
                        });
                    }

                } catch (e) {
                        console.error('Error parsing JSON:', e);

                        Swal.fire({
                            icon: 'error',
                            title: 'Lỗi không mong muốn',
                            text: 'Có lỗi xảy ra khi nhận dữ liệu từ server. Vui lòng kiểm tra phản hồi.',
                            // footer: '<pre>' + xhr.responseText + '</pre>', 
                            confirmButtonText: 'OK'
                        });
                    }
            }
        };

        // Gửi dữ liệu dưới dạng JSON
        var data = {
            MaBN: <?php echo json_encode($MaBN); ?>,
            NgayKeDon: new Date().toISOString().split('T')[0],
            ChuanDoan: ChuanDoan,
            KeHoach: KeHoach,
            CheDoDD: CheDoDD,
            ChiTietDonThuoc: chiTietDonThuoc,
            MaNS: maNS
        };

        xhr.send(JSON.stringify(data));
    } else {
        Swal.fire({
            icon: 'error',
            title: 'Lỗi',
            text: 'Không có dữ liệu để lưu.',
            confirmButtonText: 'Thử lại'
        });
    }
});



</script>
