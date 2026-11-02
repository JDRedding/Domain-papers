'===============================================================
'  Statistics Program
'  Compatible with QB64 / FreeBASIC
'===============================================================

DECLARE SUB SortData (Data() AS DOUBLE, N AS INTEGER)
DECLARE FUNCTION GeometricMean (Data() AS DOUBLE, N AS INTEGER) AS DOUBLE
DECLARE FUNCTION HarmonicMean (Data() AS DOUBLE, N AS INTEGER) AS DOUBLE
DECLARE FUNCTION Skewness (Data() AS DOUBLE, N AS INTEGER, Mean AS DOUBLE, StdDev AS DOUBLE) AS DOUBLE
DECLARE FUNCTION Kurtosis (Data() AS DOUBLE, N AS INTEGER, Mean AS DOUBLE, StdDev AS DOUBLE) AS DOUBLE

DIM Data(1 TO 500) AS DOUBLE
DIM Sorted(1 TO 500) AS DOUBLE

CLS
PRINT "=============================================="
PRINT "     DESCRIPTIVE STATISTICS CALCULATOR"
PRINT "=============================================="
PRINT

'----- Input section with validation -----
DO
    INPUT "How many numbers will you enter (1-500)? "; N
    IF N < 1 OR N > 500 THEN
        PRINT "Please enter a value between 1 and 500."
    END IF
LOOP UNTIL N >= 1 AND N <= 500

PRINT
PRINT "Enter the "; N; " values:"
FOR I = 1 TO N
    INPUT "Value #" + LTRIM$(STR$(I)) + ": ", Data(I)
NEXT I

'----- Basic calculations -----
Sum = 0
MinVal = Data(1)
MaxVal = Data(1)

FOR I = 1 TO N
    Sum = Sum + Data(I)
    IF Data(I) < MinVal THEN MinVal = Data(I)
    IF Data(I) > MaxVal THEN MaxVal = Data(I)
NEXT I

Mean = Sum / N
MidRange = (MinVal + MaxVal) / 2
RangeVal = MaxVal - MinVal

'----- Variance & Standard Deviation -----
IF N > 1 THEN
    VarSum = 0
    FOR I = 1 TO N
        VarSum = VarSum + (Data(I) - Mean) ^ 2
    NEXT I
    Variance = VarSum / (N - 1)          ' Sample
    PopVariance = VarSum / N             ' Population
    StdDev = SQR(Variance)
    PopStdDev = SQR(PopVariance)
    
    IF Mean <> 0 THEN
        CV = (StdDev / Mean) * 100
    ELSE
        CV = 0
    END IF
ELSE
    Variance = 0
    PopVariance = 0
    StdDev = 0
    PopStdDev = 0
    CV = 0
END IF

'----- Sort a copy for median, quartiles, etc. -----
FOR I = 1 TO N
    Sorted(I) = Data(I)
NEXT I
CALL SortData(Sorted(), N)

'----- Median -----
IF N MOD 2 = 0 THEN
    Median = (Sorted(N \ 2) + Sorted(N \ 2 + 1)) / 2
ELSE
    Median = Sorted((N + 1) \ 2)
END IF

'----- Quartiles (simple method) -----
Q1Index = (N + 1) \ 4
IF Q1Index < 1 THEN Q1Index = 1
Q1 = Sorted(Q1Index)

Q3Index = (3 * (N + 1)) \ 4
IF Q3Index > N THEN Q3Index = N
Q3 = Sorted(Q3Index)
IQR = Q3 - Q1

'----- Outlier count (1.5 * IQR rule) -----
LowerFence = Q1 - 1.5 * IQR
UpperFence = Q3 + 1.5 * IQR
OutlierCount = 0
FOR I = 1 TO N
    IF Sorted(I) < LowerFence OR Sorted(I) > UpperFence THEN
        OutlierCount = OutlierCount + 1
    END IF
NEXT I

'----- Mode -----
ModeVal = Sorted(1)
MaxFreq = 1
CurrentFreq = 1

FOR I = 2 TO N
    IF Sorted(I) = Sorted(I - 1) THEN
        CurrentFreq = CurrentFreq + 1
        IF CurrentFreq > MaxFreq THEN
            MaxFreq = CurrentFreq
            ModeVal = Sorted(I)
        END IF
    ELSE
        CurrentFreq = 1
    END IF
NEXT I

IF MaxFreq = 1 THEN
    ModeText$ = "No mode (all values unique)"
ELSE
    ModeText$ = LTRIM$(STR$(ModeVal)) + " (appears " + LTRIM$(STR$(MaxFreq)) + " times)"
END IF

'----- Mean Absolute Deviation -----
MAD = 0
FOR I = 1 TO N
    MAD = MAD + ABS(Data(I) - Mean)
NEXT I
MAD = MAD / N

