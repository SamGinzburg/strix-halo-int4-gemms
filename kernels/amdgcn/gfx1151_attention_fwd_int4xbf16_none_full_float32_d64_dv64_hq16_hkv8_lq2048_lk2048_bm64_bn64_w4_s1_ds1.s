	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b64 s[44:45], s[0:1], 0x20
	v_dual_mov_b32 v39, 0x5410 :: v_dual_lshlrev_b32 v140, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 1, v0
	v_mov_b32_e32 v40, 0x7632
	s_clause 0x2
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x68
	s_load_b64 s[36:37], s[0:1], 0x38
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v140
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s5, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s6, s5, s2
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_and_b32 v37, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v43, 16, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[96:97], null, s34, v4, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v128, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v42, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s34, s6, v[96:97]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v44, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v45, 24, v0
	v_and_or_b32 v46, v42, 30, v128
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[40:43], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v4, 48, v37
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s41, s23, 0xffff
	s_mov_b32 s40, s22
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v107, s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v1
	v_mov_b32_e32 v31, v24
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v42, 24, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v2, 1, v107
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_mov_b32_e32 v19, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v108, 62, v36
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s3, s0, 0xffffc000
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v36, 56, v44
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_xor_b32_e32 v141, v140, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v44, 2, v46
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v38, v1, s[40:43], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s1, 0x80000
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v41, 3, v0
	v_lshl_add_u32 v142, v37, 1, 0
	v_lshl_or_b32 v143, v37, 5, v42
	v_xor_b32_e32 v37, 8, v141
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v42, 4, v44
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	v_mov_b32_e32 v21, v24
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[97:98], null, s35, v41, v[36:37]
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s39, s0, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s35, v36
	v_add_nc_u32_e32 v144, 0, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v43
	v_mov_b32_e32 v9, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v127, 24, v128
	v_or_b32_e32 v126, 26, v128
	v_or_b32_e32 v125, 28, v128
	v_cndmask_b32_e64 v39, 0x1054, v39, s1
	v_cndmask_b32_e64 v40, 0x3276, v40, s1
	v_or_b32_e32 v124, 30, v128
	v_or_b32_e32 v123, 32, v128
	v_or_b32_e32 v122, 34, v128
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v40, v40, 8, v40
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v13, v24
	v_or_b32_e32 v121, 36, v128
	v_or_b32_e32 v120, 38, v128
	v_or_b32_e32 v119, 40, v128
	v_or_b32_e32 v118, 42, v128
	v_or_b32_e32 v117, 44, v128
	v_or_b32_e32 v116, 46, v128
	v_or_b32_e32 v115, 48, v128
	v_or_b32_e32 v114, 50, v128
	v_or_b32_e32 v113, 52, v128
	v_or_b32_e32 v112, 54, v128
	v_or_b32_e32 v111, 56, v128
	v_or_b32_e32 v110, 58, v128
	v_or_b32_e32 v109, 60, v128
	v_xor_b32_e32 v45, 8, v143
	v_xor_b32_e32 v46, 16, v143
	v_xor_b32_e32 v47, 24, v143
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s4, s4, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s39, s39, s3
	v_dual_mov_b32 v28, v24 :: v_dual_add_nc_u32 v145, 0, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v30, v24 :: v_dual_add_nc_u32 v147, 0, v47
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v22, v24
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v146, 0, v46
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v175, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v139, 2, v128
	v_or_b32_e32 v138, 4, v128
	v_or_b32_e32 v137, 6, v128
	v_or_b32_e32 v136, 8, v128
	v_or_b32_e32 v135, 10, v128
	v_or_b32_e32 v134, 12, v128
	v_or_b32_e32 v133, 14, v128
	v_or_b32_e32 v132, 16, v128
	v_or_b32_e32 v131, 18, v128
	v_or_b32_e32 v130, 20, v128
	v_or_b32_e32 v129, 22, v128
	v_or_b32_e32 v148, s39, v127
	v_or_b32_e32 v149, s39, v126
	v_or_b32_e32 v150, s39, v125
	v_or_b32_e32 v151, s39, v124
	v_or_b32_e32 v152, s39, v123
	v_or_b32_e32 v153, s39, v122
	v_or_b32_e32 v154, s39, v121
	v_or_b32_e32 v155, s39, v120
	v_or_b32_e32 v156, s39, v119
	v_or_b32_e32 v157, s39, v118
	v_or_b32_e32 v158, s39, v117
	v_or_b32_e32 v159, s39, v116
	v_or_b32_e32 v160, s39, v115
	v_or_b32_e32 v161, s39, v114
	v_or_b32_e32 v162, s39, v113
	v_or_b32_e32 v163, s39, v112
	v_or_b32_e32 v164, s39, v111
	v_or_b32_e32 v165, s39, v110
	v_or_b32_e32 v166, s39, v109
	v_or_b32_e32 v167, s39, v108
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v168, s35, 4, v97
	v_lshl_add_u32 v172, s35, 5, v97
	s_mov_b32 s24, 0
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s38, s24
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s42
	s_mov_b32 s23, s43
	s_mov_b32 s40, s18
	s_mov_b32 s41, s19
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v36, v44, v32
	ds_bpermute_b32 v32, v42, v32
	ds_bpermute_b32 v37, v44, v33
	ds_bpermute_b32 v33, v42, v33
	ds_bpermute_b32 v41, v44, v34
	ds_bpermute_b32 v34, v42, v34
	ds_bpermute_b32 v43, v44, v35
	ds_bpermute_b32 v35, v42, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v98, v32, v36, s1
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v99, v33, v37, s1
	v_cndmask_b32_e64 v102, v37, v33, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[100:101], null, s35, 48, v[97:98]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v101, v36, v32, s1
	v_and_b32_e32 v32, 0x540054, v39
	v_and_b32_e32 v36, 0x760076, v40
	v_dual_mov_b32 v16, v24 :: v_dual_mul_f32 v169, s4, v38
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v103, v34, v41, s1
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v15, v24
	v_cndmask_b32_e64 v105, v41, v34, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v104, v35, v43, s1
	v_cndmask_b32_e64 v106, v43, v35, s1
	v_and_b32_e32 v170, 0x5040504, v32
	v_and_b32_e32 v171, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s1, s38, s39
	v_or_b32_e32 v42, s39, v128
	v_mad_u64_u32 v[81:82], null, s1, s34, v[96:97]
	v_or_b32_e32 v43, s39, v139
	v_or_b32_e32 v44, s39, v138
	v_or_b32_e32 v45, s39, v137
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v95, s38, v42, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v39, s31 :: v_dual_add_nc_u32 v40, 0, v141
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v81, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v201, s38, v43, 1
	v_add_lshl_u32 v202, s38, v44, 1
	v_add_lshl_u32 v203, s38, v45, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v38, s30 :: v_dual_add_nc_u32 v41, 0, v143
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[42:45], v42, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s1, s35
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v37, s29 :: v_dual_mov_b32 v36, s28
	v_dual_mov_b32 v35, s27 :: v_dual_mov_b32 v34, s26
	v_dual_mov_b32 v33, s25 :: v_dual_mov_b32 v32, s24
	v_or_b32_e32 v46, s39, v136
	v_or_b32_e32 v47, s39, v135
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v82, s3, v97, 1
	v_add_lshl_u32 v83, s3, v168, 1
	v_add_lshl_u32 v84, s3, v172, 1
	v_add_lshl_u32 v85, s3, v100, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v204, s38, v46, 1
	v_add_lshl_u32 v205, s38, v47, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v212, 0x80000000, v82, s0
	v_cndmask_b32_e64 v213, 0x80000000, v83, s0
	v_cndmask_b32_e64 v214, 0x80000000, v84, s0
	v_cndmask_b32_e64 v215, 0x80000000, v85, s0
	v_or_b32_e32 v48, s39, v134
	v_or_b32_e32 v49, s39, v133
	v_or_b32_e32 v57, s39, v129
	v_or_b32_e32 v50, s39, v132
	v_or_b32_e32 v51, s39, v131
	v_or_b32_e32 v52, s39, v130
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v53, s38, v148, 1
	v_add_lshl_u32 v54, s38, v149, 1
	v_add_lshl_u32 v55, s38, v150, 1
	v_add_lshl_u32 v56, s38, v151, 1
	v_add_lshl_u32 v58, s38, v152, 1
	v_add_lshl_u32 v59, s38, v153, 1
	v_add_lshl_u32 v60, s38, v154, 1
	v_add_lshl_u32 v61, s38, v155, 1
	v_add_lshl_u32 v62, s38, v156, 1
	v_add_lshl_u32 v63, s38, v157, 1
	v_add_lshl_u32 v64, s38, v158, 1
	v_add_lshl_u32 v65, s38, v159, 1
	v_add_lshl_u32 v66, s38, v160, 1
	v_add_lshl_u32 v67, s38, v161, 1
	v_add_lshl_u32 v68, s38, v162, 1
	v_add_lshl_u32 v69, s38, v163, 1
	v_add_lshl_u32 v70, s38, v164, 1
	v_add_lshl_u32 v71, s38, v165, 1
	v_add_lshl_u32 v72, s38, v166, 1
	v_add_lshl_u32 v73, s38, v167, 1
	v_add_lshl_u32 v206, s38, v48, 1
	v_add_lshl_u32 v207, s38, v49, 1
	v_add_lshl_u32 v57, s38, v57, 1
	v_add_lshl_u32 v208, s38, v50, 1
	v_add_lshl_u32 v209, s38, v51, 1
	v_add_lshl_u32 v210, s38, v52, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v173.h, 0
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v40, v[42:43]
	ds_store_b64 v144, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[87:90], v41 offset1:1
	ds_load_2addr_stride64_b64 v[91:94], v41 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[193:196], v145 offset1:1
	ds_load_2addr_stride64_b64 v[197:200], v145 offset0:2 offset1:3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v78.h, v173.h
	v_mov_b16_e64 v211.h, v173.h
	v_mov_b16_e64 v77.h, v173.h
	v_mov_b16_e64 v79.h, v173.h
	v_mov_b16_e64 v75.h, v173.h
	v_mov_b16_e64 v49.h, v173.h
	v_mov_b16_e64 v48.h, v173.h
	v_mov_b16_e64 v76.h, v173.h
	v_mov_b16_e64 v51.h, v173.h
	v_mov_b16_e64 v50.h, v173.h
	v_mov_b16_e64 v52.h, v173.h
	v_mov_b16_e64 v80.h, v173.h
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[87:88], v[98:99], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[89:90], v[98:99], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[177:184], v[91:92], v[98:99], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[185:192], v[93:94], v[98:99], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v146 offset1:1
	ds_load_2addr_stride64_b64 v[36:39], v146 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[193:194], v[103:104], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[195:196], v[103:104], v[81:88] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[89:92], v147 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[177:184], v[197:198], v[103:104], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[185:192], v[199:200], v[103:104], v[185:192] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[32:33], v[101:102], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[34:35], v[101:102], v[81:88] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v147 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[177:184], v[36:37], v[101:102], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[185:192], v[38:39], v[101:102], v[185:192] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[89:90], v[105:106], v[40:47] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[36:39], v212, s[20:23], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[81:88], v[91:92], v[105:106], v[81:88] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v89, v40
	v_cvt_f32_i32_e32 v90, v41
	v_cvt_f32_i32_e32 v91, v42
	v_cvt_f32_i32_e32 v92, v43
	v_cvt_f32_i32_e32 v93, v44
	v_cvt_f32_i32_e32 v94, v45
	v_cvt_f32_i32_e32 v193, v46
	v_cvt_f32_i32_e32 v194, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v74, 0, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[177:184], v[32:33], v[105:106], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[185:192], v[34:35], v[105:106], v[185:192] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[32:35], v213, s[20:23], 0 offen
	buffer_load_b128 v[40:43], v214, s[20:23], 0 offen
	buffer_load_b128 v[44:47], v215, s[20:23], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v95, v95, s[44:47], 0 offen
	buffer_load_u16 v198, v201, s[44:47], 0 offen
	buffer_load_u16 v199, v202, s[44:47], 0 offen
	buffer_load_u16 v200, v203, s[44:47], 0 offen
	buffer_load_u16 v201, v204, s[44:47], 0 offen
	buffer_load_u16 v202, v205, s[44:47], 0 offen
	buffer_load_u16 v203, v206, s[44:47], 0 offen
	buffer_load_u16 v204, v207, s[44:47], 0 offen
	buffer_load_u16 v205, v208, s[44:47], 0 offen
	buffer_load_u16 v206, v209, s[44:47], 0 offen
	buffer_load_u16 v207, v210, s[44:47], 0 offen
	buffer_load_u16 v57, v57, s[44:47], 0 offen
	buffer_load_u16 v53, v53, s[44:47], 0 offen
	buffer_load_u16 v54, v54, s[44:47], 0 offen
	buffer_load_u16 v55, v55, s[44:47], 0 offen
	buffer_load_u16 v56, v56, s[44:47], 0 offen
	buffer_load_u16 v58, v58, s[44:47], 0 offen
	buffer_load_u16 v59, v59, s[44:47], 0 offen
	buffer_load_u16 v60, v60, s[44:47], 0 offen
	buffer_load_u16 v61, v61, s[44:47], 0 offen
	buffer_load_u16 v62, v62, s[44:47], 0 offen
	buffer_load_u16 v63, v63, s[44:47], 0 offen
	buffer_load_u16 v64, v64, s[44:47], 0 offen
	buffer_load_u16 v65, v65, s[44:47], 0 offen
	buffer_load_u16 v66, v66, s[44:47], 0 offen
	buffer_load_u16 v67, v67, s[44:47], 0 offen
	buffer_load_u16 v68, v68, s[44:47], 0 offen
	buffer_load_u16 v69, v69, s[44:47], 0 offen
	buffer_load_u16 v70, v70, s[44:47], 0 offen
	buffer_load_u16 v71, v71, s[44:47], 0 offen
	buffer_load_u16 v72, v72, s[44:47], 0 offen
	buffer_load_u16 v73, v73, s[44:47], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v195, v177
	v_cvt_f32_i32_e32 v196, v178
	v_cvt_f32_i32_e32 v197, v179
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	v_mov_b32_e32 v176, v175
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v81, v169, v81
	v_mul_f32_e32 v82, v169, v82
	v_mul_f32_e32 v83, v169, v83
	v_mul_f32_e32 v84, v169, v84
	v_mul_f32_e32 v85, v169, v85
	v_mul_f32_e32 v86, v169, v86
	v_mul_f32_e32 v87, v169, v87
	v_mul_f32_e32 v88, v169, v88
	v_mul_f32_e32 v181, v169, v181
	v_mul_f32_e32 v209, v169, v188
	v_mul_f32_e32 v210, v169, v189
	v_mul_f32_e32 v180, v169, v180
	v_mul_f32_e32 v182, v169, v182
	v_mul_f32_e32 v208, v169, v187
	v_mul_f32_e32 v212, v169, v190
	v_mul_f32_e32 v213, v169, v191
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.h, v173.h
	v_mov_b16_e64 v175.h, v173.h
	v_mov_b16_e64 v179.h, v173.h
	v_mov_b16_e64 v178.h, v173.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v57, 16, v57
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v74, v[36:39]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v169, v89
	v_mul_f32_e32 v37, v169, v90
	v_mul_f32_e32 v38, v169, v91
	v_mul_f32_e32 v39, v169, v92
	v_mul_f32_e32 v89, v169, v93
	v_mul_f32_e32 v90, v169, v94
	v_mul_f32_e32 v91, v169, v193
	v_mul_f32_e32 v92, v169, v194
	v_mul_f32_e32 v93, v169, v195
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v94, v169, v196 :: v_dual_lshlrev_b32 v59, 16, v59
	v_dual_mul_f32 v193, v169, v197 :: v_dual_lshlrev_b32 v54, 16, v54
	v_dual_mul_f32 v195, v169, v184 :: v_dual_lshlrev_b32 v58, 16, v58
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v74, v[32:35] offset:2048
	ds_store_b128 v74, v[40:43] offset:4096
	ds_store_b128 v74, v[44:47] offset:6144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v32, 16, v95
	v_lshlrev_b32_e32 v35, 16, v198
	v_lshlrev_b32_e32 v40, 16, v199
	v_lshlrev_b32_e32 v41, 16, v200
	v_lshlrev_b32_e32 v42, 16, v201
	v_lshlrev_b32_e32 v43, 16, v202
	v_lshlrev_b32_e32 v44, 16, v203
	v_lshlrev_b32_e32 v45, 16, v204
	v_lshlrev_b32_e32 v46, 16, v205
	v_lshlrev_b32_e32 v47, 16, v206
	v_lshlrev_b32_e32 v74, 16, v207
	v_lshlrev_b32_e32 v55, 16, v55
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v35, v37, v35 :: v_dual_lshlrev_b32 v202, 16, v69
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v194, v169, v183 :: v_dual_lshlrev_b32 v203, 16, v70
	v_dual_mul_f32 v196, v169, v185 :: v_dual_lshlrev_b32 v95, 16, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v199, 16, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v197, v169, v186 :: v_dual_lshlrev_b32 v60, 16, v60
	v_dual_mul_f32 v214, v169, v192 :: v_dual_mul_f32 v37, v39, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v61, 16, v61
	v_lshlrev_b32_e32 v62, 16, v62
	v_lshlrev_b32_e32 v63, 16, v63
	v_lshlrev_b32_e32 v198, 16, v65
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v41, v92, v45 :: v_dual_lshlrev_b32 v200, 16, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v201, 16, v68
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v45, v84, v57 :: v_dual_lshlrev_b32 v204, 16, v71
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v39, v90, v43 :: v_dual_lshlrev_b32 v72, 16, v72
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v32, v36, v32 :: v_dual_lshlrev_b32 v73, 16, v73
	v_mul_f32_e32 v43, v82, v47
	v_mul_f32_e32 v36, v38, v40
	v_mul_f32_e32 v38, v89, v42
	v_dual_mul_f32 v40, v91, v44 :: v_dual_mul_f32 v47, v86, v54
	v_dual_mul_f32 v42, v81, v46 :: v_dual_mul_f32 v81, v196, v199
	v_mul_f32_e32 v44, v83, v74
	v_dual_mul_f32 v46, v85, v53 :: v_dual_mul_f32 v85, v210, v203
	v_dual_mul_f32 v53, v87, v55 :: v_dual_mul_f32 v54, v88, v56
	v_dual_mul_f32 v55, v93, v58 :: v_dual_mul_f32 v56, v94, v59
	v_mul_f32_e32 v84, v209, v202
	v_dual_mul_f32 v59, v193, v60 :: v_dual_mul_f32 v60, v180, v61
	v_mul_f32_e32 v87, v213, v72
	v_dual_mul_f32 v61, v181, v62 :: v_dual_mul_f32 v62, v182, v63
	v_mul_f32_e32 v83, v208, v201
	v_mul_f32_e32 v63, v194, v95
	v_mul_f32_e32 v94, v214, v73
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v32, s2
	v_cndmask_b32_e64 v180, 0xff800000, v35, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v82, v197, v200
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v199, 0xff800000, v38, s2
	v_cndmask_b32_e64 v39, 0xff800000, v39, s2
	v_cndmask_b32_e64 v224, 0xff800000, v43, s2
	v_cndmask_b32_e64 v225, 0xff800000, v44, s2
	v_cndmask_b32_e64 v226, 0xff800000, v45, s2
	v_cndmask_b32_e64 v227, 0xff800000, v46, s2
	v_cndmask_b32_e64 v228, 0xff800000, v47, s2
	v_cndmask_b32_e64 v53, 0xff800000, v53, s2
	v_cndmask_b32_e64 v54, 0xff800000, v54, s2
	v_cndmask_b32_e64 v57, 0xff800000, v55, s2
	v_cndmask_b32_e64 v58, 0xff800000, v56, s2
	v_cndmask_b32_e64 v90, 0xff800000, v84, s2
	v_cndmask_b32_e64 v91, 0xff800000, v85, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v74, v195, v198
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v198, 0xff800000, v37, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v86, v212, v204
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, 0xff800000, v36, s2
	v_cndmask_b32_e64 v40, 0xff800000, v40, s2
	v_cndmask_b32_e64 v41, 0xff800000, v41, s2
	v_cndmask_b32_e64 v223, 0xff800000, v42, s2
	v_cndmask_b32_e64 v59, 0xff800000, v59, s2
	v_cndmask_b32_e64 v60, 0xff800000, v60, s2
	v_cndmask_b32_e64 v61, 0xff800000, v61, s2
	v_cndmask_b32_e64 v62, 0xff800000, v62, s2
	v_cndmask_b32_e64 v63, 0xff800000, v63, s2
	v_cndmask_b32_e64 v73, 0xff800000, v81, s2
	v_cndmask_b32_e64 v88, 0xff800000, v82, s2
	v_cndmask_b32_e64 v89, 0xff800000, v83, s2
	v_cndmask_b32_e64 v93, 0xff800000, v87, s2
	v_cndmask_b32_e64 v94, 0xff800000, v94, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v32, v95, v180
	v_max3_f32 v35, v198, v199, v39
	v_max3_f32 v36, v224, v225, v226
	v_max3_f32 v37, v227, v228, v53
	v_max3_f32 v38, v54, v57, v58
	v_max_f32_e32 v45, v90, v91
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v74, s2
	v_cndmask_b32_e64 v92, 0xff800000, v86, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v59, v60, v61
	v_max3_f32 v44, v73, v88, v89
	v_max_f32_e32 v46, v93, v94
	v_max3_f32 v43, v62, v63, v72
	v_max3_f32 v47, v40, v41, v223
	v_max3_f32 v55, v32, v182, v35
	v_max3_f32 v56, v36, v37, v38
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v43, v44
	v_max3_f32 v43, v45, v92, v46
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v55, v47, v56
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v34, v142 offset:608
	ds_load_u16_d16 v33, v142 offset:352
	ds_load_u16_d16 v66, v142 offset:512
	ds_load_u16_d16 v67, v142 offset:768
	ds_load_u16_d16 v186, v142 offset:832
	ds_load_u16_d16 v68, v142 offset:1024
	ds_load_u16_d16 v187, v142 offset:1088
	ds_load_u16_d16 v69, v142 offset:1280
	ds_load_u16_d16 v188, v142 offset:1344
	ds_load_u16_d16 v70, v142 offset:1536
	ds_load_u16_d16 v189, v142 offset:1600
	ds_load_u16_d16 v71, v142 offset:1792
	ds_load_u16_d16 v190, v142 offset:1856
	ds_load_u16_d16 v192, v142 offset:288
	ds_load_u16_d16 v65, v142 offset:256
	ds_load_u16_d16 v64, v142
	ds_load_u16_d16 v185, v142 offset:576
	ds_load_u16_d16 v191, v142 offset:32
	ds_load_u16_d16 v183, v142 offset:64
	ds_load_u16_d16 v184, v142 offset:320
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v44, v42, v43
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v33, v142 offset:480
	ds_load_u16_d16 v32, v142 offset:96
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v185, v142 offset:704
	ds_load_u16_d16 v193, v142 offset:544
	ds_load_u16_d16_hi v189, v142 offset:1728
	ds_load_u16_d16_hi v71, v142 offset:1920
	ds_load_u16_d16_hi v190, v142 offset:1984
	ds_load_u16_d16_hi v67, v142 offset:896
	ds_load_u16_d16_hi v186, v142 offset:960
	ds_load_u16_d16 v35, v142 offset:864
	ds_load_u16_d16 v194, v142 offset:800
	ds_load_u16_d16_hi v68, v142 offset:1152
	ds_load_u16_d16_hi v187, v142 offset:1216
	ds_load_u16_d16 v36, v142 offset:1120
	ds_load_u16_d16 v195, v142 offset:1056
	ds_load_u16_d16_hi v69, v142 offset:1408
	ds_load_u16_d16_hi v188, v142 offset:1472
	ds_load_u16_d16 v37, v142 offset:1376
	ds_load_u16_d16 v196, v142 offset:1312
	ds_load_u16_d16_hi v70, v142 offset:1664
	ds_load_u16_d16 v38, v142 offset:1632
	ds_load_u16_d16 v197, v142 offset:1568
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v181, v174, v42, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v95, v181
	v_sub_f32_e32 v43, v180, v181
	v_sub_f32_e32 v45, v198, v181
	v_sub_f32_e32 v44, v182, v181
	v_sub_f32_e32 v39, v39, v181
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v42
	v_exp_f32_e32 v43, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v181
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v199, v181
	v_sub_f32_e32 v41, v41, v181
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v44
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v56, v46
	v_exp_f32_e32 v41, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v43, s2
	v_cndmask_b32_e64 v43, 0, v47, s2
	v_cndmask_b32_e64 v44, 0, v45, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v63, v181
	v_sub_f32_e32 v73, v73, v181
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v173.l, v42.h
	v_mov_b16_e64 v211.l, v43.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v55, s2
	v_cndmask_b32_e64 v46, 0, v39, s2
	v_cndmask_b32_e64 v182, 0, v40, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v39, 1, v173
	v_and_b32_e32 v40, 1, v211
	v_mov_b16_e64 v173.l, v44.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v56, s2
	v_cndmask_b32_e64 v95, 0, v41, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v43, v43
	v_mov_b16_e32 v77.l, v45.h
	v_add3_u32 v40, v43, v40, 0x7fff
	v_and_b32_e32 v74, 1, v173
	v_mov_b16_e64 v173.l, v46.h
	v_add3_u32 v39, v42, v39, 0x7fff
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e64 v79.l, v182.h
	v_and_b32_e32 v41, 1, v77
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s3
	v_and_b32_e32 v40, 1, v173
	v_mov_b16_e64 v173.l, v95.h
	v_cmp_o_f32_e64 s4, v44, v44
	v_cmp_o_f32_e64 s5, v45, v45
	v_and_b32_e32 v55, 1, v78
	v_and_b32_e32 v56, 1, v79
	v_add3_u32 v41, v45, v41, 0x7fff
	v_add3_u32 v74, v44, v74, 0x7fff
	v_and_b32_e32 v77, 1, v173
	v_cmp_o_f32_e64 s1, v42, v42
	v_cmp_o_f32_e64 s6, v46, v46
	v_cmp_o_f32_e64 s7, v47, v47
	v_cmp_o_f32_e64 s8, v95, v95
	v_cmp_o_f32_e64 s9, v182, v182
	v_add3_u32 v55, v47, v55, 0x7fff
	v_add3_u32 v56, v182, v56, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s5
	v_add3_u32 v40, v46, v40, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v74.h, s4
	v_add3_u32 v74, v95, v77, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s1
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s7
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s9
	v_cndmask_b16 v55.h, 0x7fff, v40.h, s6
	v_permlanex16_b32 v40, v41, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v56.h, 0x7fff, v74.h, s8
	v_permlanex16_b32 v78, v39, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v174
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v89, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v201, v40, v41, v170
	v_perm_b32 v202, v40, v41, v171
	v_permlanex16_b32 v40, v56, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v199, v78, v39, v170
	v_perm_b32 v200, v78, v39, v171
	v_permlanex16_b32 v39, v55, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v91, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v205, v40, v56, v170
	v_perm_b32 v206, v40, v56, v171
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v40, v174, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v203, v39, v55, v170
	v_perm_b32 v204, v39, v55, v171
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v207, v142 offset:2048
	ds_load_u16_d16 v39, v142 offset:1888
	ds_load_u16_d16 v198, v142 offset:1824
	ds_load_u16_d16_hi v66, v142 offset:640
	ds_load_u16_d16_hi v65, v142 offset:384
	ds_load_u16_d16 v208, v142 offset:2304
	ds_load_u16_d16_hi v64, v142 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v191, v142 offset:160
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v183, v142 offset:192
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v32, v142 offset:224
	ds_load_u16_d16_hi v192, v142 offset:416
	ds_load_u16_d16_hi v184, v142 offset:448
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v193, v142 offset:672
	ds_load_u16_d16_hi v34, v142 offset:736
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v194, v142 offset:928
	ds_load_u16_d16_hi v35, v142 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v195, v142 offset:1184
	ds_load_u16_d16_hi v36, v142 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v196, v142 offset:1440
	ds_load_u16_d16_hi v37, v142 offset:1504
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v197, v142 offset:1696
	ds_load_u16_d16_hi v38, v142 offset:1760
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v198, v142 offset:1952
	ds_load_u16_d16_hi v39, v142 offset:2016
	ds_load_u16_d16_hi v207, v142 offset:2176
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v40, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v181
	v_sub_f32_e32 v59, v59, v181
	v_sub_f32_e32 v61, v61, v181
	v_sub_f32_e32 v41, v54, v181
	v_sub_f32_e32 v93, v93, v181
	v_sub_f32_e32 v58, v58, v181
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v56, v142 offset:4128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v180, 0, v40, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v53, v181
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v89, v89
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v180
	v_mul_f32_e32 v1, v1, v180
	v_mul_f32_e32 v2, v2, v180
	v_mul_f32_e32 v3, v3, v180
	v_mul_f32_e32 v4, v4, v180
	v_mul_f32_e32 v5, v5, v180
	v_mul_f32_e32 v6, v6, v180
	v_mul_f32_e32 v7, v7, v180
	v_mul_f32_e32 v11, v11, v180
	v_mul_f32_e32 v30, v30, v180
	v_mul_f32_e32 v8, v8, v180
	v_mul_f32_e32 v9, v9, v180
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[199:206], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v225, v181
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v180
	v_mul_f32_e32 v12, v12, v180
	v_dual_mul_f32 v13, v13, v180 :: v_dual_sub_f32 v34, v223, v181
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v180
	v_mul_f32_e32 v15, v15, v180
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v224, v181
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v180
	v_mul_f32_e32 v17, v17, v180
	v_dual_mul_f32 v18, v18, v180 :: v_dual_sub_f32 v39, v228, v181
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[183:190], v[199:206], v[8:15]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v36, s2
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v180
	v_mul_f32_e32 v21, v21, v180
	v_mul_f32_e32 v22, v22, v180
	v_mul_f32_e32 v23, v23, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v49.l, v184.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v180
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v227, v181
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v35, s2
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v28, v28, v180 :: v_dual_sub_f32 v37, v226, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v35, 1, v49
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[191:198], v[199:206], v[16:23]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v191, v142 offset:2368
	ds_load_u16_d16 v209, v142 offset:2560
	ds_load_u16_d16 v192, v142 offset:2624
	ds_load_u16_d16 v210, v142 offset:2816
	ds_load_u16_d16 v193, v142 offset:2880
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v34, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v173.l, v183.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v180
	v_mul_f32_e32 v25, v25, v180
	v_mul_f32_e32 v26, v26, v180
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v48.l, v174.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v180
	v_mul_f32_e32 v29, v29, v180
	v_mul_f32_e32 v31, v31, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v186, 0, v38, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v34, 1, v48
	v_and_b32_e32 v38, 1, v173
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[64:71], v[199:206], v[24:31]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v215, v142 offset:2144
	ds_load_u16_d16 v190, v142 offset:2112
	ds_load_u16_d16 v211, v142 offset:3072
	ds_load_u16_d16 v194, v142 offset:3136
	ds_load_u16_d16 v212, v142 offset:3328
	ds_load_u16_d16 v195, v142 offset:3392
	ds_load_u16_d16 v213, v142 offset:3584
	ds_load_u16_d16 v196, v142 offset:3648
	ds_load_u16_d16 v214, v142 offset:3840
	ds_load_u16_d16 v197, v142 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v191, v142 offset:2496
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v209, v142 offset:2688
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v192, v142 offset:2752
	ds_load_u16_d16 v217, v142 offset:2656
	ds_load_u16_d16 v66, v142 offset:2592
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v210, v142 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v193, v142 offset:3008
	ds_load_u16_d16 v218, v142 offset:2912
	ds_load_u16_d16 v67, v142 offset:2848
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v183, v183
	v_cmp_o_f32_e64 s3, v174, v174
	v_add3_u32 v34, v174, v34, 0x7fff
	v_add3_u32 v38, v183, v38, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v37, s2
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v64, v142 offset:2080
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v39, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v173.l, v185.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v32, v142 offset:4096
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v211, v142 offset:3200
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v194, v142 offset:3264
	ds_load_u16_d16 v219, v142 offset:3168
	ds_load_u16_d16 v68, v142 offset:3104
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v212, v142 offset:3456
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v195, v142 offset:3520
	ds_load_u16_d16 v220, v142 offset:3424
	ds_load_u16_d16 v69, v142 offset:3360
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v213, v142 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v196, v142 offset:3776
	ds_load_u16_d16 v221, v142 offset:3680
	ds_load_u16_d16 v70, v142 offset:3616
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v214, v142 offset:3968
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v197, v142 offset:4032
	ds_load_u16_d16 v222, v142 offset:3936
	ds_load_u16_d16 v71, v142 offset:3872
	ds_load_u16_d16 v33, v142 offset:4352
	ds_load_u16_d16_hi v208, v142 offset:2432
	ds_load_u16_d16 v216, v142 offset:2400
	ds_load_u16_d16 v65, v142 offset:2336
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v41, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v34, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v188, 0, v40, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v185, v185
	v_cmp_o_f32_e64 s5, v184, v184
	v_mov_b16_e64 v75.l, v186.h
	v_perm_b32 v198, v38, v34, v170
	v_perm_b32 v199, v38, v34, v171
	v_and_b32_e32 v34, 1, v173
	v_mov_b16_e64 v173.l, v187.h
	v_mov_b16_e64 v76.l, v188.h
	v_add3_u32 v35, v184, v35, 0x7fff
	v_and_b32_e32 v36, 1, v75
	v_add3_u32 v34, v185, v34, 0x7fff
	v_and_b32_e32 v38, 1, v173
	v_mov_b16_e64 v173.l, v189.h
	v_and_b32_e32 v37, 1, v76
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s5
	v_cndmask_b16 v35.h, 0x7fff, v34.h, s4
	v_cmp_o_f32_e64 s6, v187, v187
	v_and_b32_e32 v34, 1, v173
	v_cmp_o_f32_e64 s7, v186, v186
	v_cmp_o_f32_e64 s8, v189, v189
	v_cmp_o_f32_e64 s9, v188, v188
	v_add3_u32 v36, v186, v36, 0x7fff
	v_add3_u32 v37, v188, v37, 0x7fff
	v_add3_u32 v38, v187, v38, 0x7fff
	v_add3_u32 v34, v189, v34, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v32, v142 offset:4224
	ds_load_u16_d16_hi v64, v142 offset:2208
	ds_load_u16_d16_hi v215, v142 offset:2272
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v65, v142 offset:2464
	ds_load_u16_d16_hi v216, v142 offset:2528
	ds_load_u16_d16_hi v66, v142 offset:2720
	ds_load_u16_d16_hi v217, v142 offset:2784
	ds_load_u16_d16_hi v67, v142 offset:2976
	ds_load_u16_d16_hi v218, v142 offset:3040
	ds_load_u16_d16_hi v68, v142 offset:3232
	ds_load_u16_d16_hi v219, v142 offset:3296
	ds_load_u16_d16_hi v69, v142 offset:3488
	ds_load_u16_d16_hi v220, v142 offset:3552
	ds_load_u16_d16_hi v70, v142 offset:3744
	ds_load_u16_d16_hi v221, v142 offset:3808
	ds_load_u16_d16_hi v71, v142 offset:4000
	ds_load_u16_d16_hi v222, v142 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s7
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s9
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s6
	v_permlanex16_b32 v38, v35, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v37.h, 0x7fff, v34.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s2
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v34, v36, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v200, v38, v35, v170
	v_perm_b32 v201, v38, v35, v171
	v_permlanex16_b32 v35, v37, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v202, v34, v36, v170
	v_perm_b32 v203, v34, v36, v171
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v204, v35, v37, v170
	v_perm_b32 v205, v35, v37, v171
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v91, v91
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v40, v142 offset:6208
	ds_load_u16_d16 v41, v142 offset:6464
	ds_load_u16_d16 v48, v142 offset:6240
	ds_load_u16_d16 v75, v142 offset:6912
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[64:71], v[198:205], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v64, v142 offset:4160
	ds_load_u16_d16 v65, v142 offset:4416
	ds_load_u16_d16 v34, v142 offset:4608
	ds_load_u16_d16 v66, v142 offset:4672
	ds_load_u16_d16 v35, v142 offset:4864
	ds_load_u16_d16 v67, v142 offset:4928
	ds_load_u16_d16 v36, v142 offset:5120
	ds_load_u16_d16 v68, v142 offset:5184
	ds_load_u16_d16 v37, v142 offset:5376
	ds_load_u16_d16 v69, v142 offset:5440
	ds_load_u16_d16 v38, v142 offset:5632
	ds_load_u16_d16 v70, v142 offset:5696
	ds_load_u16_d16 v39, v142 offset:5888
	ds_load_u16_d16 v71, v142 offset:5952
	ds_load_u16_d16_hi v190, v142 offset:2240
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[207:214], v[198:205], v[24:31]
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[215:222], v[198:205], v[0:7]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v50.l, v57.h
	v_cmp_o_f32_e64 s3, v57, v57
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[190:197], v[198:205], v[8:15]
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v200, 0, v58, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v60, v60, v181
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v202, 0, v73, s2
	v_cndmask_b32_e64 v203, 0, v89, s2
