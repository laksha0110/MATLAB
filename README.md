
## Theory

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
