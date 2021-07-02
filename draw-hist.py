import numpy as np
import matplotlib.pyplot as plt
plt.style.use('ggplot')
# plt.style.use(['dark_background'])


if __name__ == "__main__":
	Ek = [100.0, 80.0, 60.0, 50.0, 40.0, 20.0, 10.0, 5.0]
	R = [7.266, 4.882, 2.947, 2.126, 1.425, 0.4104, 0.1174, 0.03406]
	sigmaR = [1.278, 0.788, 0.5889, 0.2535, 0.16, 0.023, 0.0022, 0.00043]
	E = [93.77, 75.74, 57.97, 48.51, 39.09, 19.9, 9.987, 4.999]
	sigmaE = [19.91, 14.79, 9.049, 6.964, 5.069, 1.197, 0.1436, 0.0286]

	R_hole = [16.21, 13.49, 11.04, 9.805, 8.626, 6.373, 4.837, 3.473]
	sigmaR_hole = [3.009, 2.778, 2.638, 2.442, 2.453, 2.05, 1.666, 1.373]
	E_hole = [94.52, 76.17, 58.22, 48.51, 39.38, 19.85, 9.916, 4.917]
	sigmaE_hole = [18.33, 13.67, 8.101, 6.804, 3.382, 1.161, 0.1635, 0.06966]

	yTicks = np.linspace(0.0, 20.0, 21)
	xTicks = np.linspace(0.0, 100.0, 21)

	Ek = np.array(Ek)[::-1]
	R = np.array(R)[::-1]
	sigmaR = np.array(sigmaR)[::-1]
	E = np.array(E)[::-1]
	sigmaE = np.array(sigmaE)[::-1]
	R_hole = np.array(R_hole)[::-1]
	sigmaR_hole = np.array(sigmaR_hole)[::-1]
	E_hole = np.array(E_hole)[::-1]
	sigmaE_hole = np.array(sigmaE_hole)[::-1]

	fig, ax = plt.subplots()
	ax.set_title("Low energy protons")
	ax.set_yticks(yTicks)
	ax.set_xticks(xTicks)
	ax.scatter(Ek, R, c="r")
	ax.plot(Ek, R, c="r")
	(_, caps, _) =  ax.errorbar(Ek, R, yerr=sigmaR, c="r", fmt='-o', capsize=3, label="proton track length; insertion point - core")
	# for cap in caps:
	# 	cap.set_markeredgewidth(1)
	ax.scatter(Ek, R_hole, c="b")
	ax.plot(Ek, R_hole, c="b")
	(_, caps, _) =  ax.errorbar(Ek, R_hole, yerr=sigmaR_hole, c="b", fmt='-o', capsize=3, label="proton track length; insertion point - hole")
	# for cap in caps:
	# 	cap.set_markeredgewidth(1)
	ax.plot(Ek, [1.0] * R.shape[0], c="black", label="minimal possible resolution")
	ax.set_xlabel ("Initial Kinetic Energy, MeV")
	ax.set_ylabel ("Range, cm")
	ax.legend(loc="upper left")

	yTicks = np.linspace(0.0, 100.0, 21)

	fig, ax = plt.subplots()
	ax.set_title("Low energy protons")
	ax.set_yticks(yTicks)
	ax.set_xticks(xTicks)
	# ax.scatter(Ek, E, c="r", label="deposited energy in detector; insertion point - core")
	ax.scatter(Ek, E, c="r")
	ax.plot(Ek, E, c="r")
	(_, caps, _) =  ax.errorbar(Ek, E, yerr=sigmaR, c="r", label="deposited energy in detector; insertion point - core", fmt='-o', capsize=3)
	# for cap in caps:
	# 	cap.set_markeredgewidth(1)
	# ax.scatter(Ek, E_hole, c="b", label="deposited energy in detector; insertion point - hole")
	ax.scatter(Ek, E_hole, c="b")
	ax.plot(Ek, E_hole, c="b")
	ax.errorbar(Ek, E_hole, yerr=sigmaR_hole, c="b", label="deposited energy in detector; insertion point - hole", fmt='-o', capsize=3)
	ax.set_xlabel ("True Kinetic Energy, MeV")
	ax.set_ylabel ("Energy deposited in detector, MeV")
	ax.legend(loc="upper left")

	plt.show()

	# electron_energies = np.array([   3,    5,    7,   10,   20,   40,   60,   80,  100,  200,  300, 400,  500,  600,  700,  800,  900, 1000])
	# # electron_energies = np.array([   3,    5,    7,   10,   20,   40,   60,   80,  100])
	# # electron_energies = np.array([100,  200,  300, 400,  500,  600,  700,  800,  900, 1000])
	# plt.plot(electron_energies, electron_energies)
	# plt.scatter(electron_energies, electron_energies)
	# plt.xscale("log")
	# plt.yscale("log")
	# plt.show()
