/*------------------------------------------------------------------------------------------------
* Nombre:	    	Eventos_GridView.js
* Descripción:		Eventos y funciones JavaScript.
* Consideraciones:	
* Creado por:		Gustavo N. Tripolone
* Modificado por: 	
* Historial de revisiones:
* Fecha    	Método / Evento	autor 	Descripción
* -----------------------------------------------------------------------------------------------
* 02/07/2009	            GNT 	Implementación inicial.
* -----------------------------------------------------------------------------------------------
* 12/01/2011	            JNG 	SE DEJAN DE USAR ALGUNAS FUNCIONES, AsignaGridViewControl,onGridViewRowSelected 
*                                   SE DEJAN POR QUE SON LLAMADAS EN OTRAS SECCIONES DE CODIGO (aunque no se usen)
* -----------------------------------------------------------------------------------------------
*/

// Variables Globales \\
var gsFondoDefault;
var gsFondoSeleccionar;
var filaAnterior;
var colorFilaAnterior = '-1';
var IdRegistro;
// Ordenar el GridView \\
var gridViewCtlId = null;
var gridViewCtl = null;
var curSelRow = null;
var selRow = -1;
var g_indiceFila = -1;
var indiceGVfilaSel = -1;
// Colores \\
gsFondoDefault = "#ffffff";
gsFondoSeleccionar = "#ACE3C8"; //"#EEEBDE";   //"#EDEFF4";#EEEBDE"#A3CAD6";
//gsFondoColumna = "#ffffff";
gsFondoColumna = "#ffffff";
gsTextoSeleccionar = "#0000CC";
///////\\\\\\\

/// Utilizado para cambiarle el color de fondo a cualquier objeto, color como resaltado.
/// Historial de revisiones:
/// Fecha         Método / Evento   Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 30/06/2009	                    GNT 	Implementación inicial.
/// ------------------------------------------------------------------------------------
function ResaltarOn(fila) {
    colorOriginal = document.getElementById(filaAnterior).style.backgroundColor;
    if (filaAnterior == fila)
        return;
    else if (filaAnterior != null)
        document.getElementById(filaAnterior).style.backgroundColor = gsFondoDefault;

    document.getElementById(fila).style.backgroundColor = gsFondoSeleccionar;
    filaAnterior = fila;
}

/// Utilizado para cambiarle el color de fondo a cualquier objeto, color donde quita el resaltado.
/// Historial de revisiones:
/// Fecha         Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 30/06/2009	  GNT   	Implementación inicial.
/// ------------------------------------------------------------------------------------
var filaAnt;
function ResaltarOff(fila) {
    if (filaAnt == fila)
        return;
    else if (filaAnt != null)
        document.getElementById(filaAnt).style.backgroundColor = gsFondoDefault;

    document.getElementById(fila).style.backgroundColor = gsFondoDefault;
    filaAnterior = fila;
}

/// Utilizado para cambiarle el color de texto a una fila del gridview.
/// Historial de revisiones:
/// Fecha         Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 30/06/2009	  GNT   	Implementación inicial.
/// ------------------------------------------------------------------------------------
function gvResaltar_On(GridView) {
    if (GridView != null) {
        GridView.style.cursor = 'default';
        GridView.style.color = gsTextoSeleccionar;
    }
}

/// Utilizado para cambiarle el color de texto a una fila del gridview, color donde quita el resaltado.
/// Historial de revisiones:
/// Fecha         Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 30/06/2009	  GNT   	Implementación inicial.
/// ------------------------------------------------------------------------------------
function gvResaltar_Off(GridView) {
    if (GridView != null) {
        GridView.style.cursor = 'default';
        GridView.style.color = 'inherit';
    }
}

var previousRow;




function ChangeRowColor(row) {
    //If last clicked row and the current clicked row are same
    if (previousRow == row)
        return; //do nothing
    //If there is row clicked earlier
    else if (previousRow != null)
        document.getElementById(previousRow).style.backgroundColor = "#ffffff"; //change the color of the previous row back to white

    document.getElementById(row).style.backgroundColor = "#ffffda"; //change the color of the current row to light yellow
   // window.open("Default9.aspx");
    //assign the current row id to the previous row id for next row to be clicked
    previousRow = row;
}




