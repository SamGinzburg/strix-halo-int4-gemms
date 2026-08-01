	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[26:27], s[0:1], 0x60
	v_dual_mov_b32 v48, 0x7632 :: v_dual_lshlrev_b32 v97, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 1, v0
	s_clause 0x1
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x68
	v_dual_mov_b32 v80, 0xff800000 :: v_dual_and_b32 v1, 16, v97
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s5, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s6, s5, s2
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v45, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v50, v0, 4, 1
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v51, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s26, v4, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v53, v51, 30, v50
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s26, s6, v[81:82]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v44, 3, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v51, 24, v51
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v53, 2, v53
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[40:43], v1, s[28:31], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v4, 16, v45
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v49, 3, v0
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v94, s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v1
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	v_dual_mov_b32 v47, 0x5410 :: v_dual_and_b32 v52, 24, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v2, 1, v94
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v44, 56, v44
	v_lshl_add_u32 v99, v45, 1, 0
	v_lshl_or_b32 v45, v45, 5, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v51, 4, v53
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v95, 16, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v46, v1, s[28:31], 0 offen
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	v_xor_b32_e32 v52, v97, v52
	s_and_b32 s34, s1, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s27, v44
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[82:83], null, s27, v49, v[44:45]
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v31, v24 :: v_dual_add_nc_u32 v100, 0, v52
	s_and_b32 s0, s0, 0xffffc000
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v102, 0, v45
	v_xor_b32_e32 v54, 8, v52
	v_xor_b32_e32 v52, 8, v45
	v_xor_b32_e32 v55, 16, v45
	v_xor_b32_e32 v56, 24, v45
	s_add_i32 s34, s34, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v95
	v_or_b32_e32 v106, s34, v50
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[83:84], null, s27, 24, v[82:83]
	s_mov_b32 s16, 0
	v_cndmask_b32_e64 v47, 0x1054, v47, s0
	v_cndmask_b32_e64 v48, 0x3276, v48, s0
	v_mov_b32_e32 v21, v24
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s4, 0x3fb8aa3b
	s_mov_b32 s23, s16
	v_lshl_or_b32 v47, v47, 8, v47
	v_lshl_or_b32 v48, v48, 8, v48
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v11, v24
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v39, s23 :: v_dual_mov_b32 v38, s22
	v_dual_mov_b32 v37, s21 :: v_dual_mov_b32 v36, s20
	v_dual_mov_b32 v35, s19 :: v_dual_mov_b32 v34, s18
	v_dual_mov_b32 v33, s17 :: v_dual_mov_b32 v32, s16
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v101, 0, v54
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v104, 0, v55
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v103, 0, v52
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v105, 0, v56
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v107, s27, 3, v82
	v_lshl_add_u32 v108, s27, 4, v82
	v_or_b32_e32 v109, 2, v106
	v_or_b32_e32 v110, 4, v106
	v_or_b32_e32 v111, 6, v106
	v_or_b32_e32 v112, 8, v106
	v_or_b32_e32 v113, 10, v106
	v_or_b32_e32 v114, 12, v106
	v_or_b32_e32 v115, 14, v106
	v_or_b32_e32 v116, 16, v106
	v_or_b32_e32 v117, 18, v106
	v_or_b32_e32 v118, 20, v106
	v_or_b32_e32 v119, 22, v106
	v_or_b32_e32 v120, 24, v106
	v_or_b32_e32 v121, 26, v106
	v_or_b32_e32 v122, 28, v106
	v_or_b32_e32 v123, 30, v106
	v_mov_b32_e32 v98, v24
	v_mov_b16_e32 v96.h, 0
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s28, s10
	s_mov_b32 s29, s11
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	s_mov_b32 s35, s16
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v53, v40
	ds_bpermute_b32 v40, v51, v40
	ds_bpermute_b32 v45, v53, v41
	ds_bpermute_b32 v41, v51, v41
	ds_bpermute_b32 v49, v53, v42
	ds_bpermute_b32 v42, v51, v42
	ds_bpermute_b32 v50, v53, v43
	ds_bpermute_b32 v43, v51, v43
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v84, v40, v44, s0
	v_cndmask_b32_e64 v86, v44, v40, s0
	v_and_b32_e32 v40, 0x540054, v47
	v_and_b32_e32 v44, 0x760076, v48
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v85, v41, v45, s0
	v_cndmask_b32_e64 v87, v45, v41, s0
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v44, 4, v44
	v_dual_mov_b32 v23, v24 :: v_dual_mul_f32 v124, s3, v46
	v_mov_b32_e32 v8, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v13, v24 :: v_dual_and_b32 v92, 0x5040504, v40
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v88, v42, v49, s0
	v_cndmask_b32_e64 v90, v49, v42, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v89, v43, v50, s0
	v_cndmask_b32_e64 v91, v50, v43, s0
	v_and_b32_e32 v93, 0x7060706, v41
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s4, s35, s34
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v47, s23 :: v_dual_mov_b32 v46, s22
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[69:70], null, s4, s26, v[81:82]
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s4, s27
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v45, s21 :: v_dual_mov_b32 v44, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v70, s3, v82, 1
	v_add_lshl_u32 v71, s3, v107, 1
	v_add_lshl_u32 v72, s3, v108, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v42, s18
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v77, 0x80000000, v70, s1
	v_cndmask_b32_e64 v78, 0x80000000, v71, s1
	v_cndmask_b32_e64 v79, 0x80000000, v72, s1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[69:72], v69, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v73, s3, v83, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v48, s35, v106, 1
	v_add_lshl_u32 v49, s35, v109, 1
	v_add_lshl_u32 v51, s35, v110, 1
	v_add_lshl_u32 v52, s35, v111, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v141, 0x80000000, v73, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v53, s35, v112, 1
	v_add_lshl_u32 v54, s35, v113, 1
	v_add_lshl_u32 v55, s35, v114, 1
	v_add_lshl_u32 v60, s35, v115, 1
	v_add_lshl_u32 v61, s35, v116, 1
	v_add_lshl_u32 v62, s35, v117, 1
	v_add_lshl_u32 v63, s35, v118, 1
	v_add_lshl_u32 v64, s35, v119, 1
	v_add_lshl_u32 v65, s35, v120, 1
	v_add_lshl_u32 v66, s35, v121, 1
	v_add_lshl_u32 v67, s35, v122, 1
	v_add_lshl_u32 v68, s35, v123, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v58.h, v96.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v59.h, v96.h
	v_mov_b16_e32 v56.h, v96.h
	v_mov_b16_e32 v57.h, v96.h
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v100, v[69:70]
	ds_store_b64 v101, v[71:72]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[125:128], v102 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v103 offset1:1
	ds_load_2addr_stride64_b64 v[133:136], v104 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v105 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[127:128], v[84:85], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[125:126], v[84:85], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[131:132], v[88:89], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[129:130], v[88:89], v[40:47] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[129:132], v77, s[12:15], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[135:136], v[86:87], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[133:134], v[86:87], v[40:47] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[133:136], v78, s[12:15], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[139:140], v[90:91], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[137:138], v[90:91], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v137, v69
	v_cvt_f32_i32_e32 v138, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v42
	v_cvt_f32_i32_e32 v78, v43
	v_cvt_f32_i32_e32 v127, v44
	v_cvt_f32_i32_e32 v128, v45
	v_cvt_f32_i32_e32 v139, v71
	v_cvt_f32_i32_e32 v140, v72
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[42:45], v79, s[12:15], 0 offen
	buffer_load_b128 v[69:72], v141, s[12:15], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v48, v48, s[36:39], 0 offen
	buffer_load_u16 v49, v49, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v53, v53, s[36:39], 0 offen
	buffer_load_u16 v54, v54, s[36:39], 0 offen
	buffer_load_u16 v55, v55, s[36:39], 0 offen
	buffer_load_u16 v79, v60, s[36:39], 0 offen
	buffer_load_u16 v141, v61, s[36:39], 0 offen
	buffer_load_u16 v144, v62, s[36:39], 0 offen
	buffer_load_u16 v145, v63, s[36:39], 0 offen
	buffer_load_u16 v146, v64, s[36:39], 0 offen
	buffer_load_u16 v147, v65, s[36:39], 0 offen
	buffer_load_u16 v148, v66, s[36:39], 0 offen
	buffer_load_u16 v149, v67, s[36:39], 0 offen
	buffer_load_u16 v150, v68, s[36:39], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v127, v124, v127 :: v_dual_add_nc_u32 v50, 0, v97
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v142, v74
	v_cvt_f32_i32_e32 v143, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v74, v124, v40
	v_mul_f32_e32 v75, v124, v41
	v_mul_f32_e32 v125, v124, v77
	v_mul_f32_e32 v126, v124, v78
	v_mul_f32_e32 v128, v124, v128
	v_mul_f32_e32 v40, v124, v46
	v_mul_f32_e32 v41, v124, v47
	v_mul_f32_e32 v60, v124, v137
	v_mul_f32_e32 v61, v124, v138
	v_mul_f32_e32 v62, v124, v139
	v_mul_f32_e32 v63, v124, v140
	v_mul_f32_e32 v64, v124, v73
	v_mul_f32_e32 v65, v124, v142
	v_mul_f32_e32 v66, v124, v143
	v_mul_f32_e32 v67, v124, v76
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(19)
	ds_store_b128 v50, v[129:132]
	s_waitcnt vmcnt(18)
	ds_store_b128 v50, v[133:136] offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b128 v50, v[42:45] offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b128 v50, v[69:72] offset:3072
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v129, 16, v48
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v130, 16, v49
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v131, 16, v51
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v132, 16, v52
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v133, 16, v53
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v134, 16, v54
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v68, 16, v55
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v69, 16, v79
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v70, 16, v141
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v71, 16, v144
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v72, 16, v145
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v73, 16, v146
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v76, 16, v147
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v77, 16, v148
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v125, v125, v131 :: v_dual_lshlrev_b32 v78, 16, v149
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v126, v126, v132 :: v_dual_lshlrev_b32 v79, 16, v150
	v_dual_mul_f32 v129, v74, v129 :: v_dual_mul_f32 v130, v75, v130
	v_dual_mul_f32 v127, v127, v133 :: v_dual_mul_f32 v128, v128, v134
	v_dual_mul_f32 v60, v60, v70 :: v_dual_mul_f32 v61, v61, v71
	v_dual_mul_f32 v62, v62, v72 :: v_dual_mul_f32 v63, v63, v73
	v_dual_mul_f32 v64, v64, v76 :: v_dual_mul_f32 v65, v65, v77
	v_dual_mul_f32 v66, v66, v78 :: v_dual_mul_f32 v67, v67, v79
	v_dual_mul_f32 v40, v40, v68 :: v_dual_mul_f32 v41, v41, v69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v129, s2
	v_cndmask_b32_e64 v69, 0xff800000, v130, s2
	v_cndmask_b32_e64 v70, 0xff800000, v126, s2
	v_cndmask_b32_e64 v71, 0xff800000, v127, s2
	v_cndmask_b32_e64 v72, 0xff800000, v128, s2
	v_cndmask_b32_e64 v134, 0xff800000, v61, s2
	v_cndmask_b32_e64 v135, 0xff800000, v62, s2
	v_cndmask_b32_e64 v136, 0xff800000, v63, s2
	v_cndmask_b32_e64 v137, 0xff800000, v64, s2
	v_cndmask_b32_e64 v138, 0xff800000, v65, s2
	v_cndmask_b32_e64 v139, 0xff800000, v66, s2
	v_cndmask_b32_e64 v73, 0xff800000, v125, s2
	v_cndmask_b32_e64 v140, 0xff800000, v67, s2
	v_cndmask_b32_e64 v40, 0xff800000, v40, s2
	v_cndmask_b32_e64 v41, 0xff800000, v41, s2
	v_cndmask_b32_e64 v141, 0xff800000, v60, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v68, v69
	v_max3_f32 v61, v70, v71, v72
	v_max3_f32 v62, v134, v135, v136
	v_max3_f32 v63, v137, v138, v139
	v_max3_f32 v64, v40, v41, v141
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v60, v73, v61
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v61, v62, v63, v140
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v50, v99 offset:512
	ds_load_u16_d16 v49, v99 offset:256
	ds_load_u16_d16 v48, v99
	ds_load_u16_d16 v42, v99 offset:576
	ds_load_u16_d16 v51, v99 offset:768
	ds_load_u16_d16 v43, v99 offset:832
	ds_load_u16_d16 v52, v99 offset:1024
	ds_load_u16_d16 v44, v99 offset:1088
	ds_load_u16_d16 v53, v99 offset:1280
	ds_load_u16_d16 v45, v99 offset:1344
	ds_load_u16_d16 v54, v99 offset:1536
	ds_load_u16_d16 v46, v99 offset:1600
	ds_load_u16_d16 v55, v99 offset:1792
	ds_load_u16_d16 v47, v99 offset:1856
	ds_load_u16_d16 v75, v99 offset:608
	ds_load_u16_d16 v74, v99 offset:352
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v60, v64, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v61, v60, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v133, v80, v60, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v66, v80, v133
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v69, v133
	v_sub_f32_e32 v41, v41, v133
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v142, 0, v66, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v133
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v60, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v73, v133
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v64, v71, v133 :: v_dual_mul_f32 v25, v25, v142
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v96.l, v125.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v68, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v64, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v41, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v125, v125
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v142
	v_mul_f32_e32 v8, v8, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v40, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v96
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v132, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v62, s2
	v_cndmask_b32_e64 v129, 0, v64, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v125, v40, 0x7fff
	v_mov_b16_e64 v57.l, v131.h
	v_cmp_o_f32_e64 s11, v131, v131
	v_mov_b16_e32 v59.l, v127.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v70, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v56.l, v129.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v61, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v65, v72, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s4
	v_and_b32_e32 v57, 1, v57
	v_and_b32_e32 v56, 1, v56
	v_mov_b16_e32 v58.l, v126.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v126, v126
	v_add3_u32 v57, v131, v57, 0x7fff
	v_add3_u32 v56, v129, v56, 0x7fff
	v_and_b32_e32 v41, 1, v58
	v_and_b32_e32 v58, 1, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v127, v127
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s11
	v_add3_u32 v41, v126, v41, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v65, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v129, v129
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v142
	v_mul_f32_e32 v9, v9, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s5
	v_cmp_o_f32_e64 s8, v130, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v63, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v142
	v_mul_f32_e32 v11, v11, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v40, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v96.l, v128.h
	v_cmp_o_f32_e64 s6, v128, v128
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v143, v41, v40, v92
	v_perm_b32 v144, v41, v40, v93
	v_and_b32_e32 v40, 1, v96
	v_mov_b16_e64 v96.l, v130.h
	v_add3_u32 v41, v127, v58, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v56.h, s9
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v128, v40, 0x7fff
	v_and_b32_e32 v58, 1, v96
	v_mov_b16_e64 v96.l, v132.h
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s7
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s6
	v_add3_u32 v58, v130, v58, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v0, v0, v142 :: v_dual_and_b32 v57, 1, v96
	v_mul_f32_e32 v1, v1, v142
	v_mul_f32_e32 v2, v2, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v58.h, s8
	v_add3_u32 v57, v132, v57, 0x7fff
	v_permlanex16_b32 v58, v40, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v142
	v_mul_f32_e32 v4, v4, v142
	v_mul_f32_e32 v5, v5, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s10
	v_perm_b32 v145, v58, v40, v92
	v_permlanex16_b32 v57, v41, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v146, v58, v40, v93
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v56, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v147, v57, v41, v92
	v_perm_b32 v148, v57, v41, v93
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v149, v40, v56, v92
	v_perm_b32 v150, v40, v56, v93
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v152, v99 offset:288
	ds_load_u16_d16 v151, v99 offset:32
	ds_load_u16_d16 v40, v99 offset:64
	ds_load_u16_d16 v41, v99 offset:320
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v74, v99 offset:480
	ds_load_u16_d16 v73, v99 offset:96
	ds_load_u16_d16_hi v49, v99 offset:384
	ds_load_u16_d16_hi v50, v99 offset:640
	ds_load_u16_d16_hi v42, v99 offset:704
	ds_load_u16_d16 v153, v99 offset:544
	ds_load_u16_d16_hi v51, v99 offset:896
	ds_load_u16_d16_hi v43, v99 offset:960
	ds_load_u16_d16 v76, v99 offset:864
	ds_load_u16_d16_hi v52, v99 offset:1152
	ds_load_u16_d16_hi v44, v99 offset:1216
	ds_load_u16_d16 v77, v99 offset:1120
	ds_load_u16_d16_hi v53, v99 offset:1408
	ds_load_u16_d16_hi v45, v99 offset:1472
	ds_load_u16_d16 v78, v99 offset:1376
	ds_load_u16_d16_hi v54, v99 offset:1664
	ds_load_u16_d16_hi v46, v99 offset:1728
	ds_load_u16_d16 v79, v99 offset:1632
	ds_load_u16_d16_hi v55, v99 offset:1920
	ds_load_u16_d16_hi v47, v99 offset:1984
	ds_load_u16_d16 v56, v99 offset:2048
	ds_load_u16_d16 v64, v99 offset:2112
	ds_load_u16_d16 v80, v99 offset:1888
	ds_load_u16_d16_hi v48, v99 offset:128
	ds_load_u16_d16 v154, v99 offset:800
	ds_load_u16_d16 v155, v99 offset:1056
	ds_load_u16_d16 v156, v99 offset:1312
	ds_load_u16_d16 v157, v99 offset:1568
	ds_load_u16_d16 v158, v99 offset:1824
	ds_load_u16_d16 v65, v99 offset:2368
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v153, v99 offset:672
	ds_load_u16_d16_hi v75, v99 offset:736
	ds_load_u16_d16_hi v151, v99 offset:160
	ds_load_u16_d16_hi v40, v99 offset:192
	ds_load_u16_d16_hi v73, v99 offset:224
	ds_load_u16_d16_hi v152, v99 offset:416
	ds_load_u16_d16_hi v41, v99 offset:448
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v154, v99 offset:928
	ds_load_u16_d16_hi v76, v99 offset:992
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v155, v99 offset:1184
	ds_load_u16_d16_hi v77, v99 offset:1248
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v156, v99 offset:1440
	ds_load_u16_d16_hi v78, v99 offset:1504
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v157, v99 offset:1696
	ds_load_u16_d16_hi v79, v99 offset:1760
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v158, v99 offset:1952
	ds_load_u16_d16_hi v80, v99 offset:2016
	ds_load_u16_d16_hi v64, v99 offset:2240
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v142
	v_mul_f32_e32 v30, v30, v142
	v_dual_mul_f32 v16, v16, v142 :: v_dual_add_f32 v125, v126, v125
	v_mul_f32_e32 v19, v19, v142
	v_mul_f32_e32 v21, v21, v142
	v_mul_f32_e32 v23, v23, v142
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v127, v128
	v_add_f32_e32 v128, v131, v132
