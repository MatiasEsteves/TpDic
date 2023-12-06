public class Equipo
{
    
    public int IdEquipo{ get; set; }
    public string NombreEquipo{ get; set; }
    public int IdPais{ get; set; }
    public int IdLiga{ get; set; }
 
    
  public Equipo( int IdEquipo_, string NombreEquipo_, int IdPais_, int IdLiga_)
    {
         IdEquipo=IdEquipo_;
         NombreEquipo=NombreEquipo_;  
         IdPais=IdPais_;
         IdLiga=IdLiga_;
    }
    public Equipo()
    {
      
    }
}