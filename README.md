
## Theory - Signal reconstruction

The Nyquist-Shannon Sampling Theorem states that a continuous-time signal can be perfectly reconstructed from its samples if the sampling frequency is at least twice the highest frequency component of the signal:

fs > 2fmax

This minimum sampling frequency is known as the **Nyquist rate**. When the theorem is satisfied, the original signal can be accurately reconstructed using sinc interpolation. If the sampling frequency is lower than the Nyquist rate, **aliasing** occurs, causing different frequency components to become indistinguishable and resulting in signal distortion.

This project investigates the effects of different sampling frequencies on a continuous-time signal. The signal is sampled, reconstructed using sinc interpolation, and analyzed to compare cases where the sampling theorem is satisfied and violated.

## Results

### Sampling Theorem Satisfied

When the sampling frequency is greater than twice the highest frequency component of the signal, the Nyquist criterion is satisfied. In this case, the sampled signal(n < 25) contains sufficient information to accurately reconstruct the original signal using sinc interpolation. The reconstructed signal closely matches the original waveform.

<p align="center">
 <img width="1056" height="622" alt="success" src="https://github.com/user-attachments/assets/7f350e2e-8b4f-4782-a763-941fe3016ee2" />

</p>

### Sampling Theorem Violated

When the sampling frequency is lower than the Nyquist rate, aliasing occurs. High-frequency components are incorrectly represented as lower frequencies, resulting in information loss (n ≥ 25). Consequently, the reconstructed signal differs significantly from the original signal and accurate recovery is no longer possible.

<p align="center">
 <img width="1046" height="642" alt="notsuccessful" src="https://github.com/user-attachments/assets/a0c5d22d-9b45-42f7-92e3-559d76011386" />
</p>




# Discrete Fourier Transform (DFT) Implementation in MATLAB

## Overview

This project implements the Discrete Fourier Transform (DFT) from its mathematical definition without using MATLAB's built-in `fft()` function. The implementation is optimized using vectorized matrix operations and its performance is compared against MATLAB's FFT algorithm.

## Theory

The Discrete Fourier Transform (DFT) converts a discrete-time signal from the time domain into its frequency-domain representation. It is defined as:

X[k] = Σ x[n] · exp(-j2πkn/N)

where:
- `x[n]` is the input signal
- `X[k]` is the DFT output
- `N` is the signal length
- `j` is the imaginary unit

The DFT allows the frequency content of a signal to be analyzed and serves as the foundation for many digital signal processing applications.

## Objectives

- Implement the DFT directly from its mathematical definition.
- Verify correctness by comparing the output with MATLAB's `fft()` function.
- Optimize the implementation using vectorization.
- Compare the runtime performance of the custom DFT and MATLAB's FFT.

## Results

The custom DFT implementation produces the same frequency-domain representation as MATLAB's `fft()` for test signals. Runtime measurements performed on a signal containing 10,000 samples show that MATLAB's FFT is significantly faster due to its lower computational complexity.

- DFT Complexity: O(N²)
- FFT Complexity: O(N log N)

This demonstrates why FFT algorithms are preferred in practical signal processing applications.

<table>
<tr>
<td align="center">
</table>
<img width="1780" height="222" alt="DFT_values" src="https://github.com/user-attachments/assets/ebf6f04f-b78b-472b-99ad-10b58cf79ded" /><br>
</td>

<td align="center">
<img width="1612" height="435" alt="DFT_profile" src="https://github.com/user-attachments/assets/00813971-2810-4196-afeb-6d2c7c8168d0" /><br>
</td>
</tr>



## Key Concepts

- Discrete Fourier Transform (DFT)
- Fast Fourier Transform (FFT)
- Frequency-Domain Analysis
- Vectorization
- Computational Complexity
- MATLAB Optimization

## Conclusion

This project demonstrates the implementation of the DFT from first principles and highlights the computational advantages of the FFT. While the DFT provides insight into the mathematical foundations of frequency analysis, the FFT enables efficient processing of large signals.

## Dual Tone (DTMF)

## Overview
This task analyzes and generates Dual Tone Multi-Frequency (DTMF) signals used in telephone keypads. The audio signal is examined in both the time and frequency domains, and a MATLAB function is implemented to generate DTMF tones for any sequence of digits. :contentReference[oaicite:0]{index=0}

## Tasks
- Load and play the provided DTMF audio file.
- Plot the signal in the time domain.
- Compute and plot its frequency spectrum.
- Implement a DTMF generator using:
  - Sampling frequency: **8 kHz**
  - Tone duration: **75 ms**
  - Pause between digits: **30 ms**
- Generate and analyze the DTMF signal for a custom phone number.

  ## Matlab output
  ## Output for given audio file
  <img width="991" height="607" alt="output1" src="https://github.com/user-attachments/assets/6d87b151-02f6-436a-810b-5802dc72f942" />
  
  ## Output for a custom phone number
  <img width="961" height="607" alt="output2" src="https://github.com/user-attachments/assets/429116a0-7191-4b4e-b54e-8b5c13b164be" />


## Conclusion
The generated DTMF signals correctly represent each digit as the sum of two sinusoidal frequencies. The time- and frequency-domain plots confirm the expected DTMF characteristics and demonstrate the application of the Fourier Transform in signal analysis. 
