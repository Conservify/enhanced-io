BUILD=build

default: all

$(BUILD):
	mkdir -p $(BUILD)

all: $(BUILD)
	cd $(BUILD) && cmake ../
	$(MAKE) -C $(BUILD)

test: all
	make -C $(BUILD) test

clean:
	rm -rf $(BUILD)

veryclean: clean
	rm -rf gitdeps

.PHONY:
