variable Object1 {
    type = object({
        id=number,
        name=string,
        desc=string,
        Object2=object({
            id=number,
            name=string,
            desc=string,
        })
    })
}

