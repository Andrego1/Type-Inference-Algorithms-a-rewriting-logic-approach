# Type Inference Algorithms: a rewriting logic approach

An implementation of several algorithms for type inference and type checking for a core functional language, using the logical framework Maude.
In our implementation, the rewriting aspects of the type inference algorithms are clearer, when compared to other implementations of the same systems, usually made in a functional programming language. 
In Maude, solving equality constraints has a highly declarative formulation based on term rewriting, and Maude equations turned out to be a clear and natural way of specifying type inference mechanisms.

## Files

- `st.maude` is where the simple types inference algorithm is implemented, it also were implicit terms and simple type are implemented.

- `poly.maude` it implements algorithm W, togeteher with an extension for polymorphic types.

- `check.maude` has the implementation of type checking/reconstruction for simple types. And also lambda-terms à la Church (explicit).

- `systemF.maude` has the maude implementation of System F with terms depending on types and type abstractions. Together with type reconstruction/cheking.

## Folders

- `examples` contains some `.pdf` files demonstrating some examples for the diferent functional modules, defnied above. The `.txt` file with the same examples to be used in maude, and other examples. It also contains a haskell file, to verify some examples types.

The other folder is not relevant, it contains some maude examples to learn the tool. (I will probably remove it)

## Usage

To use the file you need to have Maude installed. Check [this link](https://maude.cs.illinois.edu/) for additional information.

When you have Maude ready to use, you can type to load a file:

```
load st.maude
```

And later test an example:

```
reduce lambda "x" "x" .
```

In this case it should just appear that it has the sort `Term`, that is it is a correctly typed term.

```
reduce in ST : lambda "x" "x" .
rewrites: 0 in 0ms cpu (0ms real) (~ rewrites/second)
result Term: lambda "x" "x"
```

### File dependencies

There are some file depedencies important to note. Which means you need to load certain files for it to work.

The files `poly.maude`, `check.maude`, and `systemF.maude` all depend on `st.maude`.