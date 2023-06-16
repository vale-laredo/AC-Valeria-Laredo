{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "bd5c7142",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Solución:\n",
      "x[1] = -7.0\n",
      "x[2] = 3.0\n",
      "x[3] = 2.0\n",
      "x[4] = 2.0\n"
     ]
    }
   ],
   "source": [
    "function solve_system(M)\n",
    "    n = size(M, 1)  # Número de incógnitas\n",
    "    x = zeros(n)    # Vector solución inicializado con ceros\n",
    "\n",
    "    # Eliminación gaussiana\n",
    "    for i in 1:n-1\n",
    "        # Paso 2: Buscar pivote no nulo\n",
    "        p = findfirst(x -> x != 0, M[i:end, i]) + i - 1\n",
    "        if p == 0\n",
    "            error(\"El sistema no tiene una solución única.\")\n",
    "        end\n",
    "\n",
    "        # Paso 3: Intercambiar filas si es necesario\n",
    "        if p != i\n",
    "            M[i, :], M[p, :] = M[p, :], M[i, :]\n",
    "        end\n",
    "\n",
    "        for j in i+1:n\n",
    "            # Paso 5: Calcular el factor de eliminación\n",
    "            m = M[j, i] / M[i, i]\n",
    "\n",
    "            # Paso 6: Actualizar filas\n",
    "            M[j, i:end] -= m * M[i, i:end]\n",
    "        end\n",
    "    end\n",
    "\n",
    "    # Comprobar si el sistema tiene solución única\n",
    "    if M[end, end-1] == 0\n",
    "        error(\"El sistema no tiene una solución única.\")\n",
    "    end\n",
    "\n",
    "    # Retrosubstitución\n",
    "    x[end] = M[end, end] / M[end, end-1]\n",
    "    for i in n-1:-1:1\n",
    "        s = M[i, end]\n",
    "        for j in i+1:n\n",
    "            s -= M[i, j] * x[j]\n",
    "        end\n",
    "        x[i] = s / M[i, i]\n",
    "    end\n",
    "\n",
    "    return x\n",
    "end\n",
    "\n",
    "# Ejemplo de uso\n",
    "M = [1 -1 2 -1 -8; 2 -2 3 -3 -20; 1 1 1 0 -2; 1 -1 4 3 4]\n",
    "solucion = solve_system(M)\n",
    "println(\"Solución:\")\n",
    "for (i, val) in enumerate(solucion)\n",
    "    println(\"x[$i] = \", val)\n",
    "end\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "38b1fc34",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Solución:\n",
      "x[1] = 0.0\n",
      "x[2] = -1.0\n",
      "x[3] = 2.0\n"
     ]
    }
   ],
   "source": [
    "M = [1 2 3 4; 0 1 2 3; 0 0 1 2]\n",
    "solucion = solve_system(M)\n",
    "println(\"Solución:\")\n",
    "for (i, val) in enumerate(solucion)\n",
    "    println(\"x[$i] = \", val)\n",
    "end\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "dd7a8e63",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "2×2 Matrix{Float64}:\n",
       " 1.0  0.5\n",
       " 0.0  0.5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#give matrix\n",
    "A = [1 -1; 0 2]\n",
    "\n",
    "#get inverse of matrix\n",
    "display(inv(A))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "d6ad6208",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "2×2 Matrix{Float64}:\n",
       " 1.0  0.0\n",
       " 0.0  1.0"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "A = [1 -1; 0 2]\n",
    "B = inv(A) \n",
    "C = A*B\n",
    "display(C)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "28fb8fd9",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Julia 1.8.5",
   "language": "julia",
   "name": "julia-1.8"
  },
  "language_info": {
   "file_extension": ".jl",
   "mimetype": "application/julia",
   "name": "julia",
   "version": "1.8.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
