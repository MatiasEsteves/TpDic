using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using ProyectoDic.Models;

namespace ProyectoDic.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index(int IdEquipo)
    {
        ViewBag.Equipo = BD.ListaEquipos();
        return View();
    }

    public IActionResult ListaJ(int IdEquipo)
    {
        ViewBag.Jugador = BD.ListaJugadores(IdEquipo);
        return View("VerJugadores");
    }
        public IActionResult VerJugador(int IdJugador)
     {
         ViewBag.Jugador = BD.descripcionJugador(IdJugador);
       return View("VerJugador");
     }
         public List<Jugador>  MostrarJugadores(int IdEquipo)
         {
       return BD.ListaJugadores(IdEquipo);

         }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
