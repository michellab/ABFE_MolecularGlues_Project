import a3fe as a3
calc = a3.Calculation()
for leg in calc.legs:
    for stage in leg.stages:
        for lam_win in stage.lam_windows:
            times = [sim.tot_simtime for sim in lam_win.sims]
            if not all([t == times[0] for t in times]):
                print(lam_win.base_dir)
                print(times)