SELECT *
FROM NewP



UPDATE NewP
SET PColor = 'Unknown'
WHERE PColor is null



UPDATE np
SET PColor = 'Unknown'
FROM NewP as np
WHERE np.PColor is Null