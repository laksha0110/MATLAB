## Theory

The Nyquist-Shannon Sampling Theorem states that a continuous-time signal can be perfectly reconstructed from its samples if the sampling frequency is at least twice the highest frequency component of the signal:

\[
f_s \geq 2f_{max}
\]

This minimum sampling frequency is known as the **Nyquist rate**. When the theorem is satisfied, the original signal can be accurately reconstructed using sinc interpolation. If the sampling frequency is lower than the Nyquist rate, **aliasing** occurs, causing different frequency components to become indistinguishable and resulting in signal distortion.

This project investigates the effects of different sampling frequencies on a continuous-time signal. The signal is sampled, reconstructed using sinc interpolation, and analyzed to compare cases where the sampling theorem is satisfied and violated.

## Results

### Sampling Theorem Satisfied

When the sampling frequency is greater than or equal to twice the highest frequency component of the signal, the Nyquist criterion is satisfied. In this case, the sampled signal contains sufficient information to accurately reconstruct the original signal using sinc interpolation. The reconstructed signal closely matches the original waveform.

<p align="center">
  <img src="C:\Users\teesh\Desktop\ss2_github\success.png"width="700">
</p>

### Sampling Theorem Violated

When the sampling frequency is lower than the Nyquist rate, aliasing occurs. High-frequency components are incorrectly represented as lower frequencies, resulting in information loss. Consequently, the reconstructed signal differs significantly from the original signal and accurate recovery is no longer possible.

<p align="center">
  <img src="C:\Users\teesh\Desktop\ss2_github\notsuccessful.png" width="700">
</p>
