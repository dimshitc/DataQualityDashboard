

/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = OBSERVATION_PERIOD



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.OBSERVATION_PERIOD cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = VISIT_OCCURRENCE



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.VISIT_OCCURRENCE cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = CONDITION_OCCURRENCE



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.CONDITION_OCCURRENCE cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = DRUG_EXPOSURE



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.DRUG_EXPOSURE cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = PROCEDURE_OCCURRENCE



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.PROCEDURE_OCCURRENCE cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = DEVICE_EXPOSURE



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.DEVICE_EXPOSURE cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = MEASUREMENT



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.MEASUREMENT cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = VISIT_DETAIL



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.VISIT_DETAIL cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = NOTE



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.NOTE cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = OBSERVATION



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.OBSERVATION cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = SPECIMEN



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.SPECIMEN cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = PAYER_PLAN_PERIOD



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.PAYER_PLAN_PERIOD cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = DRUG_ERA



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.DRUG_ERA cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = DOSE_ERA



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.DOSE_ERA cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;


/*********

Table Level:  

MEASURE_PERSON_COMPLETENESS

Determine what #/% of persons have at least one record in the cdmTable



Parameters used in this template:

schema = @yourCdmSchema

cdmTableName = CONDITION_ERA



**********/





SELECT 

	num_violated_rows, 

	CASE 

		WHEN denominator.num_rows = 0 THEN 0 

		ELSE 1.0*num_violated_rows/denominator.num_rows 

	END AS pct_violated_rows, 

  denominator.num_rows AS num_denominator_rows

FROM

(

	SELECT 

		COUNT_BIG(violated_rows.person_id) AS num_violated_rows

	FROM

	(

		/*violatedRowsBegin*/

		SELECT 

			cdmTable.* 

		FROM @yourCdmSchema.person cdmTable

		  

			LEFT JOIN @yourCdmSchema.CONDITION_ERA cdmTable2 

			ON cdmTable.person_id = cdmTable2.person_id

		WHERE cdmTable2.person_id IS NULL

		/*violatedRowsEnd*/

	) violated_rows

) violated_row_count,

( 

	SELECT 

		COUNT_BIG(*) AS num_rows

	FROM @yourCdmSchema.person cdmTable

		

) denominator



;
