# Stackoverflow Developer Survey

We demonstrate using InferenceQL on a subset of the Stackoverflow Developer Survey 2022 showing 4880 US developers.

## Explore the developer records

```sql
SELECT * FROM developer_records LIMIT 5
```

```js
const developerRecords = FileAttachment("./data/developer-records.csv").csv({typed: true});
```

```js
const developerRecordsQuery = FileAttachment("./queries/developer-records.iql");
```

```js
developerRecordsQuery.text()
```

```js
Inputs.table(developerRecords)
```

## Is there something to investigate here? Let’s check the OECD Definition of Gender Pay Gap

The gender wage gap is defined as the difference between median earnings of men and women relative to median earnings of men [1](https://data.oecd.org/earnwage/gender-wage-gap.htm).

We can implement this definition in our context of software developer salaries in the US.

```sql
SELECT (median_salary_men - median_salary_women)/median_salary_men AS pay_gap
FROM
    (SELECT MEDIAN(SalaryUSD) as median_salary_men
     FROM developer_records
     WHERE Gender = "Man"
     CROSS JOIN
         SELECT MEDIAN(SalaryUSD) as median_salary_women
         FROM developer_records
         WHERE Gender = "Woman")
```

```js
const payGap = FileAttachment("./data/pay-gap.csv").csv({typed: true});
```

```js
Inputs.table(payGap)
```

## Can we identify pay gaps with summary statistics on the data?

Let’s look at mean and standard deviation of salary grouped by gender:

```sql
SELECT Gender, AVG(SalaryUSD), STD(SalaryUSD)
FROM developer_records
GROUP BY Gender
```

```js
const byGender = FileAttachment("./data/mean-by-gender.csv").csv({typed: true});
```

```js
Inputs.table(byGender)
```
