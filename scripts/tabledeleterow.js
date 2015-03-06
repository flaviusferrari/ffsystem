var TABLE_NAME = 'tblSample'; // this should be named in the HTML
var ROW_BASE = 1; // first number (for display)
var hasLoaded = false;

window.onload=fillInRows;

function fillInRows()
{
	hasLoaded = true;	
}

function addRowToTable(num)
{
	if (hasLoaded) {
		var tbl = document.getElementById(TABLE_NAME);
		var nextRow = tbl.tBodies[0].rows.length;
		var iteration = nextRow + ROW_BASE;
		if (num == null) { 
			num = nextRow;
		} else {
			iteration = num + ROW_BASE;
		}
		
		// add the row
		var row = tbl.tBodies[0].insertRow(num);
		
		// Estilo da Classe da tabela
		row.className = 'classy' + (iteration % 2);
	
		//Adiciona campos na tabela
		
		// cell 0 - text
		var cell0 = row.insertCell(0);
		var textNode = document.createTextNode(iteration);
		cell0.appendChild(textNode);
		
                // cell 1 - input text
		var cell1 = row.insertCell(1);
		var txtInp = document.createElement('input');
		txtInp.setAttribute('type', 'text');
                txtInp.setAttribute('id', "cod"+num);
		txtInp.setAttribute('name', "codProd"+num);
                txtInp.setAttribute('style', 'width: 70px;');
                txtInp.setAttribute('onBlur', "buscaMaterial("+num+")");
		cell1.appendChild(txtInp);
                
                
		// cell 2 - input text
		var cell2 = row.insertCell(2);
		var txtInp2 = document.createElement('input');
		txtInp2.setAttribute('type', 'text');
                txtInp2.setAttribute('id', "quant" + num);
		txtInp2.setAttribute('name', "codigo" + num);
		txtInp2.setAttribute('style', 'width: 60px;');
                txtInp2.setAttribute('onChange', "calculaValor("+num+")");
		txtInp2.setAttribute('value',""); // iteration included for debug purposes
		cell2.appendChild(txtInp2);
		
		// cell 3 - input text
		var cell3 = row.insertCell(3);
		var txtInp3 = document.createElement('input');
		txtInp3.setAttribute('type', 'text');
                txtInp3.setAttribute('id', "material"+num);
		txtInp3.setAttribute('name', "material" + num);
		txtInp3.setAttribute('style', 'width: 200px;');
		txtInp3.setAttribute('value',""); // iteration included for debug purposes
		cell3.appendChild(txtInp3);

		// cell 4 - input text
		var cell4 = row.insertCell(4);
		var txtInp4 = document.createElement('input');
		txtInp4.setAttribute('type', 'text');
                txtInp4.setAttribute('id', "valor" + num);
                txtInp4.setAttribute('class', "valUnit");
		txtInp4.setAttribute('name', "valor" + num);
		txtInp4.setAttribute('style', 'width: 80px;');
		txtInp4.setAttribute('value',"0"); // iteration included for debug purposes
                txtInp4.setAttribute('onChange', "calculaValor("+num+")");
		cell4.appendChild(txtInp4);
		
		// cell 4 - input button
//		var cell4 = row.insertCell(4);
//		var btnEl = document.createElement('input');
//		btnEl.setAttribute('type', 'button');
//		btnEl.onclick = function () {deleteCurrentRow(this)};
//		btnEl.setAttribute('value', 'Delete');
//		cell4.appendChild(btnEl);

                var cell5 = row.insertCell(5);
		var txtInp5 = document.createElement('input');
		txtInp5.setAttribute('type', 'text');
		txtInp5.setAttribute('id', "totalmat" + num);
                txtInp5.setAttribute('class', 'vmaterial');
		txtInp5.setAttribute('name', "totalmat" + num);
		txtInp5.setAttribute('style', 'width: 70px;');
		txtInp5.setAttribute('value',"0"); // iteration included for debug purposes
                txtInp5.setAttribute('onBlur', "calcula()");
		cell5.appendChild(txtInp5);

		// cell 6 - input text
		var cell6 = row.insertCell(6);
		var txtInp6 = document.createElement('input');
		txtInp6.setAttribute('type', 'hidden');
		txtInp6.setAttribute('name', "quantidade");
		txtInp6.setAttribute('value', "" + num); // iteration included for debug purposes
		cell6.appendChild(txtInp6);
				
	}
}

function deleteCurrentRow(obj)
{
	if (hasLoaded) {
		var delRow = obj.parentNode.parentNode;
		var tbl = delRow.parentNode.parentNode;
		var rIndex = delRow.sectionRowIndex;
		var rowArray = new Array(delRow);
		
		obj = document.getElementsByTagName("input");
		
		for (var i=0; i<rowArray.length; i++) {
			
			var rIndex = rowArray[i].sectionRowIndex;
			rowArray[i].parentNode.deleteRow(rIndex);
			
			alert(rIndex + 1);			
		}			   
	}
}

    function testeCurrentRow(obj)  
    {  
       if (hasLoaded) {  
          var linha = obj.parentNode.parentNode;  
          for (var coluna=0; coluna<linha.cells.length; coluna++) {  
             var celula = linha.cells[coluna].firstChild;   
             alert(celula.name + ': ' + celula.value);  
          }  
       }  
    }  