'----- Geometric & Harmonic means -----
GeoMean = GeometricMean(Data(), N)
HarmMean = HarmonicMean(Data(), N)

'----- Skewness & Kurtosis -----
IF N > 2 AND StdDev > 0 THEN
    Skew = Skewness(Data(), N, Mean, StdDev)
    Kurt = Kurtosis(Data(), N, Mean, StdDev)
ELSE
    Skew = 0
    Kurt = 0
END IF

'----- Output -----
PRINT
PRINT "=============================================="
PRINT "                RESULTS"
PRINT "=============================================="
PRINT USING "Count (N)            = ######"; N
PRINT USING "Sum                  = ##########.####"; Sum
PRINT
PRINT USING "Mean                 = ##########.####"; Mean
PRINT USING "Median               = ##########.####"; Median
PRINT USING "Midrange             = ##########.####"; MidRange
PRINT "Mode                 = "; ModeText$
PRINT
PRINT USING "Minimum              = ##########.####"; MinVal
PRINT USING "Maximum              = ##########.####"; MaxVal
PRINT USING "Range                = ##########.####"; RangeVal
PRINT
PRINT USING "Q1 (approx)          = ##########.####"; Q1
PRINT USING "Q3 (approx)          = ##########.####"; Q3
PRINT USING "IQR                  = ##########.####"; IQR
PRINT USING "Outliers (1.5*IQR)   = ######"; OutlierCount
PRINT
IF N > 1 THEN
    PRINT USING "Variance (sample)    = ##########.####"; Variance
    PRINT USING "Variance (pop)       = ##########.####"; PopVariance
    PRINT USING "Std Dev (sample)     = ##########.####"; StdDev
    PRINT USING "Std Dev (pop)        = ##########.####"; PopStdDev
    PRINT USING "Coeff of Variation   = ##########.## %"; CV
    PRINT USING "MAD                  = ##########.####"; MAD
ELSE
    PRINT "Variance / Std Dev   = N/A (need at least 2 values)"
END IF
PRINT
PRINT USING "Geometric Mean       = ##########.####"; GeoMean
PRINT USING "Harmonic Mean        = ##########.####"; HarmMean
PRINT
IF N > 2 AND StdDev > 0 THEN
    PRINT USING "Skewness             = ##########.####"; Skew
    PRINT USING "Kurtosis             = ##########.####"; Kurt
ELSE
    PRINT "Skewness / Kurtosis  = N/A (need N>2 and StdDev>0)"
END IF
PRINT "=============================================="
PRINT
PRINT "Press any key to exit..."
SLEEP
END

'---------------------------------------------------------------
SUB SortData (Data() AS DOUBLE, N AS INTEGER)
    FOR I = 1 TO N - 1
        FOR J = I + 1 TO N
            IF Data(I) > Data(J) THEN
                Temp = Data(I)
                Data(I) = Data(J)
                Data(J) = Temp
            END IF
        NEXT J
    NEXT I
END SUB

'---------------------------------------------------------------
FUNCTION GeometricMean (Data() AS DOUBLE, N AS INTEGER)
    LogSum = 0
    Valid = 0
    FOR I = 1 TO N
        IF Data(I) > 0 THEN
            LogSum = LogSum + LOG(Data(I))
            Valid = Valid + 1
        END IF
    NEXT I
    IF Valid > 0 THEN
        GeometricMean = EXP(LogSum / Valid)
    ELSE
        GeometricMean = 0
    END IF
END FUNCTION

'---------------------------------------------------------------
FUNCTION HarmonicMean (Data() AS DOUBLE, N AS INTEGER)
    RecipSum = 0
    Valid = 0
    FOR I = 1 TO N
        IF Data(I) <> 0 THEN
            RecipSum = RecipSum + (1 / Data(I))
            Valid = Valid + 1
        END IF
    NEXT I
    IF Valid > 0 AND RecipSum <> 0 THEN
        HarmonicMean = Valid / RecipSum
    ELSE
        HarmonicMean = 0
    END IF
END FUNCTION

'---------------------------------------------------------------
FUNCTION Skewness (Data() AS DOUBLE, N AS INTEGER, Mean AS DOUBLE, StdDev AS DOUBLE)
    M3 = 0
    FOR I = 1 TO N
        M3 = M3 + (Data(I) - Mean) ^ 3
    NEXT I
    Skewness = (M3 / N) / (StdDev ^ 3)
END FUNCTION

'---------------------------------------------------------------
FUNCTION Kurtosis (Data() AS DOUBLE, N AS INTEGER, Mean AS DOUBLE, StdDev AS DOUBLE)
    M4 = 0
    FOR I = 1 TO N
        M4 = M4 + (Data(I) - Mean) ^ 4
    NEXT I
    Kurtosis = (M4 / N) / (StdDev ^ 4) - 3   ' Excess kurtosis
END FUNCTION