.Ltmp13:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v199, v47, v46
	v_add_f32_e32 v73, v57, v200
.Ltmp14:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v175.l, v202.h
	v_mov_b16_e64 v177.l, v203.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v94, v94, v181
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v59, s2
	v_cndmask_b32_e64 v59, 0, v61, s2
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v61, v174, v183
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v177, 1, v177
	v_and_b32_e32 v175, 1, v175
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v196, 0, v60, s2
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v182, v95
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v181
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v205, 0, v93, s2
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v197, v43, v42
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.l, v58.h
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v183, v199, v60
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.l, v205.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v190, 0, v94, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v181
	v_dual_sub_f32 v88, v88, v181 :: v_dual_and_b32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v179, 1, v179
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v201, 0, v63, s2
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v63, v186, v187
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v195, 0, v62, s2
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v184, v185
	v_add_f32_e32 v198, v45, v44
.Ltmp26:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v204, 0, v91, s2
	v_dual_mov_b32 v174, v181 :: v_dual_add_f32 v89, v59, v195
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v184, v61, v62
	v_add_f32_e32 v61, v205, v190
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v197, v198
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v193, 0, v88, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v173.l, v200.h
	v_cmp_o_f32_e64 s13, v202, v202
	v_add3_u32 v175, v202, v175, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v82, v142 offset:6688
	ds_load_u16_d16 v43, v142 offset:6976
	ds_load_u16_d16 v76, v142 offset:7168
	ds_load_u16_d16 v83, v142 offset:6944
	ds_load_u16_d16 v44, v142 offset:7232
	ds_load_u16_d16 v77, v142 offset:7424
	ds_load_u16_d16 v84, v142 offset:7200
	ds_load_u16_d16 v45, v142 offset:7488
	ds_load_u16_d16 v74, v142 offset:6656
	ds_load_u16_d16 v81, v142 offset:6432
	ds_load_u16_d16 v42, v142 offset:6720
	ds_load_u16_d16 v49, v142 offset:6496
	ds_load_u16_d16 v78, v142 offset:7680
	ds_load_u16_d16 v85, v142 offset:7456
	ds_load_u16_d16 v46, v142 offset:7744
	ds_load_u16_d16 v53, v142 offset:7520
	ds_load_u16_d16 v79, v142 offset:7936
	ds_load_u16_d16 v86, v142 offset:7712
	ds_load_u16_d16 v47, v142 offset:8000
	ds_load_u16_d16 v54, v142 offset:7776
	ds_load_u16_d16 v87, v142 offset:7968
	ds_load_u16_d16 v55, v142 offset:8032
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v202, v193
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.l, v59.h
	v_add3_u32 v51, v58, v51, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v194, 0, v72, s2
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v188, v189
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v90, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v52, 1, v52
	v_cmp_o_f32_e64 s4, v58, v58
	v_cmp_o_f32_e64 s1, v59, v59
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v185, v63, v72
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v90
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v52, v59, v52, 0x7fff
	v_mov_b16_e64 v178.l, v204.h
	v_cmp_o_f32_e64 s7, v200, v200
	v_cmp_o_f32_e64 s15, v203, v203
	v_add3_u32 v177, v203, v177, 0x7fff
	v_mov_b16_e64 v80.l, v201.h
	v_and_b32_e32 v178, 1, v178
	v_cmp_o_f32_e64 s8, v196, v196
	v_cmp_o_f32_e64 s16, v204, v204
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v192, 0, v90, s2
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v201, v194
.Ltmp38:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v92, v92, v181 :: v_dual_add_f32 v181, v182, v183
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v184, v185
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v178, v204, v178, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v187, v89, v90
.Ltmp42:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v197.l, 0x7fff, v177.h, s15
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v181, v181, v182 :: v_dual_and_b32 v80, 1, v80
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v195, v195
	v_cmp_o_f32_e64 s17, v205, v205
	v_add3_u32 v179, v205, v179, 0x7fff
	v_cndmask_b16 v178.l, 0x7fff, v51.h, s4
	v_cndmask_b16 v198.l, 0x7fff, v178.h, s16
	v_add3_u32 v80, v201, v80, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v191, 0, v92, s2
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v203, v192
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v194, v194
	v_cmp_o_f32_e64 s11, v201, v201
	v_cndmask_b16 v179.l, 0x7fff, v52.h, s1
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v204, v191
	v_add_f32_e32 v88, v58, v196
	v_add_f32_e32 v188, v91, v92
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v199.l, 0x7fff, v179.h, s17
	v_cmp_o_f32_e64 s12, v193, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v189, v60, v61 :: v_dual_add_f32 v186, v73, v88
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v192, v192
	v_cmp_o_f32_e64 s6, v191, v191
	v_cmp_o_f32_e64 s5, v190, v190
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v184, v188, v189 :: v_dual_add_f32 v183, v186, v187
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v189.l, 0x7fff, v175.h, s13
	v_cndmask_b16 v188.l, 0x7fff, v80.h, s11
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s1, s38, 64
	s_cmpk_lt_u32 s38, 0x7c0
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v183, v184
	s_mov_b32 s38, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v175, v181, v182
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v181, v175, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v175, v175, v181 :: v_dual_and_b32 v50, 1, v50
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v181, 1, v173
	v_mov_b16_e64 v173.l, v196.h
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v175, v176, v180
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v57, v50, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v88, v142 offset:4192
	ds_load_u16_d16_hi v64, v142 offset:4288
	ds_load_u16_d16_hi v65, v142 offset:4544
	ds_load_u16_d16_hi v34, v142 offset:4736
	ds_load_u16_d16_hi v66, v142 offset:4800
	ds_load_u16_d16 v90, v142 offset:4704
	ds_load_u16_d16 v58, v142 offset:4640
	ds_load_u16_d16_hi v35, v142 offset:4992
	ds_load_u16_d16_hi v67, v142 offset:5056
	ds_load_u16_d16 v91, v142 offset:4960
	ds_load_u16_d16 v59, v142 offset:4896
	ds_load_u16_d16_hi v36, v142 offset:5248
	ds_load_u16_d16_hi v68, v142 offset:5312
	ds_load_u16_d16 v92, v142 offset:5216
	ds_load_u16_d16 v60, v142 offset:5152
	ds_load_u16_d16_hi v37, v142 offset:5504
	ds_load_u16_d16_hi v69, v142 offset:5568
	ds_load_u16_d16 v93, v142 offset:5472
	ds_load_u16_d16 v61, v142 offset:5408
	ds_load_u16_d16_hi v38, v142 offset:5760
	ds_load_u16_d16_hi v70, v142 offset:5824
	ds_load_u16_d16 v94, v142 offset:5728
	ds_load_u16_d16 v62, v142 offset:5664
	ds_load_u16_d16_hi v39, v142 offset:6016
	ds_load_u16_d16_hi v71, v142 offset:6080
	ds_load_u16_d16 v72, v142 offset:6144
	ds_load_u16_d16 v95, v142 offset:5984
	ds_load_u16_d16 v63, v142 offset:5920
	ds_load_u16_d16_hi v40, v142 offset:6336
	ds_load_u16_d16 v73, v142 offset:6400
	ds_load_u16_d16_hi v41, v142 offset:6592
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v74, v142 offset:6784
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v42, v142 offset:6848
	ds_load_u16_d16 v50, v142 offset:6752
	ds_load_u16_d16_hi v75, v142 offset:7040
	ds_load_u16_d16_hi v43, v142 offset:7104
	ds_load_u16_d16 v51, v142 offset:7008
	ds_load_u16_d16_hi v76, v142 offset:7296
	ds_load_u16_d16_hi v44, v142 offset:7360
	ds_load_u16_d16 v52, v142 offset:7264
	ds_load_u16_d16_hi v45, v142 offset:7616
	ds_load_u16_d16_hi v77, v142 offset:7552
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v46, v142 offset:7872
	ds_load_u16_d16_hi v78, v142 offset:7808
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v47, v142 offset:8128
	ds_load_u16_d16_hi v79, v142 offset:8064
	ds_load_u16_d16_hi v33, v142 offset:4480
	ds_load_u16_d16 v89, v142 offset:4448
	ds_load_u16_d16 v57, v142 offset:4384
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v181, v200, v181, 0x7fff
	v_and_b32_e32 v182, 1, v173
	v_mov_b16_e64 v173.l, v195.h
	s_waitcnt lgkmcnt(15)
	v_cndmask_b16 v177.l, 0x7fff, v50.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v56, v142 offset:4256
	ds_load_u16_d16_hi v88, v142 offset:4320
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v57, v142 offset:4512
	ds_load_u16_d16_hi v89, v142 offset:4576
	ds_load_u16_d16_hi v58, v142 offset:4768
	ds_load_u16_d16_hi v90, v142 offset:4832
	ds_load_u16_d16_hi v59, v142 offset:5024
	ds_load_u16_d16_hi v91, v142 offset:5088
	ds_load_u16_d16_hi v60, v142 offset:5280
	ds_load_u16_d16_hi v92, v142 offset:5344
	ds_load_u16_d16_hi v61, v142 offset:5536
	ds_load_u16_d16_hi v93, v142 offset:5600
	ds_load_u16_d16_hi v62, v142 offset:5792
	ds_load_u16_d16_hi v94, v142 offset:5856
	ds_load_u16_d16_hi v63, v142 offset:6048
	ds_load_u16_d16_hi v95, v142 offset:6112
	ds_load_u16_d16 v80, v142 offset:6176
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v177.h, 0x7fff, v181.h, s7
	v_add3_u32 v181, v196, v182, 0x7fff
	v_and_b32_e32 v182, 1, v173
	v_mov_b16_e64 v173.l, v194.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v72, v142 offset:6272
	ds_load_u16_d16_hi v73, v142 offset:6528
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v183, v177, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v178.h, 0x7fff, v181.h, s8
	v_add3_u32 v184, v195, v182, 0x7fff
	v_and_b32_e32 v185, 1, v173
	v_mov_b16_e64 v173.l, v193.h
	v_perm_b32 v181, v183, v177, v170
	v_perm_b32 v182, v183, v177, v171
	v_permlanex16_b32 v177, v178, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v179.h, 0x7fff, v184.h, s9
	v_add3_u32 v185, v194, v185, 0x7fff
	v_and_b32_e32 v186, 1, v173
	v_mov_b16_e64 v173.l, v192.h
	v_perm_b32 v183, v177, v178, v170
	v_perm_b32 v184, v177, v178, v171
	v_permlanex16_b32 v177, v179, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v188.h, 0x7fff, v185.h, s10
	v_and_b32_e32 v178, 1, v173
	v_mov_b16_e64 v173.l, v191.h
	v_add3_u32 v187, v193, v186, 0x7fff
	v_perm_b32 v185, v177, v179, v170
	v_perm_b32 v186, v177, v179, v171
	v_permlanex16_b32 v177, v188, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v179, 1, v173
	v_mov_b16_e64 v173.l, v190.h
	v_cndmask_b16 v189.h, 0x7fff, v187.h, s12
	v_add3_u32 v178, v192, v178, 0x7fff
	v_perm_b32 v187, v177, v188, v170
	v_perm_b32 v188, v177, v188, v171
	v_and_b32_e32 v173, 1, v173
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v80, v142 offset:6304
	ds_load_u16_d16_hi v48, v142 offset:6368
	ds_load_u16_d16_hi v81, v142 offset:6560
	ds_load_u16_d16_hi v49, v142 offset:6624
	ds_load_u16_d16_hi v82, v142 offset:6816
	ds_load_u16_d16_hi v50, v142 offset:6880
	ds_load_u16_d16_hi v83, v142 offset:7072
	ds_load_u16_d16_hi v51, v142 offset:7136
	ds_load_u16_d16_hi v84, v142 offset:7328
	ds_load_u16_d16_hi v52, v142 offset:7392
	ds_load_u16_d16_hi v85, v142 offset:7584
	ds_load_u16_d16_hi v53, v142 offset:7648
	ds_load_u16_d16_hi v86, v142 offset:7840
	ds_load_u16_d16_hi v54, v142 offset:7904
	ds_load_u16_d16_hi v87, v142 offset:8096
	ds_load_u16_d16_hi v55, v142 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v197.h, 0x7fff, v178.h, s14
	v_add3_u32 v178, v191, v179, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[181:188], v[24:31]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v190, v173, 0x7fff
	v_permlanex16_b32 v177, v189, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v197, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v198.h, 0x7fff, v178.h, s6
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[56:63], v[181:188], v[16:23]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v199.h, 0x7fff, v34.h, s5
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[64:71], v[181:188], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[88:95], v[181:188], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v198, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v32, v177, v189, v170
	v_permlanex16_b32 v39, v199, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v177, v189, v171
	v_perm_b32 v34, v35, v197, v170
	v_perm_b32 v35, v35, v197, v171
	v_perm_b32 v36, v37, v198, v170
	v_perm_b32 v37, v37, v198, v171
	v_perm_b32 v38, v39, v199, v170
	v_perm_b32 v39, v39, v199, v171
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[72:79], v[32:39], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[80:87], v[32:39], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[40:47], v[32:39], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[48:55], v[32:39], v[0:7]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v175, v175, v24
	v_div_scale_f32 v33, null, v175, v175, v25
	v_div_scale_f32 v34, null, v175, v175, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v32
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v24, v175, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v25, v175, v25
	v_div_scale_f32 v42, null, v175, v175, v27
	v_div_scale_f32 v48, s3, v27, v175, v27
	v_fma_f32 v40, -v32, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s37, s37, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s39, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_div_scale_f32 v40, s1, v26, v175, v26
	v_fmac_f32_e32 v37, v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_rcp_f32_e32 v41, v42
	s_mov_b32 s38, 0x7ffffffe
	v_fma_f32 v46, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v33, v44, v39
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v175, v175, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v42, v41, 1.0
	v_fma_f32 v32, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v44, v39
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v175, v175, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v35, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v175
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v44
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v44, null, v175, v175, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v175, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v24, v32, v175, v24
	v_fmac_f32_e32 v38, v36, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v36, null, v175, v175, v30
	v_fmac_f32_e32 v41, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v34, v45, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v50, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v34, v45, v40
	v_fma_f32 v34, -v39, v43, 1.0
	v_div_fmas_f32 v33, v33, v37, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v175, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v36, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v48, v41 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v32, -v42, v35, v48
	v_fma_f32 v45, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v31, v175, v31
	v_fmac_f32_e32 v35, v32, v41
	v_div_scale_f32 v32, s4, v28, v175, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v42, v35, v48
	v_mul_f32_e32 v40, v32, v38
	v_div_scale_f32 v42, s1, v29, v175, v29
	v_div_scale_f32 v48, null, v175, v175, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v42, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v175, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v175, v175, v16
	v_fma_f32 v33, -v39, v41, v42
	v_div_scale_f32 v35, s3, v30, v175, v30
	v_fma_f32 v32, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v37
	v_fmac_f32_e32 v41, v33, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v40
	v_mul_f32_e32 v40, v45, v47
	v_fma_f32 v38, -v39, v41, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v28, v32, v175, v28
	v_fma_f32 v42, -v37, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v42, v46
	v_div_fmas_f32 v38, v38, v43, v41
	v_fma_f32 v41, -v44, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v16, v175, v16
	v_div_scale_f32 v43, null, v175, v175, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v41, v47
	v_div_scale_f32 v41, s3, v17, v175, v17
	v_mul_f32_e32 v33, v35, v34
	v_div_fixup_f32 v29, v38, v175, v29
	v_div_scale_f32 v38, null, v175, v175, v18
	v_fma_f32 v39, -v36, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v39, v34
	v_rcp_f32_e32 v39, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v36, v33, v35
	v_div_fmas_f32 v32, v32, v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v48, v39, 1.0
	v_fma_f32 v33, -v44, v40, v45
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v175, v175, v21
	v_fmac_f32_e32 v39, v36, v39
	v_mul_f32_e32 v35, v42, v46
	v_rcp_f32_e32 v36, v38
	v_div_fixup_f32 v30, v32, v175, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v37, v35, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v34, v46
	v_rcp_f32_e32 v34, v43
	v_fma_f32 v44, -v38, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v37, v35, v42
	v_div_scale_f32 v37, s4, v18, v175, v18
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, null, v175, v175, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v43, v34, 1.0
	v_fmac_f32_e32 v34, v42, v34
	v_div_fmas_f32 v33, v33, v47, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, s1, v19, v175, v19
	v_div_fmas_f32 v32, v32, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v33, v175, v31
	v_rcp_f32_e32 v35, v44
	v_mul_f32_e32 v46, v42, v34
	v_mul_f32_e32 v40, v41, v39
	v_div_fixup_f32 v16, v32, v175, v16
	v_rcp_f32_e32 v47, v45
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v48, v40, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v33, v39
	v_mul_f32_e32 v33, v37, v36
	v_fma_f32 v32, -v48, v40, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v38, v33, v37
	v_fma_f32 v48, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v36
	v_fma_f32 v39, -v43, v46, v42
	v_fmac_f32_e32 v35, v48, v35
	v_div_scale_f32 v40, s3, v20, v175, v20
	v_fma_f32 v41, -v45, v47, 1.0
	v_div_fixup_f32 v17, v32, v175, v17
	v_fma_f32 v32, -v38, v33, v37
	v_fmac_f32_e32 v46, v39, v34
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v40, v35
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v38, s5, v21, v175, v21
	v_div_fmas_f32 v32, v32, v36, v33
	v_fma_f32 v33, -v43, v46, v42
	v_div_scale_f32 v43, null, v175, v175, v23
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v44, v37, v40
	v_mul_f32_e32 v42, v38, v47
	v_div_fmas_f32 v33, v33, v34, v46
	v_rcp_f32_e32 v34, v43
	v_div_fixup_f32 v18, v32, v175, v18
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v36, -v45, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v175, v175, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v44, v37, v40
	v_fmac_f32_e32 v42, v36, v47
	v_div_fixup_f32 v19, v33, v175, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v34, 1.0
	v_rcp_f32_e32 v41, v39
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v45, v42, v38
	v_div_scale_f32 v38, s3, v23, v175, v23
	v_fmac_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v32, v175, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v175, v175, v9
	v_mul_f32_e32 v44, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v41, 1.0
	v_div_scale_f32 v33, s1, v22, v175, v22
	v_div_scale_f32 v36, null, v175, v175, v8
	v_fma_f32 v32, -v43, v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v32, v34
	v_div_fmas_f32 v35, v35, v47, v42
	v_div_scale_f32 v32, s4, v8, v175, v8
	v_fmac_f32_e32 v41, v46, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v175, v21
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v47, null, v175, v175, v11
	v_mul_f32_e32 v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v42, -v39, v37, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v42, v41
	v_fma_f32 v42, -v36, v40, 1.0
	v_fma_f32 v33, -v39, v37, v33
	v_div_scale_f32 v39, null, v175, v175, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_fmas_f32 v33, v33, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v37, -v43, v44, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v9, v175, v9
	v_div_fixup_f32 v22, v33, v175, v22
	v_div_fmas_f32 v34, v37, v34, v44
	v_mul_f32_e32 v38, v32, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v42, 1.0
	v_div_fixup_f32 v23, v34, v175, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v36, v38, v32
	v_fma_f32 v34, -v47, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v10, v175, v10
	v_fmac_f32_e32 v38, v46, v40
	v_fmac_f32_e32 v49, v34, v49
	v_div_scale_f32 v34, s3, v11, v175, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v32, -v36, v38, v32
	v_div_scale_f32 v36, null, v175, v175, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v39, v44, v43
	v_div_fmas_f32 v32, v32, v40, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v42
	v_mul_f32_e32 v48, v41, v35
	v_rcp_f32_e32 v33, v36
	v_div_fixup_f32 v8, v32, v175, v8
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v37, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v12, v175, v12
	v_div_fmas_f32 v35, v37, v35, v48
	v_fma_f32 v37, -v39, v44, v43
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v40, v33
	v_div_scale_f32 v39, null, v175, v175, v13
	v_div_fmas_f32 v37, v37, v42, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v35, v175, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v10, v37, v175, v10
	v_div_scale_f32 v37, null, v175, v175, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v43, v37
	v_mul_f32_e32 v38, v34, v49
	v_fma_f32 v35, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v47, v38, v34
	v_fmac_f32_e32 v38, v42, v49
	v_fma_f32 v42, -v36, v32, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v47, v38, v34
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v175, v175, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v49, v38
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v34, v175, v11
	v_fma_f32 v34, -v36, v32, v40
	v_fma_f32 v40, -v37, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v34, v33, v32
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v175, v175, v1
	v_div_scale_f32 v33, null, v175, v175, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v32, v175, v12
	v_fma_f32 v32, -v42, v44, 1.0
	v_fmac_f32_e32 v41, v35, v41
	v_div_scale_f32 v35, s4, v13, v175, v13
	v_rcp_f32_e32 v46, v40
	v_fmac_f32_e32 v44, v32, v44
	v_div_scale_f32 v34, s1, v14, v175, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v35, v41
	v_div_scale_f32 v32, s3, v15, v175, v15
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, s4, v0, v175, v0
	v_fma_f32 v36, -v39, v38, v35
	v_fma_f32 v48, -v40, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v48, v46
	v_fmac_f32_e32 v38, v36, v41
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v48, s5, v1, v175, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v39, v38, v35
	v_mul_f32_e32 v39, v34, v43
	v_div_fmas_f32 v35, v35, v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v33, v36, 1.0
	v_fma_f32 v38, -v37, v39, v34
	v_mul_f32_e32 v41, v32, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v35, v175, v13
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v175, v175, v2
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v47, v36
	v_rcp_f32_e32 v49, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v39, v34
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v43, v39
	v_fma_f32 v32, -v42, v41, v32
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v45, v49, 1.0
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v38, v49
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_scale_f32 v38, s1, v2, v175, v2
	v_div_scale_f32 v39, null, v175, v175, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v35, v38, v49
	v_div_fixup_f32 v15, v32, v175, v15
	v_div_fixup_f32 v0, v33, v175, v0
	v_div_fmas_f32 v36, v36, v46, v37
	v_div_scale_f32 v33, null, v175, v175, v4
	v_fma_f32 v40, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v36, v175, v1
	v_div_scale_f32 v36, null, v175, v175, v6
	v_fmac_f32_e32 v35, v40, v49
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v14, v34, v175, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v43, null, v175, v175, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v39, v41, 1.0
	v_fma_f32 v47, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v47, v40
	v_fma_f32 v32, -v45, v35, v38
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v47, s4, v6, v175, v6
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v3, v175, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v47, v40
	v_div_fixup_f32 v2, v32, v175, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v33, v35, 1.0
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s5, v7, v175, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v4, v175, v4
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v175, v175, v5
	v_mul_f32_e32 v48, v32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v37, v41
	v_rcp_f32_e32 v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v39, v42, v37
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v34, v38, 1.0
	v_fma_f32 v46, -v33, v48, v32
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v5, v175, v5
	v_fmac_f32_e32 v48, v46, v35
	v_fma_f32 v46, -v36, v51, v47
	v_mul_f32_e32 v52, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v44, v38
	v_div_fmas_f32 v37, v37, v41, v42
	v_fma_f32 v32, -v33, v48, v32
	v_fmac_f32_e32 v51, v46, v40
	v_fma_f32 v33, -v43, v52, v49
	v_fma_f32 v39, -v34, v50, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v37, v175, v3
	v_div_fmas_f32 v32, v32, v35, v48
	v_fmac_f32_e32 v52, v33, v45
	v_fmac_f32_e32 v50, v39, v38
	v_fma_f32 v33, -v36, v51, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v32, v175, v4
	v_fma_f32 v35, -v43, v52, v49
	v_fma_f32 v34, -v34, v50, v44
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s35, v107
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s35, v123
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s35, v115
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v34, v175, v5
	v_div_fmas_f32 v35, v35, v45, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v128
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v175, v6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v128, 2
	v_add_lshl_u32 v34, v32, v139, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v175, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v138, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v33, s[36:39], 0 offen
	buffer_store_b32 v25, v34, s[36:39], 0 offen
	buffer_store_b32 v26, v35, s[36:39], 0 offen
	v_add_lshl_u32 v24, v32, v137, 2
	v_add_lshl_u32 v25, v32, v136, 2
	v_add_lshl_u32 v26, v32, v135, 2
	v_add_lshl_u32 v33, v32, v134, 2
	v_add_lshl_u32 v34, v32, v133, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s35, v132
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v27, v24, s[36:39], 0 offen
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	buffer_store_b32 v30, v33, s[36:39], 0 offen
	buffer_store_b32 v31, v34, s[36:39], 0 offen
	v_add_lshl_u32 v24, v32, v132, 2
	v_add_lshl_u32 v25, v32, v131, 2
	v_add_lshl_u32 v26, v32, v130, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v129, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v127, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[36:39], 0 offen
	buffer_store_b32 v17, v25, s[36:39], 0 offen
	buffer_store_b32 v18, v26, s[36:39], 0 offen
	v_add_lshl_u32 v17, v32, v126, 2
	v_add_lshl_u32 v18, v32, v125, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[36:39], 0 offen
	v_add_lshl_u32 v19, v32, v124, 2
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[36:39], 0 offen
	v_add_lshl_u32 v16, v32, v123, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[36:39], 0 offen
	v_add_lshl_u32 v17, v32, v122, 2
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[36:39], 0 offen
	buffer_store_b32 v23, v19, s[36:39], 0 offen
	buffer_store_b32 v8, v16, s[36:39], 0 offen
	v_add_lshl_u32 v8, v32, v121, 2
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v120, 2
	v_add_lshl_u32 v18, v32, v119, 2
	v_add_lshl_u32 v19, v32, v118, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[36:39], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[36:39], 0 offen
	v_add_lshl_u32 v8, v32, v117, 2
	s_clause 0x2
	buffer_store_b32 v11, v9, s[36:39], 0 offen
	buffer_store_b32 v12, v16, s[36:39], 0 offen
	buffer_store_b32 v13, v17, s[36:39], 0 offen
	v_add_lshl_u32 v9, v32, v116, 2
	v_add_lshl_u32 v10, v32, v115, 2
	v_add_lshl_u32 v11, v32, v114, 2
	v_add_lshl_u32 v12, v32, v113, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[36:39], 0 offen
	buffer_store_b32 v15, v9, s[36:39], 0 offen
	buffer_store_b32 v0, v10, s[36:39], 0 offen
	buffer_store_b32 v1, v11, s[36:39], 0 offen
	buffer_store_b32 v2, v12, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v112, 2
	v_add_lshl_u32 v1, v32, v111, 2
	v_add_lshl_u32 v2, v32, v110, 2
	v_add_lshl_u32 v8, v32, v109, 2
	v_add_lshl_u32 v9, v32, v108, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[36:39], 0 offen
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v8, s[36:39], 0 offen
	buffer_store_b32 v7, v9, s[36:39], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 229
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 229
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12428
; TotalNumSgprs: 50
; NumVgprs: 229
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 229
; Occupancy: 6
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     229
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
