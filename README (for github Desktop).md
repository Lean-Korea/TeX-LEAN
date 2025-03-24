# TeX-LEAN

## Requirements

- Git (Git Desktop)
- [Lean4](https://github.com/leanprover/lean4)
- TeX

## How to contribute (Github Desktop)

0. Install Github Desktop (https://desktop.github.com/download/)

1. Sign in with your github id. 

2. Clone Tex-LEAN repository. (Please check your local path)

3. After cloning, create a new your own branch. 

4. Click the button "Show in Explorer".

5. Add or edit files in the explorer. 

6. After editing, click "commit to [your_branch_name]" to commit. 

7. After commiting, click "push origin" to push. 

8. Making a pull request by clicking "Create Pull Request". 

9. After all CI pass and getting at least two approvements, one of the admins would merge your pull request.


## How to write a file

1. Write a lean file that formalizes a statement of an exercise.
  - Name of each file must be of the form `DF_{Chapter}_{Section}_lean`.
    - **One section for one lean file**. Make one if there is no such file.
  - The file goes into the directory `Formal/DF_{Chapter}`.
    - Make one if there is no such directory.
  - Each file must contain a subset of formalized problems in the corresponding chapter.
    - Each problem should be a `theorem` with name `DF_{Chapter}_{Section}_{Number}`.
    - Write the natural language statement in LaTeX as a docstring right before the `theorem` with the same name.
      - Add a line of `Contributor: <your name>` and separate the statement and this by two newlines.

    ```lean
    def IsFinite (α : Type) : Prop :=
      ∃ elems : Finset α, ∀ a : α, a ∈ elems

    /--
    DF_1_4_5 : Show that $GL_n(F)$ is a finite group if and only if $F$ has a
    finite number of elements.
    
    Contributor: John Doe
    -/
    theorem DF_1_4_5 {n : ℕ} {k : Type} [Field k] :
        IsFinite (Matrix.GeneralLinearGroup (Fin n) k) ↔ IsFinite k := by
      sorry
    ```

3. Import any newly created lean file to `Formal/DF.lean`:

    ```lean
    import Formal.DF_{Chapter}.DF_{Chapter}_{Section}.lean
    ```

    Your lean file won't be checked by CI (Continuous Integration) if you miss this part.

## Tips

- If it is your first time doing Lean, then it may take some time. Feel free to ask any questions at [Lean in Korea Zulip](https://lean-in-korea.zulipchat.com/). 
- Do NOT import the whole `Mathlib` in your final contribution as it wll take a lot of time to compile. Instead, you could either:
  - Import the whole `Mathlib` while working, then use `#min_imports` before commiting your work to minimize the imports.
  - Search (e.g. use [documentation](https://leanprover-community.github.io/mathlib4_docs/index.html)) and import specific files needed.

## Admins

박예찬 (ychpark-ks)

백진언 (jcpaik)

이규환 (automorphy)

이시우 (seewoo5)

이철희 (chlee-0)

최일규 (Ilkyoo)

황병학 (ByungHakHwang)
