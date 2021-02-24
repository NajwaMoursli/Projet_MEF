# Projet_MEF

Nous souhaitions résoudre le problème (1.1) à l’aide de la méthode des éléments finis P1− Lagrange.
<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mtable columnalign="right left" rowspacing="3pt" columnspacing="0em" displaystyle="true">
    <mtr>
      <mtd>
        <mrow>
          <mo>{</mo>
          <mtable columnalign="right center left left" rowspacing="4pt" columnspacing="1em">
            <mtr>
              <mtd>
                <mo>&#x2212;<!-- − --></mo>
                <mi mathvariant="normal">&#x0394;<!-- Δ --></mi>
                <mi>u</mi>
              </mtd>
              <mtd>
                <mo>=</mo>
              </mtd>
              <mtd>
                <mn>0</mn>
              </mtd>
              <mtd>
                <mo stretchy="false">(</mo>
                <mi mathvariant="normal">&#x03A9;<!-- Ω --></mi>
                <mo stretchy="false">)</mo>
              </mtd>
            </mtr>
            <mtr>
              <mtd>
                <mi>u</mi>
              </mtd>
              <mtd>
                <mo>=</mo>
              </mtd>
              <mtd>
                <msub>
                  <mi>T</mi>
                  <mi>c</mi>
                </msub>
              </mtd>
              <mtd>
                <mo stretchy="false">(</mo>
                <msub>
                  <mi mathvariant="normal">&#x0393;<!-- Γ --></mi>
                  <mrow class="MJX-TeXAtom-ORD">
                    <mtext>Rad</mtext>
                  </mrow>
                </msub>
                <mo stretchy="false">)</mo>
              </mtd>
            </mtr>
            <mtr>
              <mtd>
                <mi>u</mi>
              </mtd>
              <mtd>
                <mo>=</mo>
              </mtd>
              <mtd>
                <msub>
                  <mi>T</mi>
                  <mi>f</mi>
                </msub>
              </mtd>
              <mtd>
                <mo stretchy="false">(</mo>
                <msub>
                  <mi mathvariant="normal">&#x0393;<!-- Γ --></mi>
                  <mrow class="MJX-TeXAtom-ORD">
                    <mtext>Fen</mtext>
                  </mrow>
                </msub>
                <mo stretchy="false">)</mo>
              </mtd>
            </mtr>
            <mtr>
              <mtd>
                <mrow class="MJX-TeXAtom-ORD">
                  <msub>
                    <mi mathvariant="normal">&#x2202;<!-- ∂ --></mi>
                    <mrow class="MJX-TeXAtom-ORD">
                      <mrow class="MJX-TeXAtom-ORD">
                        <mrow class="MJX-TeXAtom-ORD">
                          <mi mathvariant="bold">n</mi>
                        </mrow>
                      </mrow>
                    </mrow>
                  </msub>
                </mrow>
                <mi>u</mi>
              </mtd>
              <mtd>
                <mo>=</mo>
              </mtd>
              <mtd>
                <mn>0</mn>
              </mtd>
              <mtd>
                <mo stretchy="false">(</mo>
                <msub>
                  <mi mathvariant="normal">&#x0393;<!-- Γ --></mi>
                  <mrow class="MJX-TeXAtom-ORD">
                    <mtext>Mur</mtext>
                  </mrow>
                </msub>
                <mo stretchy="false">)</mo>
              </mtd>
            </mtr>
          </mtable>
          <mo fence="true" stretchy="true" symmetric="true"></mo>
        </mrow>
      </mtd>
    </mtr>
  </mtable>
</math>
Construisez la géométrie. Il ne s’agit pas de reproduire exactement l’appartement décrit plus haut mais de construire un appartement : libre à vous d’ajouter des pièces, fenêtres, des radiateurs ou un poster de Justin Bieber.

Programmez un code éléments finis P1 qui résolve le problème (1.1)
