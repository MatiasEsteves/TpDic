public class Torneo
{
    
    public int IdTorneos{ get; set; }
    public int IdEquipo{ get; set; }
    public string NombreTorneo{ get; set; }
    public DateTime Año{ get; set; }
 
    
  public Torneo( int IdTorneos_, int IdEquipo_, string NombreTorneo_, DateTime Año_)
    {
         IdTorneos=IdTorneos_;
         IdEquipo=IdEquipo_;
         NombreTorneo=NombreTorneo_;
         Año=Año_;  
         
    }
    public Torneo()
    {
      
    }
}