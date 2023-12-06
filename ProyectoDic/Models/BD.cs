using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using Dapper;

public static class BD 
{
    private static string _connectionString = @"Server=localhost;DataBase=Futbol;Trusted_Connection=True;";

    public static Jugador descripcionJugador(int IdJugador)
    {
        Jugador descripcionJugador = new Jugador(); 
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Jugadores WHERE IdJugador = @pIdJugador";
            descripcionJugador = db.QueryFirstOrDefault(sql, new { pIdJugador=IdJugador })();
        }
        
        return descripcionJugador;
    }

     public static Equipo descripcionEquipo(int IdEquipo)
    {        
            Equipo descripcionEquipo = new Equipo(); 
            using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Jugadores WHERE IdEquipos = @pIdEquipos";
            descripcionEquipo = db.QueryFirstOrDefault(sql, new { pIdEquipo=IdEquipo })();
        }
        
        return descripcionEquipo;
    }

  public static List<Jugador> ListaJugadores(int IdEquipo)
    {
        List<Jugador> ListaJugadores = new List<Jugador>();
        
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Jugadores WHERE IdEquipo = @pIdEquipo";
            ListaJugadores = db.Query<Jugador>(sql,new {pIdEquipo=IdEquipo}).ToList();
        }
        
        return ListaJugadores;
    }
      public static List<Equipo> ListaEquipos()
    {
        List<Equipo> ListaEquipos = new List<Equipo>();
        
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Equipos";
            ListaEquipos = db.Query<Equipo>(sql).ToList();
        }
        
        return ListaEquipos;
    }



}