.Ltmp11:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v142
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[73:80], v[143:150], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v136, v133
	v_sub_f32_e32 v136, v140, v133
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[40:47], v[143:150], v[8:15]
	v_dual_mov_b32 v40, v98 :: v_dual_sub_f32 v45, v141, v133
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v134, v133
	v_sub_f32_e32 v47, v135, v133
	v_sub_f32_e32 v98, v137, v133
	v_sub_f32_e32 v134, v138, v133
	v_sub_f32_e32 v135, v139, v133
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v137, v80
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v136, v136
	v_mov_b32_e32 v80, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.h, v96.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s2
	v_cndmask_b32_e64 v46, 0, v46, s2
	v_cndmask_b32_e64 v47, 0, v47, s2
	v_cndmask_b32_e64 v133, 0, v137, s2
	v_cndmask_b32_e64 v98, 0, v98, s2
	v_cndmask_b32_e64 v134, 0, v134, s2
	v_cndmask_b32_e64 v135, 0, v135, s2
	v_cndmask_b32_e64 v136, 0, v136, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v96.h
	v_mov_b16_e32 v41.l, v45.h
	v_mov_b16_e32 v42.l, v47.h
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v127, v129, v130 :: v_dual_add_f32 v130, v47, v133
	v_dual_add_f32 v129, v45, v46 :: v_dual_add_f32 v132, v135, v136
	v_add_f32_e32 v131, v98, v134
