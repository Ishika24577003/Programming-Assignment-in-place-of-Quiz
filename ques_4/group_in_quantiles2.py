import sys
import pandas as pd

def main():
    
    if len(sys.argv) != 2:
        print("Usage: python group_in_quantiles.py <number_of_quantiles>")
        sys.exit(1)

    try:
        num_quantiles = int(sys.argv[1])
    except ValueError:
        print("Please provide an integer for the number of quantiles.")
        sys.exit(1)

    
    numbers = []
    for line in sys.stdin:
        # Assuming each line contains a single number
        try:
            number = float(line.strip())
            numbers.append(number)
        except ValueError:
            print(f"Invalid number encountered: {line.strip()}")
            continue

    
    df = pd.DataFrame(numbers, columns=['value'])
    df['quantile'], bins = pd.qcut(df['value'], q=num_quantiles, labels=[f'q{i+1}' for i in range(num_quantiles)], retbins=True)
    df['interval'] = pd.cut(df['value'], bins=bins)

    for index, row in df.iterrows():
        print(f"{row['value']}\t{row['quantile']}\t{row['quantile']} {row['interval']}")

if __name__ == "__main__":
    main()
