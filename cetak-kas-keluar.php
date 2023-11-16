<?php
include 'koneksi.php';
?>

<script>
    window.print();
</script>

<table border="1" width="100%" cellpadding="5" cellspacing="0">
    <tr>
        <th colspan="4">Laporan Kas Keluar</th>
    </tr>
    <tr>
        <th>No</th>
        <th>Tanggal</th>
        <th>Keterangan</th>
        <th>Total</th>
    </tr>
    <?php
    if (isset($_GET['tanggal_awal'])) {
        $tanggal_awal = $_GET['tanggal_awal'];
        $tanggal_akhir = $_GET['tanggal_akhir'];
        $no = 1;
        $query = mysqli_query($koneksi, "SELECT * FROM kas_keluar WHERE (DATE(tanggal) BETWEEN '$tanggal_awal' AND '$tanggal_akhir')");
        while ($data = mysqli_fetch_array($query)) {
    ?>
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo date('d-m-Y', strtotime($data['tanggal'])) ?></td>
                <td><?php echo $data['keterangan'] ?></td>
                <td>Rp <?php echo number_format($data['total'], 2, ",", ".") ?></td>
            </tr>
    <?php
        }
    }
    ?>
</table>