.Ltmp13:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v57, v99 offset:2304
	ds_load_u16_d16 v79, v99 offset:3872
	ds_load_u16_d16 v58, v99 offset:2560
	ds_load_u16_d16 v73, v99 offset:2336
	ds_load_u16_d16 v66, v99 offset:2624
	ds_load_u16_d16 v59, v99 offset:2816
	ds_load_u16_d16 v74, v99 offset:2592
	ds_load_u16_d16 v67, v99 offset:2880
	ds_load_u16_d16 v60, v99 offset:3072
	ds_load_u16_d16 v75, v99 offset:2848
	ds_load_u16_d16 v68, v99 offset:3136
	ds_load_u16_d16 v61, v99 offset:3328
	ds_load_u16_d16 v76, v99 offset:3104
	ds_load_u16_d16 v69, v99 offset:3392
	ds_load_u16_d16 v62, v99 offset:3584
	ds_load_u16_d16 v77, v99 offset:3360
	ds_load_u16_d16 v70, v99 offset:3648
	ds_load_u16_d16 v63, v99 offset:3840
	ds_load_u16_d16 v78, v99 offset:3616
	ds_load_u16_d16 v71, v99 offset:3904
	ds_load_u16_d16_hi v56, v99 offset:2176
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v142 :: v_dual_and_b32 v41, 1, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v42
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v126 :: v_dual_add_f32 v126, v127, v128
	v_dual_add_f32 v127, v129, v130 :: v_dual_add_f32 v128, v131, v132
