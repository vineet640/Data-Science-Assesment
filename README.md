# Data Science Technical Case

This repository contains the solution for a data science technical case study.

## Project Structure

- `train.csv` - Training dataset
- `test.csv` - Test dataset
- `example_predictions.csv` - Example predictions format
- `make_submission.py` - Python function to create submission files
- `make_submission.R` - R function to create submission files
- `Data_Science_Technical_Case.docx` - Project documentation

## Usage

### Python

```python
from make_submission import make_submission
import pandas as pd

# Create your predictions DataFrame
predictions = pd.DataFrame({
    'userId': [...],
    'predicted_probability': [...]
})

# Generate submission file
make_submission('your_name', predictions)
```

### R

```r
source('make_submission.R')

# Create your predictions data frame
predictions <- data.frame(
    userId = c(...),
    predicted_probability = c(...)
)

# Generate submission file
make_submission('your_name', predictions)
```

## Requirements

### Python
- pandas

### R
- Base R (no additional packages required)

## Notes

- The submission file must contain exactly 20,000 rows
- The first column must be named `userId`
- The second column should contain predicted probabilities
