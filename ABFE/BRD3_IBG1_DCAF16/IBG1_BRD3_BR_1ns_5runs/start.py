import a3fe as a3
calc = a3.Calculation(ensemble_size = 5)
calc.setup()
calc.get_optimal_lam_vals()
calc.run(adaptive=False, runtime=1) # Run for 1 ns per window per replicate
calc.wait() # Wait for the simulations to finish
calc.set_equilibration_time(0.2) # Discard the first 0.2 ns of simulation time
calc.analyse() # Fast analyses
calc.save()