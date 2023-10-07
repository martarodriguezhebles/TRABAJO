###############################################################################
# PRIMER TRABAJO TEORÍA DE LA DECISIÓN 
# Métodos de incertidumbre                                           07/10/2023
###############################################################################

########## Luis Ocaña
# Luis se va de vacaciones de Mikonos y quiere alquilar un coche durante un día
# para recorrerse la isla. Estaba pensando alquilar un coche pequeño, como un
# fiat 500, encontrando las siguientes 3 empresas con este tipo de vehículos:
# Avis, que por 1 día le cobra 50€, Europcar por 65€ y Cicar por 80€.
# Todas las empresas tienen una política de seguros muy diferentes.
# En Avis no incluye ningún seguro ni asistencia en carretera, cobrándole 25€ si
# pincha una rueda, 60€ si rompe la luna del coche y 350€ en caso de que el coche
# quede siniestro. En Europcar tiene un seguro básico, que cubre una parte de los
# daños; si se le pincha la rueda del coche le cobran 15€, 25€ si se le rompe la
# luna del coche y 185€ en caso de siniestro. En cambio, en Cicar cuenta con un
# seguro a todo riesgo sin franquicia.
# ¿Qué empresa debería escoger Luis si quiere ahorrarse el máximo dinero
# posible/piensa que todo le va a ir bien?
# ¿Y si fuera al revés y tuviera siempre "mala suerte"?

rm(list_ls())
source ("teoriadecision_funciones_incertidumbre.R")

tabla2=crea.tablaX(c(50,75,110,400,
                     65,80,90,250,
                     80,80,80,80))
criterio.Todos(tabla2,0.5,F)

# Deberá escoger la empresa Avis, ya que su planteamiento se corresponde
# con el criterio optimista.
# En el segundo caso debería escoger Cicar, ya que ese planteamiento
# corresponde al criterio de Wald o pesimista.