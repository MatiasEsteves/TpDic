
function MostrarJugadores(IdEquipo)
{
    $.ajax(
    {
        type:'POST',
        datatype:'JSON',
        url: '/home/MostrarJugadores',
        data:{IdEquipo:IdEquipo},
        
        success: function(Response) {
            texto="";
            Response.forEach(element=>{

                
                texto+="<p class='Jugadores'>" + element.nombreJugador + "</p>"
                

            })
                $("#ListaJugadores").html(texto);


        }
    })
}
function MostrarTorneos(IdEquipo)
{
    $.ajax(
    {
        type:'POST',
        datatype:'JSON',
        url: '/home/MostrarTorneos',
        data:{IdEquipo:IdEquipo},
        
        success: function(Response) {
            texto="";
            Response.forEach(element=>{

                
                texto+="<p class='Torneo'>" + element.nombreTorneo +  "</p>"
                

            })
                $("#ListaTorneos").html(texto);


        }
    })
}