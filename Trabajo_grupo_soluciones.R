###############################################################################
# PRIMER TRABAJO TEORÍA DE LA DECISIÓN 
# Métodos de incertidumbre                                           07/10/2023
###############################################################################

rm(list_ls())
source ("teoriadecision_funciones_incertidumbre.R")

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

tabla2=crea.tablaX(c(50,75,110,400,
                     65,80,90,250,
                     80,80,80,80))
criterio.Todos(tabla2,0.5,F)

# Deberá escoger la empresa Avis, ya que su planteamiento se corresponde
# con el criterio optimista.
# En el segundo caso debería escoger Cicar, ya que ese planteamiento
# corresponde al criterio de Wald o pesimista.


######## Marta Rodríguez Hebles
# Una empresa de venta de electrodomésticos desea contartar un proveedor para el próximo año,
# de manera que le salga lo más rentable posible. todos los proveedores tienes un precio fijo 
# inicial para un pedido de 1000 unidades, dependiendo de la marca, y dicho precio aumenta 
# por cada 100 unidades extra que la empresa solicite fuera de plazo. 
# Tiene tres opciones, el proveedor A le cobra 500 u.m.por el primer pedido, el B 450 u.m. 
# y el C 700 u.m.. Si añade 100 unidades mas, el proveedor A le cobrara 200 u.m. de suplemento, 
# el B 250 u.m. y el C 100 u.m.. Mientras que si añade otras 100 unidades mas el proveedor A 
# le sumará 150 u.m, el B 200 u.m. y el C nada. ¿Cuál es la opción más rentable si espera muchas 
# ventas este año?

tabla=crea.tablaX(c(500,700,850,
                    450,700,900,
                    700,800,800))

criterio.Todos(tabla,0.5,F)



