# Anomaly Detection System

This repository contains MATLAB/Octave functions for implementing an anomaly detection system using multivariate Gaussian distribution.

## Files Description

### Core Functions
- **estimate_gaussian.m** - Estimates Gaussian distribution parameters (mean and covariance matrix) from data
- **multivariate_gaussian.m** - Computes probability density function for multivariate Gaussian distribution
- **gaussian_distribution.m** - *Placeholder function* - needs implementation
- **identify_outliers.m** - Identifies outliers in dataset using optimal threshold

### Evaluation Functions
- **optimal_threshold.m** - Finds the best threshold (epsilon) for outlier detection using F1 score
- **check_predictions.m** - Calculates false positives, false negatives, and true positives
- **metrics.m** - Computes precision, recall, and F1 score from prediction metrics

### Utility Functions
- **__equal.m** - Helper function for comparing matrices with tolerance

## Usage

1. **Training Phase**: Use *estimate_gaussian* to learn parameters from normal data
2. **Probability Calculation**: Use *multivariate_gaussian* to compute probabilities for new data
3. **Threshold Optimization**: Use *optimal_threshold* with validation data to find best epsilon
4. **Outlier Detection**: Use *identify_outliers* to detect anomalies in new datasets

## Algorithm

The system uses multivariate Gaussian distribution to model normal data behavior and identifies outliers as data points with low probability under this distribution. The optimal threshold is determined by maximizing the F1 score on validation data.