function ChangeColor(fila, pcolor, pindice) {

    if (document.getElementById(fila) != null) {
        document.getElementById('ctl00_hdfindiceGVfilaSel').value = fila;
        if (fila != null) {
            document.getElementById(fila).style.cursor = 'default';
        }

        if (previousRow == fila)
            return;
        else if (previousRow != null) {

            document.getElementById(previousRow).style.backgroundColor = (colorFilaAnterior == '-1') ? gsFondoDefault : colorFilaAnterior; //gsFondoDefault;
        }

        if ((colorFilaAnterior == null) || (colorFilaAnterior == 'undefined')) {
            colorFilaAnterior = gsFondoDefault;
        }
        else colorFilaAnterior = document.getElementById(fila).style.backgroundColor;
        //alert('color anterior ' + colorFilaAnterior);
        colorFilaAnterior = ((colorFilaAnterior == null) || (colorFilaAnterior == 'undefined')) ? gsFondoDefault : colorFilaAnterior;


        switch (pcolor) {
            case 0:
                document.getElementById(fila).style.backgroundColor = gsFondoSeleccionar;
                break;
            case 1:
                document.getElementById(fila).style.backgroundColor = gsFondoColumna;
                break;
        }

        previousRow = fila;

    }
}

function AsignaGridViewControl(pgvCtrl) {
    gridViewCtlId = pgvCtrl;
}

function getGridViewControl() {
    if (null == gridViewCtl) {
        gridViewCtl = document.getElementById(gridViewCtlId);
    }
}

function onGridViewRowSelected(rowIdx) {

    g_indiceFila = rowIdx
    //     alert(g_indiceFila);
    //   var selRow = getSelectedRow(rowIdx);
    var selRow = getGridRow(rowIdx);

    if (null != selRow) {
        curSelRow = selRow;
        var cellValue = getCellValue(rowIdx, 0);
    }
}

// function getSelectedRow(rowIdx) {
//     return getGridRow(rowIdx);
// }

function getGridRow(rowIdx) {
    getGridViewControl();
    if (null != gridViewCtl) {
        // alert('getGridRow' + rowIdx)
        tbl = gridViewCtl.rows[rowIdx];
        ChangeColor(tbl.id, 0);
        //  ChangeColor(gridViewCtl.rows[rowIdx], 0);
        return gridViewCtl.rows[rowIdx];
    }
    return null;
}

function getGridColumn(rowIdx, colIdx) {
    var gridRow = getGridRow(rowIdx);
    if (null != gridRow) {
        return gridRow.cells[colIdx];
    }
    return null;
}

function getCellValue(rowIdx, colIdx) {
    var gridCell = getGridColumn(rowIdx, colIdx);
    if (null != gridCell) {
        return gridCell.innerText;
    }
    return null;
}

/// Utilizado para cambiarle el color de fondo a cualquier objeto, color como resaltado.
/// Historial de revisiones:
/// Fecha         Método / Evento   Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 30/06/2009	                    GNT 	Implementación inicial.
/// ------------------------------------------------------------------------------------
function RegistroSeleccionado(pidRegistro) {
    IdRegistro = pidRegistro;
}


/// Método para obtener el ID del registro seleccionado en la grilla de datos.
/// Historial de revisiones:
/// Fecha         Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 30/06/2009	   GNT 	    Implementación inicial.
/// ------------------------------------------------------------------------------------
function ObtieneID() {
    return IdRegistro;
}

/// Método para checkear todos los checbox de la grilla.
/// Historial de revisiones:
/// Fecha         Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 12/09/2009	   GNT 	    Implementación inicial.
/// ------------------------------------------------------------------------------------
function SelectCheckbox(spanChk) {
    document.getElementById(spanChk).checked = true;
}

/// Método para checkear un checbox de la grilla.
/// Historial de revisiones:
/// Fecha         Autor 	Descripción
/// ------------------------------------------------------------------------------------
/// 12/09/2009	   GNT 	    Implementación inicial.
/// ------------------------------------------------------------------------------------
function SelectAllCheckboxes(spanChk) {
    // Added as ASPX uses SPAN for checkbox
    var oItem = spanChk.children;
    var theBox = (spanChk.type == "checkbox") ?
        spanChk : spanChk.children.item[0];
    xState = theBox.checked;
    elm = theBox.form.elements;

    for (i = 0; i < elm.length; i++)
        if (elm[i].type == "checkbox" &&
              elm[i].id != theBox.id) {
            //elm[i].click();

            if (elm[i].checked != xState)
                elm[i].click();
            //elm[i].checked=xState;
        }
}

//---------------------------------------------------------------------------­----------
//Efectos sobre grilla/celda.. No usado, solo lo he dejado para que sirva de ejemplo
//---------------------------------------------------------------------------­----------

function gvMouseOver(src, classOver) {
    if (!src.contains(event.fromElement)) {
        src.className = classOver;
    }
}

function gvMouseOut(src, classIn) {
    if (!src.contains(event.toElement)) {
        src.className = classIn;
    }
}

//  para marcar la fila que estaba seleccionada cdo abrio la ventana modal
function marcaFilaSel() {
    nbre = document.getElementById('ctl00_hdfindiceGVfilaSel').value;
    tr = document.getElementById(nbre);
    alert(tr);
    tr.click();
    //  alert();
    if (nbre != '-1')
        document.getElementById(nbre).style.backgroundColor = gsFondoSeleccionar;
}
