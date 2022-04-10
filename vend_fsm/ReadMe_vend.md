<h2> Vending machine </h2>
This is an implementation of a vending machine using FSM.
<h3>Machine definition:</h3>
<ul>
  <li>Till you do not enter coin it will not start.</li>
  <li> Only 1₹ (i=0) or 2₹ (i=1) coins are allowed.</li>
  <li>Despatches 5 ₹ item (out =1)</li>
  </ul>
<h3><b>Working:</b></h3>
<p>5 can be partiotioned in 7 ways: // Partition_func(5)=7
<ol type="i">
  <li> 5=5 (5₹ coin is not allowed)</li>
  <li> 4+1=5</li>
  <li> 2+3=5</li>
  <li> 1+2+2=5</li>
  <li> 3+1+1=5</li>
  <li> 1+1+1+2=5</li>
  <li> 1+1+1+1+1=5</li>
</ol>
</br>Si implements these partitions where Si represents state with total i ₹.</p>
<p></br>Following is state table:

| PS    | NS |    | output |   |
|-------|----|----|--------|---|
| Input | 1  | 0  | 1      | 0 |
| S0    | S2 | S1 | 0      | 0 |
| S1    | S3 | S2 | 0      | 0 |
| S2    | S4 | S3 | 0      | 0 |
| S3    | S5 | S4 | 1      | 0 |
| S4    | S1 | S5 | 1      | 1 |
| S5    | S2 | S1 | 1      | 1 |

</br> PS: Present state , NS: Next state </p>
