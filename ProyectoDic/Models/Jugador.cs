public class Jugador
{
    
    public int IdJugador{ get; set; }
    public int IdPais{ get; set; }
    public string NombreJugador{ get; set; }
    public int IdEquipo{ get; set; }
 
    
  public Jugador( int IdJugador_, int IdPais_, string NombreJugador_, int IdEquipo_)
    {
         IdJugador=IdJugador_;
         IdPais=IdPais_;
         NombreJugador=NombreJugador_;  
         IdEquipo=IdEquipo_;
    }
    public Jugador()
    {
      
    }
}