.Ltmp15:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v45, v45
	v_cmp_o_f32_e64 s7, v47, v47
	v_add3_u32 v41, v45, v41, 0x7fff
	v_add3_u32 v42, v47, v42, 0x7fff
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v125, v126
	v_add_f32_e32 v47, v127, v128
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.h, v96.h
	v_mov_b16_e32 v43.l, v98.h
	v_mov_b16_e32 v96.l, v46.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[143:150], v[24:31]
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v47 :: v_dual_mul_f32 v20, v20, v142
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v43
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v72, v99 offset:2080
	ds_load_u16_d16 v48, v99 offset:2144
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v57, v99 offset:2432
	ds_load_u16_d16_hi v65, v99 offset:2496
	ds_load_u16_d16 v49, v99 offset:2400
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v58, v99 offset:2688
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v66, v99 offset:2752
	ds_load_u16_d16 v50, v99 offset:2656
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v59, v99 offset:2944
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v67, v99 offset:3008
	ds_load_u16_d16 v51, v99 offset:2912
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v60, v99 offset:3200
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v68, v99 offset:3264
	ds_load_u16_d16 v52, v99 offset:3168
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v61, v99 offset:3456
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v69, v99 offset:3520
	ds_load_u16_d16 v53, v99 offset:3424
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v62, v99 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v70, v99 offset:3776
	ds_load_u16_d16 v54, v99 offset:3680
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v63, v99 offset:3968
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v71, v99 offset:4032
	ds_load_u16_d16 v55, v99 offset:3936
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v47, v45, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v125, 1, v96
	v_mov_b16_e64 v96.l, v133.h
	v_cmp_o_f32_e64 s9, v98, v98
	v_add3_u32 v43, v98, v43, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v98, v45, v47
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.h, v96.h
	v_and_b32_e32 v45, 1, v96
	v_mov_b16_e64 v96.l, v134.h
	v_cmp_o_f32_e64 s4, v46, v46
	v_mov_b16_e64 v44.l, v135.h
	v_add3_u32 v46, v46, v125, 0x7fff
	v_cmp_o_f32_e64 s6, v133, v133
	v_and_b32_e32 v47, 1, v96
	v_mov_b16_e64 v96.l, v136.h
	v_and_b32_e32 v44, 1, v44
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s5
	v_cndmask_b16 v41.h, 0x7fff, v46.h, s4
	v_add3_u32 v45, v133, v45, 0x7fff
	v_and_b32_e32 v46, 1, v96
	v_cmp_o_f32_e64 s8, v134, v134
	v_cmp_o_f32_e64 s3, v136, v136
	v_cmp_o_f32_e64 s10, v135, v135
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v72, v99 offset:2208
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v48, v99 offset:2272
	ds_load_u16_d16_hi v73, v99 offset:2464
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v49, v99 offset:2528
	ds_load_u16_d16_hi v74, v99 offset:2720
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v50, v99 offset:2784
	ds_load_u16_d16_hi v75, v99 offset:2976
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v51, v99 offset:3040
	ds_load_u16_d16_hi v76, v99 offset:3232
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v52, v99 offset:3296
	ds_load_u16_d16_hi v77, v99 offset:3488
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v53, v99 offset:3552
	ds_load_u16_d16_hi v78, v99 offset:3744
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v54, v99 offset:3808
	ds_load_u16_d16_hi v79, v99 offset:4000
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v55, v99 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v135, v44, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s7
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s6
	v_add3_u32 v45, v134, v47, 0x7fff
	v_add3_u32 v46, v136, v46, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s9
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s10
	v_permlanex16_b32 v126, v41, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v42, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s3
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[151:158], v[143:150], v[16:23]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v125, v126, v41, v92
	v_perm_b32 v126, v126, v41, v93
	v_perm_b32 v127, v47, v42, v92
	v_permlanex16_b32 v41, v43, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v128, v47, v42, v93
	v_permlanex16_b32 v42, v44, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v98, v40, v142
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s35, 32
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v129, v41, v43, v92
	v_perm_b32 v130, v41, v43, v93
	v_perm_b32 v131, v42, v44, v92
	v_perm_b32 v132, v42, v44, v93
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s35, 0x7e0
	s_mov_b32 s35, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[56:63], v[125:132], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[72:79], v[125:132], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[64:71], v[125:132], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[48:55], v[125:132], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v98, v98, v24
	v_div_scale_f32 v33, null, v98, v98, v25
	v_div_scale_f32 v36, null, v98, v98, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v24, v98, v24
	v_div_scale_f32 v38, s1, v25, v98, v25
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v43, null, v98, v98, v27
	v_div_scale_f32 v47, null, v98, v98, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v42, s3, v26, v98, v26
	v_div_scale_f32 v49, null, v98, v98, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v44, -v36, v39, 1.0
	v_div_scale_f32 v40, s4, v27, v98, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v33, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v43, v41, 1.0
	v_dual_fmac_f32 v46, v48, v35 :: v_dual_fmac_f32 v41, v50, v41
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v39, v44, v39
	v_fma_f32 v44, -v32, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v33, v46, v38
	v_div_scale_f32 v38, null, v98, v98, v30
	v_fmac_f32_e32 v45, v44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v45, v37
	v_div_fmas_f32 v32, v32, v34, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v49
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v48, 1.0
	v_div_fixup_f32 v24, v32, v98, v24
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v98
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v33, v98, v25
	v_fmac_f32_e32 v48, v35, v48
	v_mul_f32_e32 v44, v42, v39
	v_div_scale_f32 v35, s5, v28, v98, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v96.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v44, v42
	v_fma_f32 v33, -v43, v37, v40
	v_fma_f32 v36, -v49, v34, 1.0
	v_div_scale_f32 v42, null, v98, v98, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v39, v44
	v_dual_fmac_f32 v37, v33, v41 :: v_dual_fmac_f32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_mul_f32_e32 v33, v35, v48
	v_div_scale_f32 v39, s3, v29, v98, v29
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v26, v32, v98, v26
	v_fma_f32 v32, -v43, v37, v40
	v_fma_f32 v40, -v47, v33, v35
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v38, v36, 1.0
	v_mul_f32_e32 v43, v39, v34
	v_div_fmas_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v33, v40, v48
	v_div_scale_f32 v40, s4, v30, v98, v30
	v_fmac_f32_e32 v36, v45, v36
	v_fma_f32 v37, -v49, v43, v39
	v_fma_f32 v41, -v42, v44, 1.0
	v_div_fixup_f32 v27, v32, v98, v27
	v_fma_f32 v32, -v47, v33, v35
	v_mul_f32_e32 v35, v40, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v41, v44
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s6, v31, v98, v31
	v_div_scale_f32 v41, null, v98, v98, v16
	v_div_fmas_f32 v32, v32, v48, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v43, v39
	v_fma_f32 v39, -v38, v35, v40
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v46, v37, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v32, v98, v28
	v_fmac_f32_e32 v35, v39, v36
	v_div_scale_f32 v47, null, v98, v98, v17
	v_fma_f32 v39, -v42, v46, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v39, v44
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v34, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v33, v98, v29
	v_fma_f32 v29, -v38, v35, v40
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s3, v16, v98, v16
	v_div_scale_f32 v43, null, v98, v98, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v36, v35
	v_fma_f32 v35, -v42, v46, v37
	v_mul_f32_e32 v36, v33, v45
	v_div_scale_f32 v37, null, v98, v98, v18
	v_fma_f32 v38, -v47, v34, 1.0
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v36, v33
	v_rcp_f32_e32 v39, v37
	v_div_fmas_f32 v35, v35, v44, v46
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v17, v98, v17
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v29, v98, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v42, v38, v34
	v_div_fixup_f32 v29, v35, v98, v31
	v_fma_f32 v40, -v37, v39, 1.0
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v98, v98, v20
	v_rcp_f32_e32 v35, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v33, v33, v45, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v41
	v_div_scale_f32 v46, null, v98, v98, v21
	v_fma_f32 v31, -v47, v42, v38
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v98, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v43, v35, 1.0
	v_fmac_f32_e32 v42, v31, v34
	v_div_scale_f32 v31, s5, v18, v98, v18
	v_fma_f32 v45, -v41, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v36, -v47, v42, v38
	v_div_scale_f32 v44, s3, v19, v98, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v45, v40
	v_rcp_f32_e32 v45, v46
	v_div_fmas_f32 v34, v36, v34, v42
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v47, s4, v20, v98, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v34, v98, v17
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v34, v47, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v46, v45, 1.0
	v_mul_f32_e32 v38, v31, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v38, v31
	v_div_scale_f32 v48, s6, v21, v98, v21
	v_fmac_f32_e32 v38, v36, v39
	v_div_scale_f32 v36, null, v98, v98, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v37, v38, v31
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v31, v39, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v98, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v37, 1.0
	v_dual_mul_f32 v42, v44, v35 :: v_dual_fmac_f32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v43, v42, v44
	v_div_scale_f32 v39, null, v98, v98, v23
	v_fmac_f32_e32 v42, v33, v35
	v_fma_f32 v33, -v41, v34, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v44
	v_dual_fmac_f32 v34, v33, v40 :: v_dual_mul_f32 v33, v48, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v34, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v33, v48
	v_div_scale_f32 v42, s3, v22, v98, v22
	v_div_fmas_f32 v34, v38, v40, v34
	v_rcp_f32_e32 v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v45
	v_div_fixup_f32 v19, v35, v98, v19
	v_div_scale_f32 v35, null, v98, v98, v8
	v_div_fixup_f32 v18, v34, v98, v20
	v_fma_f32 v20, -v46, v33, v48
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v20, v20, v45, v33
	v_rcp_f32_e32 v33, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, null, v98, v98, v9
	v_div_fixup_f32 v20, v20, v98, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v41
	v_mul_f32_e32 v40, v42, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v36, v40, v42
	v_fmac_f32_e32 v40, v34, v37
	v_div_scale_f32 v34, s4, v23, v98, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v36, v40, v42
	v_mul_f32_e32 v36, v34, v38
	v_fma_f32 v42, -v35, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v37, v40
	v_fma_f32 v37, -v39, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, null, v98, v98, v10
	v_div_scale_f32 v40, s3, v8, v98, v8
	v_fmac_f32_e32 v36, v37, v38
	v_fma_f32 v37, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v21, v21, v98, v22
	v_mul_f32_e32 v22, v40, v33
	v_fma_f32 v34, -v39, v36, v34
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s5, v9, v98, v9
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v35, v22, v40
	v_div_fmas_f32 v34, v34, v38, v36
	v_mul_f32_e32 v36, v37, v43
	v_fma_f32 v38, -v42, v44, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v22, v39, v33
	v_div_scale_f32 v39, null, v98, v98, v11
	v_fma_f32 v45, -v41, v36, v37
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s4, v10, v98, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v39
	v_div_fixup_f32 v23, v34, v98, v23
	v_fma_f32 v34, -v35, v22, v40
	v_dual_fmac_f32 v36, v45, v43 :: v_dual_mul_f32 v35, v38, v44
	v_div_scale_f32 v40, null, v98, v98, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v34, v33, v22
	v_fma_f32 v33, -v41, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v42, v35, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v39, v46, 1.0
	v_div_fixup_f32 v8, v22, v98, v8
	v_div_fmas_f32 v33, v33, v43, v36
	v_fmac_f32_e32 v35, v34, v44
	v_rcp_f32_e32 v34, v40
	v_div_scale_f32 v36, null, v98, v98, v13
	v_fmac_f32_e32 v46, v37, v46
	v_div_scale_f32 v37, s3, v11, v98, v11
	v_div_fixup_f32 v9, v33, v98, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v36
	v_fma_f32 v22, -v42, v35, v38
	v_mul_f32_e32 v38, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v40, v34, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, null, v98, v98, v15
	v_div_fmas_f32 v22, v22, v44, v35
	v_fma_f32 v35, -v39, v38, v37
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v12, v98, v12
	v_fma_f32 v42, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v35, v46
	v_div_scale_f32 v35, null, v98, v98, v14
	v_mul_f32_e32 v43, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, s5, v13, v98, v13
	v_rcp_f32_e32 v44, v35
	v_div_fixup_f32 v10, v22, v98, v10
	v_fma_f32 v22, -v39, v38, v37
	v_fma_f32 v37, -v40, v43, v41
	v_mul_f32_e32 v39, v42, v33
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v46, v38
	v_fmac_f32_e32 v43, v37, v34
	v_fma_f32 v37, -v36, v39, v42
	v_fma_f32 v38, -v35, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v22, v98, v11
	v_fma_f32 v22, -v40, v43, v41
	v_fmac_f32_e32 v39, v37, v33
	v_div_scale_f32 v40, null, v98, v98, v0
	v_fmac_f32_e32 v44, v38, v44
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v38, s3, v14, v98, v14
	v_div_fmas_f32 v22, v22, v34, v43
	v_fma_f32 v34, -v36, v39, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v43, null, v98, v98, v1
	v_mul_f32_e32 v36, v38, v44
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v45, v37, 1.0
	v_div_fmas_f32 v33, v34, v33, v39
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v34, -v35, v36, v38
	v_div_fixup_f32 v12, v22, v98, v12
	v_fma_f32 v46, -v40, v42, 1.0
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s4, v15, v98, v15
	v_fmac_f32_e32 v36, v34, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v46, v42
	v_div_scale_f32 v46, null, v98, v98, v2
	v_div_fixup_f32 v13, v33, v98, v13
	v_fma_f32 v33, -v43, v39, 1.0
	v_mul_f32_e32 v22, v41, v37
	v_div_scale_f32 v34, s5, v0, v98, v0
	v_fma_f32 v35, -v35, v36, v38
	v_rcp_f32_e32 v38, v46
	v_fmac_f32_e32 v39, v33, v39
	v_div_scale_f32 v33, s6, v1, v98, v1
	v_fma_f32 v47, -v45, v22, v41
	v_mul_f32_e32 v48, v34, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v49, v33, v39
	v_div_fmas_f32 v35, v35, v44, v36
	v_fmac_f32_e32 v22, v47, v37
	v_fma_f32 v36, -v40, v48, v34
	v_fma_f32 v47, -v46, v38, 1.0
	v_fma_f32 v44, -v43, v49, v33
	v_div_fixup_f32 v14, v35, v98, v14
	v_fma_f32 v35, -v45, v22, v41
	v_fmac_f32_e32 v48, v36, v42
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v36, s3, v2, v98, v2
	v_fmac_f32_e32 v49, v44, v39
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, null, v98, v98, v3
	v_div_fmas_f32 v22, v35, v37, v22
	v_mul_f32_e32 v35, v36, v38
	v_fma_f32 v34, -v40, v48, v34
	v_fma_f32 v33, -v43, v49, v33
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v41
	v_fma_f32 v40, -v46, v35, v36
	v_div_fmas_f32 v34, v34, v42, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v15, v22, v98, v15
	v_div_fmas_f32 v33, v33, v39, v49
	v_fmac_f32_e32 v35, v40, v38
	v_div_fixup_f32 v0, v34, v98, v0
	v_div_scale_f32 v39, null, v98, v98, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v33, v98, v1
	v_div_scale_f32 v33, null, v98, v98, v4
	v_fma_f32 v22, -v41, v37, 1.0
	v_fma_f32 v34, -v46, v35, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v36, v33
	v_rcp_f32_e32 v40, v39
	v_fmac_f32_e32 v37, v22, v37
	v_div_scale_f32 v22, s4, v3, v98, v3
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v98, v98, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v22, v37
	v_div_scale_f32 v44, null, v98, v98, v7
	v_rcp_f32_e32 v42, v35
	v_div_fixup_f32 v2, v34, v98, v2
	v_fma_f32 v34, -v33, v36, 1.0
	v_fma_f32 v43, -v41, v38, v22
	v_fma_f32 v45, -v39, v40, 1.0
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v36, v34, v36
	v_div_scale_f32 v34, s3, v4, v98, v4
	v_fmac_f32_e32 v38, v43, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v5, v98, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v47, v34, v36 :: v_dual_fmac_f32 v42, v43, v42
	v_div_scale_f32 v43, s6, v6, v98, v6
	v_fma_f32 v48, -v44, v46, 1.0
	v_fma_f32 v22, -v41, v38, v22
	v_mul_f32_e32 v49, v45, v40
	v_fma_f32 v41, -v33, v47, v34
	v_mul_f32_e32 v50, v43, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s7, v7, v98, v7
	v_div_fmas_f32 v22, v22, v37, v38
	v_fma_f32 v37, -v39, v49, v45
	v_fmac_f32_e32 v47, v41, v36
	v_fma_f32 v38, -v35, v50, v43
	v_mul_f32_e32 v41, v48, v46
	v_div_fixup_f32 v3, v22, v98, v3
	v_fmac_f32_e32 v49, v37, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v24.h
	v_mov_b16_e32 v37.h, v96.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v33, v47, v34
	v_fmac_f32_e32 v50, v38, v42
	v_fma_f32 v33, -v44, v41, v48
	v_fma_f32 v34, -v39, v49, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v96
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v96.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v41, v33, v46
	v_div_fmas_f32 v22, v22, v36, v47
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v33, -v35, v50, v43
	v_div_fmas_f32 v34, v34, v40, v49
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v24, v37, 0x7fff
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v96.h
	v_and_b32_e32 v39, 1, v96
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v24, v24
	v_and_b32_e32 v24, 1, v37
	v_add3_u32 v37, v27, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v96.l, v28.h
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e32 v39.h, v96.h
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s6
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v96
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v39
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v29, v28, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v96.h
	v_mov_b16_e32 v96.l, v26.h
	v_add3_u32 v25, v32, v25, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_and_b32_e32 v24, 1, v37
	v_and_b32_e32 v29, 1, v96
	v_cndmask_b16 v28.l, 0x7fff, v25.h, s8
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v96.l, v17.h
	v_add3_u32 v24, v30, v24, 0x7fff
	v_add3_u32 v25, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v96.h
	v_and_b32_e32 v29, 1, v96
	v_mov_b16_e32 v96.l, v19.h
	v_cndmask_b16 v25.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_and_b32_e32 v24, 1, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_and_b32_e32 v30, 1, v96
	v_add3_u32 v17, v16, v24, 0x7fff
	v_mov_b16_e32 v24.l, v26.h
	v_mov_b16_e32 v24.h, v96.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s6
	v_cmp_o_f32_e64 s6, v16, v16
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v96.l, v20.h
	v_and_b32_e32 v16, 1, v24
	v_add3_u32 v24, v19, v30, 0x7fff
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v96.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v26, v16, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_and_b32_e32 v17, 1, v30
	v_and_b32_e32 v24, 1, v96
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v96.h
	v_mov_b16_e32 v96.l, v23.h
	v_add3_u32 v17, v18, v17, 0x7fff
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s6
	v_and_b32_e32 v16, 1, v26
	v_and_b32_e32 v20, 1, v96
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s7
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s8
	v_add3_u32 v16, v21, v16, 0x7fff
	v_add3_u32 v17, v23, v20, 0x7fff
	v_mov_b16_e32 v96.l, v9.h
	v_cmp_o_f32_e64 s7, v21, v21
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v96.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v23, v23
	v_and_b32_e32 v21, 1, v96
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v96.l, v11.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v20, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v96.h
	v_and_b32_e32 v21, 1, v96
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v8, v8
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v96.l, v13.h
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v96.h
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s6
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v96
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v15, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v21
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v96.h
	v_mov_b16_e32 v96.l, v10.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s6
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v96
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v96.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v44, v41, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v96.h
	v_and_b32_e32 v13, 1, v96
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v46, v41
	v_div_fixup_f32 v4, v22, v98, v4
	v_div_fixup_f32 v5, v34, v98, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v96.h
	v_mov_b16_e32 v96.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v98, v6
	v_div_fixup_f32 v7, v35, v98, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cmp_o_f32_e64 s6, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v96
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s6
	v_mov_b16_e32 v8.h, v96.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v96.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v7, 1, v96
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v96.h
	v_mov_b16_e32 v96.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v96
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v4, v6, v8, 0x7fff
	v_add3_u32 v5, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v36, 1, v95
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v38, v28, s0
	v_cndmask_b32_e64 v6, v27, v25, s0
	v_cndmask_b32_e64 v8, v29, v18, s0
	v_cndmask_b32_e64 v13, v17, v19, s0
	v_cndmask_b32_e64 v14, v19, v17, s0
	v_cndmask_b32_e64 v17, v0, v10, s0
	v_cndmask_b32_e64 v0, v10, v0, s0
	v_cndmask_b32_e64 v15, v12, v20, s0
	v_cndmask_b32_e64 v12, v20, v12, s0
	v_cndmask_b32_e64 v16, v9, v11, s0
	v_cndmask_b32_e64 v9, v11, v9, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s27, v94
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v7, v18, v29, s0
	v_cndmask_b32_e64 v18, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v22, 16, v36
	s_mov_b32 s1, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v3, v28, v38, s0
	v_cndmask_b32_e64 v5, v25, v27, s0
	v_permlanex16_b32 v2, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v1, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s27, v22
	v_cmp_gt_i32_e64 s5, s27, v36
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v3, v92
	v_perm_b32 v1, v2, v3, v93
	v_perm_b32 v2, v4, v5, v92
	v_perm_b32 v3, v4, v5, v93
	v_perm_b32 v4, v6, v7, v92
	v_perm_b32 v5, v6, v7, v93
	v_perm_b32 v6, v8, v13, v92
	v_perm_b32 v7, v8, v13, v93
	v_perm_b32 v12, v14, v17, v92
	v_perm_b32 v13, v14, v17, v93
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v22, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v15, v92
	v_perm_b32 v9, v10, v15, v93
	v_perm_b32 v10, v11, v16, v92
	v_perm_b32 v11, v11, v16, v93
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s27, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v92
	v_perm_b32 v15, v19, v18, v93
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	s_mov_b32 s27, 0x31027000
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 159
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 159
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9864
; TotalNumSgprs: 42
; NumVgprs: 159
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 159
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     159
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
