<?php
require('fpdf.php');
//define('FPDF_FONTPATH','font/');
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial',"",16);
$pdf->Cell(40,10,'Hello Cruel World!');
$pdf->Output();
?>
