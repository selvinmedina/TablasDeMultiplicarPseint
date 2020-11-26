SubProceso NumeroLimiteValido <- EsValidoNumeroLimite ( NumeroLimite )
	NumeroLimiteValido = NumeroLimite Es Entero Y NumeroLimite > 0 Y NumeroLimite <= 100
Fin SubProceso

SubProceso EsNumeroLimiteAMultiplicarValido <- EsValidoElNumeroLimiteAMultiplicar( NumeroLimiteAMultiplicar )
	EsNumeroLimiteAMultiplicarValido = NumeroLimiteAMultiplicar Es Entero Y NumeroLimiteAMultiplicar > 0 Y NumeroLimiteAMultiplicar <= 20
	
	Si No EsNumeroLimiteAMultiplicarValido Entonces
		Escribir "El n�mero l�mite a multiplicar tiene que ser mayor a 0 y Menor o igual a 20."
	FinSi
	
Fin SubProceso

SubProceso SePuedenDibujarLasTablas <- ValidarSiSePuedenDibujarLasTablas( NumeroLimite, NumeroLimiteAMultiplicar )
	SePuedenDibujarLasTablas <- EsValidoNumeroLimite(NumeroLimite) Y EsValidoElNumeroLimiteAMultiplicar(NumeroLimiteAMultiplicar)
	
	Si No SePuedenDibujarLasTablas
		Escribir "El n�mero tiene que ser mayor a 0 y Menor a 100."
	FinSi
	
Fin SubProceso

Proceso TablaMultiplicar
	Definir NumeroLimite, NumeroLimiteDeLaTabla Como Entero
	
	Escribir "Ingrese un n�mero, que ser� el l�mite de la cantidad de tablas de multiplicar a mostrar (el l�mite es 100): "
	Leer NumeroLimite
	
	Escribir "Ingrese el n�mero l�mite a multiplicar(el l�mite es 20): "
	Leer NumeroLimiteDeLaTabla
	
	Si ValidarSiSePuedenDibujarLasTablas(NumeroLimite,NumeroLimiteDeLaTabla) Entonces
		Para i <- 1 Hasta NumeroLimite Con Paso 1 Hacer
			Escribir "Tabla del ", i
			Para j <- 1 Hasta NumeroLimiteDeLaTabla Con Paso 1 Hacer
				Escribir i, " x ", j, " = ", i*j
			Fin Para
		Fin Para
	SiNo
	Fin Si
FinProceso
