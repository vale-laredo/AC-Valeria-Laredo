### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 02c42307-1d13-4391-8507-b2d43a3ea0f4
md"# Ejercicio 1"

# ╔═╡ 7e7ff6e7-14bb-4bbb-ae3a-24eea84aa3a0
function newton(f, f′, x0, n)
    x = x0                           # Iniciar la aproximación inicial x con x0
    
    for i in 1:n                     # Realizar n iteraciones del método de Newton
        x = x - (f(x) / f′(x))       # Actualizar x utilizando la fórmula del método de Newton
    end
    
    return x                        # Devolvemos la aproximación de la raíz después de n iteraciones
end

# ╔═╡ 7ed84189-3165-46b7-ae67-dfa539c5f78c
begin  
	f(x) = x^2-3
	f′(x) = 2x
	x0 = 1.5                 
	n = 5
	aproximacion = newton(f, f′, x0, n)
	
	# Imprimir la aproximación de la raíz
	println("Aproximación de la raíz después de ", n, " iteraciones: ", aproximacion)
	
end

# ╔═╡ 25f306fa-14e5-4758-871c-2daffa0a1273
md"# Ejercicio 2"

# ╔═╡ 3e8b15bc-ef39-4f3a-99e1-4b4419be2ab2
function newtonRecursiva(f, f′, x, n)
    if n == 0                                        # Si n es igual a cero, detiener la recursión y se devolver x
        return x
    else
        x = x - (f(x) / f′(x))                       # Utilizar la fórmula del método de Newton
        return newtonRecursiva(f,f′, x, n - 1)       # Llamar recursivamente a la función con el nuevo valor de x y n-1, para disminuir 													   las iteraciones hasta llegar a 0
    end
end

# ╔═╡ 988a750a-137a-4b4b-ba4a-57712b7f98f5
begin
aproximacion_recursiva = newtonRecursiva(f, f′, x0, n)
println("La aproximación de la raíz es: ", aproximacion_recursiva)
end

# ╔═╡ 70e54670-bc91-4685-a8bf-5f0beee0bc37
md"# Ejercicio 3"

# ╔═╡ 764be49e-3afc-477e-b848-e5e096005f79
function newtonDistancia(f, f′, x0, ϵ)
    if ϵ <= 0
        error("El valor de ϵ debe ser mayor que cero.")
    end
    
    x_anterior = x0                                         # Iniciar la aproximación anterior con x0
    x_actual = x0 - (f(x0) / f′(x0))                        # Calcular la primera aproximación actual
    
    while abs(x_actual - x_anterior) > ϵ
        x_anterior = x_actual                               # Actualizar la aproximación anterior con la actual
        x_actual = x_actual - (f(x_actual) / f′(x_actual))  # Calcular la nueva aproximación actual
    end
    
    return x_actual                                         
end

# ╔═╡ e7031243-7b3b-4bd8-9927-0c53fd16fc72
begin
	# Llamar a la función newtonDistancia y guardar el resultado en una variable
	resultado = newtonDistancia(f, f′, 1.0, 0.009)
	
	# Imprimir el resultado
	println("La aproximación de la raíz es: ", resultado)
	
end

# ╔═╡ a486536b-c98c-466e-8828-797563ce1693
md"# Ejercicio 4"

# ╔═╡ be9e4edb-174b-4acd-9cd6-e53d0c94b2c9
derivadaNumérica(f, x, h) = h * (f(x + 1/h) - f(x))

# ╔═╡ 73374f18-16f5-4e4f-9824-f3bc68cc9fad
begin
             # f esta definida como x^2 - 2 como se ve en el ejercicio 1 
    x = 2.0  # Punto en el dominio de f
    h = 0.1  # Valor grande para h
    
    resultado_derivada = derivadaNumérica(f, x, h)  # Calcular la aproximación de la derivada
    
    println("La aproximación de f'(2) es: ", resultado_derivada)  # Imprir la salida
end

# ╔═╡ c44e6498-3949-452a-8387-b0e3f08bc11b
md"# Ejercicio 5"

# ╔═╡ 462d8982-07c0-4a1f-9583-83d0444afe23
function newtonDN(f, x0, n, h)
    for i in 1:n
        f′ = derivadaNumérica(f, x0, h)  # Calculamos la derivada numérica de f en x0
        x0 = x0 - (f(x0) / f′) # Actualizamos x0 utilizando la fórmula del método de Newton
    end
    return x0
end

# ╔═╡ fde24ec8-271b-40f1-8d4b-5d1f973167bd
println(newtonDN(f,1.5 ,5,0.1))

# ╔═╡ Cell order:
# ╟─02c42307-1d13-4391-8507-b2d43a3ea0f4
# ╠═7e7ff6e7-14bb-4bbb-ae3a-24eea84aa3a0
# ╠═7ed84189-3165-46b7-ae67-dfa539c5f78c
# ╟─25f306fa-14e5-4758-871c-2daffa0a1273
# ╠═3e8b15bc-ef39-4f3a-99e1-4b4419be2ab2
# ╠═988a750a-137a-4b4b-ba4a-57712b7f98f5
# ╟─70e54670-bc91-4685-a8bf-5f0beee0bc37
# ╠═764be49e-3afc-477e-b848-e5e096005f79
# ╠═e7031243-7b3b-4bd8-9927-0c53fd16fc72
# ╟─a486536b-c98c-466e-8828-797563ce1693
# ╠═be9e4edb-174b-4acd-9cd6-e53d0c94b2c9
# ╠═73374f18-16f5-4e4f-9824-f3bc68cc9fad
# ╠═c44e6498-3949-452a-8387-b0e3f08bc11b
# ╠═462d8982-07c0-4a1f-9583-83d0444afe23
# ╠═fde24ec8-271b-40f1-8d4b-5d1f973167bd
