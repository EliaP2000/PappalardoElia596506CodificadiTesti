var pag1;
var pag2;
var pag3;
var pag4;
var pagine;
var visibile;
var bottonePrem;
var fraseEvid;


//All'uscita del mouse dall'area span della riga su cui è posizionato nella trascrizione, la funzione rimuove l'alone.
function disevidenzia(nodo) {
    var nodi = document.getElementsByClassName(nodo.getAttribute("class").replace("line ", ""));
    for (var n of nodi) {
        n.style.removeProperty("background-color");
        disevidenzia_immagine(n);
    }
}

function disevidenzia_immagine(n){
    var nodi = document.getElementById((nodo.getAttribute("class").replace("line ", "")));
    for (var ni of nodi) {
        if(ni==n)
            ni.style.opacity = "0.1";
    }
}

//Al passaggio del mouse dall'area span della riga su cui è posizionato nella trascrizione, la funzione genera un'alone.
function evidenzia(nodo) {
    var nodi = document.getElementsByClassName((nodo.getAttribute("class").replace("line ", "")));
    for (var n of nodi) {
        n.style.backgroundColor = "rgba(255,127,0,0.5)";
        evidenzia_immagine(n);
    }
}

function evidenzia_immagine(n){
    var nodi = document.getElementById((nodo.getAttribute("class").replace("line ", "")));
    for (var ni of nodi) {
        if(ni==n)
            ni.style.opacity = "0.1";
    }
}

//Al caricamento della pagina html, vengono presi gli elementi con i nomi sottostanti e uguali a quelli presenti nel file html e dopodiché inseriti in un array di valori
//al passaggio e all'uscita del mouse dall'area span, onmouseover e onmouseout entrano in funzione
window.onload = function () {
console.log("Il file script.js è collegato correttamente.");
    pag1 = [document.getElementsByClassName("pagina1_138"),
            document.getElementsByClassName("pagina2_138"),
            document.getElementsByClassName("pagina3_138"),
            document.getElementsByClassName("pagina4_138"),
            document.getElementsByClassName("pagina5_138"),
            document.getElementsByClassName("pagina6_138"),
            document.getElementsByClassName("pagina7_138"),
            document.getElementsByClassName("pagina8_138"),
            document.getElementsByClassName("pagina9_138"),
            document.getElementsByClassName("pagina10_138"),
            document.getElementsByClassName("pagina11_138"),
            document.getElementsByClassName("pagina12_138"),
            document.getElementsByClassName("pagina13_138"),
            document.getElementsByClassName("pagina14_138"),
            document.getElementsByClassName("pagina15_138"),
            document.getElementsByClassName("pagina16_138"),
            document.getElementsByClassName("pagina17_138"),
            document.getElementsByClassName("pagina18_138"),
            document.getElementsByClassName("pagina19_138"),
            document.getElementsByClassName("pagina20_138"),
            document.getElementsByClassName("pagina21_138"),
            document.getElementsByClassName("pagina22_138"),
            document.getElementsByClassName("pagina23_138"),
            document.getElementsByClassName("pagina24_138"),
            document.getElementsByClassName("pagina25_138"),
            document.getElementsByClassName("pagina26_138"),
            document.getElementsByClassName("pagina27_138"),
            document.getElementsByClassName("pagina28_138"),
            document.getElementsByClassName("pagina29_138"),
            document.getElementsByClassName("pagina30_138"),
            document.getElementsByClassName("pagina31_138"),
            document.getElementsByClassName("pagina32_138"),
            document.getElementsByClassName("pagina33_138"),
            document.getElementsByClassName("pagina34_138"),
            document.getElementsByClassName("pagina35_138"),
            document.getElementsByClassName("pagina36_138")];

    pag2 = [document.getElementsByClassName("pagina1_139"),
            document.getElementsByClassName("pagina2_139"),
            document.getElementsByClassName("pagina3_139"),
            document.getElementsByClassName("pagina4_139"),
            document.getElementsByClassName("pagina5_139"),
            document.getElementsByClassName("pagina6_139"),
            document.getElementsByClassName("pagina7_139"),
            document.getElementsByClassName("pagina8_139"),
            document.getElementsByClassName("pagina9_139"),
            document.getElementsByClassName("pagina10_139"),
            document.getElementsByClassName("pagina11_139"),
            document.getElementsByClassName("pagina12_139"),
            document.getElementsByClassName("pagina13_139"),
            document.getElementsByClassName("pagina14_139"),
            document.getElementsByClassName("pagina15_139"),
            document.getElementsByClassName("pagina16_139"),
            document.getElementsByClassName("pagina17_139"),
            document.getElementsByClassName("pagina18_139"),
            document.getElementsByClassName("pagina19_139"),
            document.getElementsByClassName("pagina20_139"),
            document.getElementsByClassName("pagina21_139"),
            document.getElementsByClassName("pagina22_139"),
            document.getElementsByClassName("pagina23_139"),
            document.getElementsByClassName("pagina24_139"),
            document.getElementsByClassName("pagina25_139"),
            document.getElementsByClassName("pagina26_139"),
            document.getElementsByClassName("pagina27_139"),
            document.getElementsByClassName("pagina28_139"),
            document.getElementsByClassName("pagina29_139"),
            document.getElementsByClassName("pagina30_139"),
            document.getElementsByClassName("pagina31_139"),
            document.getElementsByClassName("pagina32_139")];
    
    pag3 = [document.getElementsByClassName("pagina1_140"),
            document.getElementsByClassName("pagina2_140"),
            document.getElementsByClassName("pagina3_140"),
            document.getElementsByClassName("pagina4_140"),
            document.getElementsByClassName("pagina5_140"),
            document.getElementsByClassName("pagina6_140"),
            document.getElementsByClassName("pagina7_140"),
            document.getElementsByClassName("pagina8_140"),
            document.getElementsByClassName("pagina9_140"),
            document.getElementsByClassName("pagina10_140"),
            document.getElementsByClassName("pagina11_140"),
            document.getElementsByClassName("pagina12_140"),
            document.getElementsByClassName("pagina13_140"),
            document.getElementsByClassName("pagina14_140"),
            document.getElementsByClassName("pagina15_140"),
            document.getElementsByClassName("pagina16_140"),
            document.getElementsByClassName("pagina17_140"),
            document.getElementsByClassName("pagina18_140"),
            document.getElementsByClassName("pagina19_140"),
            document.getElementsByClassName("pagina20_140"),
            document.getElementsByClassName("pagina21_140"),
            document.getElementsByClassName("pagina22_140"),
            document.getElementsByClassName("pagina23_140"),
            document.getElementsByClassName("pagina24_140"),
            document.getElementsByClassName("pagina25_140"),
            document.getElementsByClassName("pagina26_140"),
            document.getElementsByClassName("pagina27_140"),
            document.getElementsByClassName("pagina28_140"),
            document.getElementsByClassName("pagina29_140"),
            document.getElementsByClassName("pagina30_140"),
            document.getElementsByClassName("pagina31_140"),
            document.getElementsByClassName("pagina32_140"),
            document.getElementsByClassName("pagina33_140"),
            document.getElementsByClassName("pagina34_140"),
            document.getElementsByClassName("pagina35_140"),
            document.getElementsByClassName("pagina36_140"),
            document.getElementsByClassName("pagina37_140")];  
    evidenzia(pag1);
    evidenzia(pag2);
    evidenzia(pag3);
    disevidenzia(pag1);
    disevidenzia(pag2);
    disevidenzia(pag3);
};