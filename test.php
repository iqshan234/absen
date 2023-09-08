<!DOCTYPE html>
<html>
<head>
    <title>Form Input Data</title>
</head>
<body>
    <?php
    $host = "localhost";
    $username = "root";
    $password = "";
    $database = "upload_file";

    $conn = mysqli_connect($host, $username, $password, $database);

    if (!$conn) {
        die("Koneksi database gagal: " . mysqli_connect_error());
    }

    if (isset($_POST['submit'])) {
        $nama = $_POST['nama'];
        $checkbox1 = isset($_POST['checkbox1']) ? 1 : 0;
        $checkbox2 = isset($_POST['checkbox2']) ? 1 : 0;
        $checkbox3 = isset($_POST['checkbox3']) ? 1 : 0;

        $sql = "INSERT INTO ijin (nama, checkbox1, checkbox2, checkbox3) VALUES ('$nama', '$checkbox1', '$checkbox2', '$checkbox3')";

        if (mysqli_query($conn, $sql)) {
            echo "Data berhasil disimpan.";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }
    ?>

    <h1>Form Input Data</h1>
    <form method="post">
        Input Text: <input type="text" name="nama"><br>
        Checkbox 1: <input type="checkbox" name="checkbox1" value="1"><br>
        Checkbox 2: <input type="checkbox" name="checkbox2" value="1"><br>
        Checkbox 3: <input type="checkbox" name="checkbox3" value="1"><br>
        <input type="submit" name="submit" value="Simpan">
    </form>

    <h2>Data Hasil Input</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Input Text</th>
            <th>Checkbox 1</th>
            <th>Checkbox 2</th>
            <th>Checkbox 3</th>
        </tr>
        <?php
        $query = "SELECT * FROM ijin";
        $result = mysqli_query($conn, $query);

        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['nama'] . "</td>";
            echo "<td>" . ($row['checkbox1'] == 1 ? 'Ya' : 'Tidak') . "</td>";
            echo "<td>" . ($row['checkbox2'] == 1 ? 'Ya' : 'Tidak') . "</td>";
            echo "<td>" . ($row['checkbox3'] == 1 ? 'Ya' : 'Tidak') . "</td>";
            echo "</tr>";
        }

        mysqli_close($conn);
        ?>
    </table>
</body>
</html>
