import dlt

@dlt.table(
    name="earthquake_silver",
    comment="Clean earthquake data"
)
def earthquake_silver():
    return (
        spark.readStream
        .format("cloudFiles")
        .option("cloudFiles.format", "json")
        .load("/Volumes/dev_project/bronze/earthquake_raw")
    )