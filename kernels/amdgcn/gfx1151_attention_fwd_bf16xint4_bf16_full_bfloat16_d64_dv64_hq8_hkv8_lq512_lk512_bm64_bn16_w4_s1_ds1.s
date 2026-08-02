	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
	v_dual_mov_b32 v16, 0x5410 :: v_dual_and_b32 v15, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v42, 0x7632
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v15
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s21, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s23, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s21, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s22, s21, s23
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x28
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v48, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[73:74], null, s28, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s28, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s10, s28, 4
	s_lshl_b32 s11, s28, 5
	s_mul_i32 s12, s28, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s28, s22, v[73:74]
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s36, s4
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v32, v33 :: v_dual_and_b32 v45, 1, v0
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v81, 16, v0
	v_dual_mov_b32 v44, 0x7531 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v2, s10, 1
	v_add_lshl_u32 v4, v2, s11, 1
	v_add_lshl_u32 v2, v2, s12, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	v_cndmask_b32_e64 v10, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v5, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v9, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v10, s[36:39], 0 offen
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s0, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s5, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v45
	v_cmp_eq_u32_e64 s0, 0, v81
	v_dual_mov_b32 v43, 0x6420 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v12, v33 :: v_dual_lshlrev_b32 v15, 4, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v58, 0x7632, v16, s1
	v_cndmask_b32_e64 v16, 0x1054, v16, s0
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v52, 7, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_i32 v46, v0, 0, 1
	v_dual_mov_b32 v18, v33 :: v_dual_lshlrev_b32 v47, 4, v0
	v_dual_mov_b32 v20, v33 :: v_dual_and_b32 v49, 0x70, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v50, 4, v0
	v_dual_mov_b32 v10, v33 :: v_dual_and_b32 v57, 0x70, v48
	v_lshl_or_b32 v83, v78, 7, v15
	v_cndmask_b32_e64 v15, 0x5410, v42, s1
	v_lshl_or_b32 v16, v16, 8, v16
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v53, 5, v0
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v56, 3, v45
	v_mov_b32_e32 v31, v33
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v46, 0x90, v46
	v_dual_mov_b32 v14, v33 :: v_dual_lshlrev_b32 v45, 6, v45
	v_lshl_or_b32 v82, s3, 8, v50
	v_and_b32_e32 v50, 0x700, v52
	v_lshrrev_b32_e32 v49, 2, v49
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v47, v47, v57
	v_cndmask_b32_e64 v43, 0x7531, v43, s1
	v_cndmask_b32_e64 v44, 0x6420, v44, s1
	v_cndmask_b32_e64 v42, 0x3276, v42, s0
	v_lshl_or_b32 v15, v15, 8, v15
	v_and_b32_e32 v16, 0x540054, v16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v80, 1, v0
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v79, 0x60, v0
	v_bfe_u32 v51, v0, 4, 1
	v_bfe_i32 v54, v0, 2, 1
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v52, 0x160, v53
	v_mov_b32_e32 v11, v33
	v_lshl_or_b32 v53, v58, 8, v58
	v_and_or_b32 v85, v48, 60, v45
	v_xor_b32_e32 v45, v46, v49
	v_add_nc_u32_e32 v46, 0, v50
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v87, 0, v47
	v_lshl_or_b32 v43, v43, 8, v43
	v_lshl_or_b32 v44, v44, 8, v44
	v_lshl_or_b32 v42, v42, 8, v42
	v_and_b32_e32 v15, 0x760032, v15
	v_lshl_or_b32 v16, v16, 4, v16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v55, s21, v80
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v88, v46, v45
	v_and_or_b32 v51, v48, 30, v51
	v_and_or_b32 v86, 0x90, v54, v52
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v47, v79, 6, v83
	v_and_b32_e32 v46, 0x760032, v53
	v_and_b32_e32 v43, 0x750031, v43
	v_and_b32_e32 v44, 0x750031, v44
	v_and_b32_e32 v42, 0x760076, v42
	v_and_b32_e32 v75, 0x5040504, v16
	v_mov_b32_e32 v16, v33
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v55
	v_mul_lo_u32 v55, s9, v55
	v_dual_mov_b32 v23, v33 :: v_dual_lshlrev_b32 v84, 2, v51
	v_xor_b32_e32 v48, 16, v83
	v_xor_b32_e32 v49, 32, v83
	v_xor_b32_e32 v50, 48, v83
	v_xor_b32_e32 v51, 64, v83
	v_xor_b32_e32 v45, 0x50, v83
	v_xor_b32_e32 v52, 0x60, v83
	v_xor_b32_e32 v53, 0x70, v83
	v_xor_b32_e32 v54, 16, v86
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v57, 0, v47
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s4, s31, s4
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s5, s8, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v58, v47, 16, 0
	v_xad_u32 v59, v47, 32, 0
	s_add_i32 s5, s5, s4
	v_xad_u32 v60, v47, 48, 0
	v_xad_u32 v61, v47, 64, 0
	v_xad_u32 v62, 0x50, v47, 0
	v_xad_u32 v65, 0x60, v47, 0
	v_xad_u32 v69, 0x70, v47, 0
	v_add_nc_u32_e32 v89, 0, v48
	v_add_nc_u32_e32 v90, 0, v49
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_add_nc_u32 v91, 0, v50
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_add_nc_u32 v92, 0, v51
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v93, 0, v45
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_add_nc_u32 v94, 0, v52
	v_add_nc_u32_e32 v95, 0, v53
	v_add_nc_u32_e32 v96, 0, v54
	v_add3_u32 v97, s5, v56, v55
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v74, 2, v78
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v28, v33
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s33, s3, 5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s3, s29, v74
	v_xor_b32_e32 v102, 4, v84
	v_xor_b32_e32 v103, 64, v85
	v_mov_b16_e32 v77.l, 0
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s30, s30, 0x3fb8aa3b
	s_and_b32 s47, s47, 0xffff
	s_mov_b32 s26, 0
	s_mov_b32 s27, 0x76543210
	s_mov_b32 s50, s38
	s_mov_b32 s51, s39
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s48, s46
	s_mov_b32 s46, s38
	s_mov_b32 s49, s47
	s_mov_b32 s47, s39
	s_mov_b32 s36, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v87, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v87, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v87, v[34:37] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[38:41] offset:6144
	v_mov_b32_e32 v4, v33
	v_lshl_or_b32 v15, v15, 4, v15
	v_mov_b32_e32 v3, v33
	v_lshl_or_b32 v44, v44, 4, v44
	v_mov_b32_e32 v5, v33
	v_lshl_or_b32 v42, v42, 4, v42
	v_and_b32_e32 v99, 0x7060302, v15
	v_mov_b32_e32 v15, v33
	v_lshl_or_b32 v46, v46, 4, v46
	v_mov_b32_e32 v6, v33
	v_lshl_or_b32 v43, v43, 4, v43
	v_and_b32_e32 v101, 0x7050301, v44
	v_and_b32_e32 v76, 0x7060706, v42
	v_and_b32_e32 v98, 0x7060302, v46
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v100, 0x7050301, v43
	s_barrier
	v_mov_b32_e32 v2, v33
	ds_load_b128 v[41:44], v57
	ds_load_b128 v[45:48], v58
	ds_load_b128 v[49:52], v59
	ds_load_b128 v[53:56], v60
	ds_load_b128 v[57:60], v61
	ds_load_b128 v[61:64], v62
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v69
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v7, v33
	v_mov_b32_e32 v8, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s4, s26, s23
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v40, v33
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s4, s4, s28
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v108, 0, v83
	v_dual_mov_b32 v34, v33 :: v_dual_max_f32 v107, v107, v107
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v110, 0, v86
	v_mov_b32_e32 v38, v33
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s5, s26, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v127, s5, v82
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v119, s4, v73, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v39, v33
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v135, v105, v105 :: v_dual_mov_b32 v118, v40
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v116, v38 :: v_dual_mov_b32 v115, v37
	v_dual_mov_b32 v114, v36 :: v_dual_mov_b32 v117, v39
	v_dual_mov_b32 v113, v35 :: v_dual_mov_b32 v112, v34
	v_dual_mov_b32 v111, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v119
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v109, v97, s26, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s6, s26, 4
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v129.l, v77.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s5, s6, s33
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[34:37], v34, s[36:39], 0 offen
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v38, 0x80000000, v109, s2
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s5, s5, s29
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v39.h, v77.l
	v_mov_b16_e32 v40.h, v77.l
	v_mov_b16_e64 v130.h, v77.l
	v_mov_b16_e64 v132.h, v77.l
	v_mov_b16_e32 v109.h, v77.l
	v_mov_b16_e64 v133.h, v77.l
	v_mov_b16_e64 v128.h, v77.l
	v_mov_b16_e64 v131.h, v77.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v106
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v134.h, v77.l
	v_mov_b16_e64 v136.h, v77.l
	v_mov_b16_e64 v137.h, v77.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[34:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_b128 v[34:37], v38, s[48:51], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v108
	ds_load_b128 v[123:126], v89
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[119:126], v[41:48], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v90
	ds_load_b128 v[123:126], v91
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[119:126], v[49:56], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v92
	ds_load_b128 v[123:126], v93
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[119:126], v[57:64], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v94
	ds_load_b128 v[123:126], v95
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[119:126], v[65:72], v[111:118]
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v38, 0xff80ff80, v34, s2
	v_cndmask_b32_e64 v108, 0xff80ff80, v35, s2
	v_cndmask_b32_e64 v119, 0xff80ff80, v36, s2
	v_cndmask_b32_e64 v120, 0xff80ff80, v37, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v77.h, v38.l
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v34, v108, v38, v98
	v_perm_b32 v35, v108, v38, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v36, v120, v119, v98
	v_perm_b32 v37, v120, v119, v99
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v77
	.loc	1 965 35                        ; attention.py:965:35
	ds_bpermute_b32 v34, v84, v34
	ds_bpermute_b32 v35, v102, v35
	ds_bpermute_b32 v36, v84, v36
	ds_bpermute_b32 v37, v102, v37
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v77.h, v108.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s4, s2, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v77
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e32 v77.h, v119.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s9, s2, s9
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v77
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e32 v77.h, v120.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s10, s2, s10
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v121, v35, v34, s0
	v_cndmask_b32_e64 v34, v34, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v122, v37, v36, s0
	v_cndmask_b32_e64 v35, v36, v37, s0
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v77
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v36, 0xffff0000, v121
	v_lshlrev_b32_e32 v37, 16, v121
	v_and_b32_e32 v121, 0xffff0000, v122
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s11, s2, s11
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v126, 0x3fb8aa3b, v36
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v123, 0xffff0000, v34
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v121, 0x3fb8aa3b, v121 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v124, 0xffff0000, v35
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v125, 0x3fb8aa3b, v37
	v_dual_mul_f32 v122, 0x3fb8aa3b, v122 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v138, 0x3fb8aa3b, v34
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v36, s5, v74, 1
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v125, s30, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v35
	.loc	1 977 30 is_stmt 1              ; attention.py:977:30
	v_mad_u64_u32 v[34:35], null, v127, s29, v[74:75]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v35, 0x80000000, v36, s3
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v121, s30, v114 :: v_dual_mul_f32 v124, 0x3fb8aa3b, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v138, s30, v115 :: v_dual_fmac_f32 v139, s30, v117
	v_fmac_f32_e32 v126, s30, v112
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	buffer_load_b32 v111, v34, s[40:43], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[36:37], v35, s[44:47], 0 offen
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v124, s30, v118 :: v_dual_mul_f32 v123, 0x3fb8aa3b, v123
	v_fmac_f32_e32 v122, s30, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v127.h, v77.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v123, s30, v116
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v34.l, v111.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v129.h, v37.l
	v_and_b32_e32 v114, 0xffff0000, v36
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v35, 0xffff0000, v38
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v115, 0xffff0000, v37
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v38, 0, 1, s4
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v77.h, v36.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v112, v111, 0, 8
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v35
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v35, 0xffff0000, v108
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v34.h, 4, v111.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v34.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v113, 8, v111
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s5, s2, s5
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v35
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_and_b32_e32 v35, 0xffff0000, v120
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v37, 0, 1, s5
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.h, v34.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v39.l, v111.h
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s6, s2, s6
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v35
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_and_b32_e32 v35, 0xffff0000, v119
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v108, 0, 1, s6
	v_mov_b16_e32 v36.l, v37.l
	v_mov_b16_e32 v37.l, v38.l
	s_and_b32 s8, s2, s8
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v35
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v38.l, v108.l
	v_lshlrev_b16 v35.h, 8, v36.l
	v_cndmask_b32_e64 v36, 0, 1, s9
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v35.l, v111.h, 15
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s7, s2, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v119.h, v77.l
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v116, 0, 1, s7
	v_or_b16 v108.l, v37.l, v35.h
	v_lshlrev_b16 v35.h, 8, v38.l
	v_cndmask_b32_e64 v37, 0, 1, s8
	v_cndmask_b32_e64 v38, 0, 1, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v120.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v108.h, v36.l, v35.h
	v_mov_b16_e32 v36.l, v116.l
	v_lshlrev_b16 v35.h, 8, v36.l
	v_lshlrev_b16 v36.l, 8, v37.l
	v_mov_b16_e32 v37.l, v38.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v38.l, v37.l, v35.h
	v_cndmask_b32_e64 v37, 0, 1, s11
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v35.h, 0, -16, s12
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v35.l
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_or_b16 v38.h, v37.l, v36.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v36.l, v112.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v112, v113, 0, 8
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v40.l, v34.l, v35.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v34.l, v34.h, -16
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v37, 24, v111
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v36.l
	v_mov_b16_e32 v36.l, v112.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v111, 20, v111
	.loc	1 966 25                        ; attention.py:966:25
	v_perm_b32 v117, v38, v108, v100
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v112, v37, 0, 8
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v109.l, v34.h, v34.l, s13
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.l, v113.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v34.h, 4, v113.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v113, v39, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v36.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v35.h, v111.l, 15
	.loc	1 966 25                        ; attention.py:966:25
	v_perm_b32 v38, v38, v108, v101
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.h, v34.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 966 25                        ; attention.py:966:25
	ds_bpermute_b32 v38, v102, v38
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s14, 0, v36.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v36.l, 0, -16, s12
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v39.l, v35.l, v36.l
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v35.l, v37.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v36.l, 4, v37.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v37.l, v112.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v36.h, 0, -16, s12
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v35.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_gt_i16_e64 s15, 0, v37.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v37.l, v34.l, v36.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v34.l, v34.h, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v37, v37, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v111.l, v34.h, v34.l, s13
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v34.l, v35.h, -16
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v34.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v112.l, v35.h, v34.l, s14
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v34.l, 0, -16, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v35.h, v77.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v112, v112, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v35.l, v35.l, v34.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v34.l, v36.l, -16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v34.l, v36.l, v34.l, s15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v36, v111, 0, 16
	v_bfe_i32 v111, v39, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v112, v129, v112
	v_bfe_i32 v113, v34, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v131.l, v112.h
	v_cmp_o_f32_e64 s17, v112, v112
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v113, v113
	v_dual_mul_f32 v111, v129, v111 :: v_dual_mul_f32 v36, v114, v36
	v_mul_f32_e32 v37, v114, v37
	v_bfe_i32 v114, v35, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v130.l, v111.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v113, v115, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s15, v36, v36
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s14, v111, v111
	v_and_b32_e32 v116, 1, v130
	v_mov_b16_e64 v132.l, v113.h
	v_cmp_o_f32_e64 s18, v113, v113
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v114, v115, v114
	v_bfe_i32 v115, v40, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v111, v111, v116, 0x7fff
	v_and_b32_e32 v108, 1, v132
	v_and_b32_e32 v116, 1, v131
	v_mov_b16_e64 v133.l, v114.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s19, v114, v114
	v_add3_u32 v108, v113, v108, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v115, v77, v115 :: v_dual_and_b32 v118, 1, v133
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v39.l, v115.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v115, v115
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v115, v39, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v115, v109, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.l, v36.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v115, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v109, 1, v109
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v115, v77, v115
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v36, v36, v109, 0x7fff
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	ds_bpermute_b32 v109, v84, v117
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v36.l, 0x7fff, v111.h, s14
	v_mov_b16_e32 v40.l, v115.h
	v_cmp_o_f32_e64 s13, v115, v115
	v_cndmask_b16 v111.h, 0x7fff, v36.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e64 v128.l, v37.h
	v_cmp_o_f32_e64 s16, v37, v37
	v_add3_u32 v40, v115, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v115, 1, v128
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s12
	v_add3_u32 v39, v112, v116, 0x7fff
	v_add3_u32 v112, v114, v118, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s13
	v_add3_u32 v37, v37, v115, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s17
	v_cndmask_b16 v37.l, 0x7fff, v112.h, s19
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v111.l, 0x7fff, v37.h, s16
	v_cndmask_b16 v37.h, 0x7fff, v108.h, s18
	ds_store_2addr_b32 v88, v40, v111 offset1:8
	ds_store_2addr_b32 v88, v36, v37 offset0:16 offset1:24
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v36, v38, v109, s0
	v_cndmask_b32_e64 v37, v109, v38, s0
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v38, 1, v36
	v_and_b32_e32 v39, 0x100, v36
	v_and_b32_e32 v40, 1, v37
	v_and_b32_e32 v108, 0x100, v37
	v_and_b32_e32 v109, 0x10000, v37
	v_cmp_eq_u32_e64 s12, 1, v38
	v_and_b32_e32 v37, 0x1000000, v37
	v_cmp_eq_u32_e64 s13, 0, v39
	v_cmp_eq_u32_e64 s14, 1, v40
	v_cmp_eq_u32_e64 s15, 0, v108
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v38, 0xff800000, v125, s12
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v111, 0x10000, v36
	v_and_b32_e32 v36, 0x1000000, v36
	v_cmp_eq_u32_e64 s16, 0, v109
	v_cmp_eq_u32_e64 s17, 0, v37
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v39, v126, 0xff800000, s13
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s18, 0, v111
	v_cmp_eq_u32_e64 s19, 0, v36
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v40, 0xff800000, v138, s14
	v_cndmask_b32_e64 v108, v123, 0xff800000, s15
	v_cndmask_b32_e64 v109, v139, 0xff800000, s16
	v_cndmask_b32_e64 v37, v124, 0xff800000, s17
	v_cndmask_b32_e64 v122, v122, 0xff800000, s18
	v_cndmask_b32_e64 v36, v121, 0xff800000, s19
	v_cndmask_b32_e64 v117, v39, v108, s0
	v_cndmask_b32_e64 v116, v108, v39, s0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v111, v109, v37
	v_max3_f32 v112, v38, v39, v122
	v_max3_f32 v113, v36, v40, v108
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v121, v122, v109, s0
	v_cndmask_b32_e64 v123, v37, v36, s0
	v_cndmask_b32_e64 v118, v109, v122, s0
	v_cndmask_b32_e64 v124, v36, v37, s0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v111, v112, v113, v111
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v113, v103, v117
	ds_bpermute_b32 v117, v103, v121
	ds_bpermute_b32 v121, v85, v123
	v_cndmask_b32_e64 v114, v40, v38, s0
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v123, v111, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v115, v38, v40, s0
	ds_bpermute_b32 v112, v85, v116
	ds_bpermute_b32 v116, v85, v118
	ds_bpermute_b32 v118, v103, v124
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v143, v106, v111, v123
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v114, v85, v114
	ds_bpermute_b32 v115, v103, v115
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v39, v143
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v111, v106, v143
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v38, v38, v143
	v_sub_f32_e32 v36, v36, v143
	v_sub_f32_e32 v122, v122, v143
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v111, v111
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v108, v108, v143
	v_sub_f32_e32 v40, v40, v143
	v_sub_f32_e32 v37, v37, v143
	v_sub_f32_e32 v109, v109, v143
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v106, v113, v112, s1
	v_cndmask_b32_e64 v138, v112, v113, s1
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v139, v117, v116, s1
	v_cndmask_b32_e64 v140, v116, v117, s1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v112, v118, v118 :: v_dual_max_f32 v113, v121, v121
.Ltmp8:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v109, v109
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v39, v39, 0, s13
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v141, v115, v114, s1
	v_cndmask_b32_e64 v142, v114, v115, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v112, v113, v112
	v_max3_f32 v113, v114, v115, v106
	v_max3_f32 v114, v138, v139, v140
.Ltmp10:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v111, 0, v111, s20
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v134.l, v39.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v144, v118, v121, s1
	v_cndmask_b32_e64 v145, v121, v118, s1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v121, v113, v114, v112
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp12:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v20, v20, v111 :: v_dual_and_b32 v123, 1, v134
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v38, s12
	v_cndmask_b32_e64 v36, v36, 0, s19
	v_cndmask_b32_e64 v122, v122, 0, s18
	v_cndmask_b32_e64 v108, v108, 0, s15
	v_cndmask_b32_e64 v40, 0, v40, s14
	v_cndmask_b32_e64 v37, v37, 0, s17
	v_cndmask_b32_e64 v109, v109, 0, s16
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v22, v22, v111
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s12, v39, v39
	v_mov_b16_e64 v136.l, v38.h
	v_mov_b16_e64 v137.l, v36.h
	v_mov_b16_e32 v34.l, v122.h
	v_mov_b16_e32 v35.l, v108.h
	v_mov_b16_e32 v119.l, v40.h
	v_mov_b16_e32 v120.l, v37.h
	v_mov_b16_e32 v127.l, v109.h
	v_add3_u32 v39, v39, v123, 0x7fff
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v123, v121
.Ltmp14:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v29, v29, v111 :: v_dual_and_b32 v124, 1, v136
	v_dual_mul_f32 v31, v31, v111 :: v_dual_and_b32 v34, 1, v34
	v_dual_mul_f32 v17, v17, v111 :: v_dual_and_b32 v120, 1, v120
	v_dual_mul_f32 v24, v24, v111 :: v_dual_and_b32 v125, 1, v137
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v119, 1, v119
	v_and_b32_e32 v126, 1, v127
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s13, v38, v38
	v_cmp_o_f32_e64 s14, v36, v36
	v_cmp_o_f32_e64 s15, v122, v122
	v_cmp_o_f32_e64 s16, v108, v108
	v_cmp_o_f32_e64 s17, v40, v40
	v_cmp_o_f32_e64 s18, v37, v37
	v_cmp_o_f32_e64 s19, v109, v109
	v_add3_u32 v38, v38, v124, 0x7fff
	v_add3_u32 v36, v36, v125, 0x7fff
	v_add3_u32 v34, v122, v34, 0x7fff
	v_add3_u32 v35, v108, v35, 0x7fff
	v_add3_u32 v40, v40, v119, 0x7fff
	v_add3_u32 v37, v37, v120, 0x7fff
	v_add3_u32 v108, v109, v126, 0x7fff
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v109, v123, v123
.Ltmp18:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v111
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s12
	v_cndmask_b16 v39.l, 0x7fff, v38.h, s13
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s14
	v_cndmask_b16 v36.l, 0x7fff, v34.h, s15
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s16
	v_cndmask_b16 v34.l, 0x7fff, v40.h, s17
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s18
	v_cndmask_b16 v35.l, 0x7fff, v108.h, s19
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v37, v121, v109 :: v_dual_mul_f32 v12, v12, v111
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v38, v39, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v36, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v108, v34, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v109, v35, s27, 0xfedcba98 op_sel:[1,0]
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v107, v107, v37
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v21, v21, v111
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v119, v38, v39, v75
	v_perm_b32 v120, v38, v39, v76
	v_perm_b32 v121, v40, v36, v75
	v_perm_b32 v122, v40, v36, v76
	v_perm_b32 v123, v108, v34, v75
	v_perm_b32 v124, v108, v34, v76
	v_perm_b32 v125, v109, v35, v75
	v_perm_b32 v126, v109, v35, v76
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v34, v135, v37 :: v_dual_sub_f32 v35, v141, v107
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v142, v107
	v_sub_f32_e32 v37, v106, v107
	v_sub_f32_e32 v38, v138, v107
	v_sub_f32_e32 v39, v139, v107
	v_sub_f32_e32 v40, v140, v107
	v_sub_f32_e32 v106, v144, v107
	v_sub_f32_e32 v108, v145, v107
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v106, v106
	v_exp_f32_e32 v108, v108
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v111
	v_mul_f32_e32 v25, v25, v111
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s4
	v_cndmask_b32_e64 v36, 0, v36, s5
	v_cndmask_b32_e64 v37, 0, v37, s9
	v_cndmask_b32_e64 v38, 0, v38, s6
	v_cndmask_b32_e64 v39, 0, v39, s10
	v_cndmask_b32_e64 v40, 0, v40, s7
	v_cndmask_b32_e64 v106, 0, v106, s11
	v_cndmask_b32_e64 v108, 0, v108, s8
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v111
	v_mul_f32_e32 v23, v23, v111
	v_dual_mul_f32 v14, v14, v111 :: v_dual_add_f32 v35, v35, v36
	v_mul_f32_e32 v16, v16, v111
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v37, v38 :: v_dual_add_f32 v37, v39, v40
	v_dual_add_f32 v38, v106, v108 :: v_dual_mul_f32 v11, v11, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v2, v2, v111 :: v_dual_add_f32 v35, v35, v36
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v105
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v37, v38
.Ltmp24:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v111
	v_mul_f32_e32 v26, v26, v111
	v_mul_f32_e32 v27, v27, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v28, v28, v111 :: v_dual_add_f32 v35, v35, v36
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v36, v105, v34
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v111
	v_mul_f32_e32 v30, v30, v111
	v_dual_mul_f32 v32, v32, v111 :: v_dual_mov_b32 v37, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v36, v36
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v111
	v_dual_mul_f32 v9, v9, v111 :: v_dual_mov_b32 v38, v104
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v13, v13, v111 :: v_dual_mov_b32 v106, v143
	v_mul_f32_e32 v1, v1, v111
	v_mul_f32_e32 v5, v5, v111
	v_mul_f32_e32 v7, v7, v111
	v_dual_mul_f32 v8, v8, v111 :: v_dual_mov_b32 v105, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v36, 0, v36, s4
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v104, v35, v37
.Ltmp28:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v111
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[115:118], v96
	ds_load_b128 v[111:114], v110
	ds_load_b128 v[127:130], v110 offset:512
	ds_load_b128 v[131:134], v96 offset:512
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s4, s26, 16
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v104, v38, v36
	.loc	1 903 13                        ; attention.py:903:13
	s_cmpk_lt_u32 s26, 0x1f0
	s_mov_b32 s26, s4
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[111:118], v[119:126], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[111:114], v110 offset:1024
	ds_load_b128 v[135:138], v110 offset:1536
	ds_load_b128 v[115:118], v96 offset:1024
	ds_load_b128 v[139:142], v96 offset:1536
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[127:134], v[119:126], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[111:118], v[119:126], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[135:142], v[119:126], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshlrev_b32_e32 v0, 3, v0
	v_lshrrev_b32_e32 v33, 2, v81
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v77.l
	v_mov_b16_e32 v40.h, v77.l
	v_mov_b16_e32 v38.h, v77.l
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_and_or_b32 v0, 0x78, v0, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 1, v79
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 903 13                        ; attention.py:903:13
	ds_bpermute_b32 v37, v0, v104
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v35, v33, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v41, s21, v35
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v35, s22, v35
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v41
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s29, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v43, null, v37, v37, v25
	v_div_scale_f32 v45, null, v37, v37, v27
	v_div_scale_f32 v41, null, v37, v37, v26
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v43
	v_rcp_f32_e32 v50, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v46, v41
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v49, s6, v25, v37, v25
	v_div_scale_f32 v52, s8, v27, v37, v27
	v_div_scale_f32 v42, vcc_lo, v26, v37, v26
	v_fma_f32 v54, -v43, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v57, -v45, v50, 1.0
	v_fma_f32 v53, -v41, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v44, v48, 1.0
	v_div_scale_f32 v51, s7, v28, v37, v28
	v_dual_fmac_f32 v47, v54, v47 :: v_dual_fmac_f32 v50, v57, v50
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v0, 8, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v55, v48
	v_div_scale_f32 v56, null, v37, v37, v30
	v_mul_f32_e32 v55, v49, v47
	v_mul_f32_e32 v59, v52, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v46, v53, v46 :: v_dual_mul_f32 v57, v51, v48
	v_div_scale_f32 v53, null, v37, v37, v29
	v_fma_f32 v61, -v43, v55, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v42, v46
	v_fma_f32 v62, -v44, v57, v51
	v_fma_f32 v64, -v45, v59, v52
	v_rcp_f32_e32 v58, v56
	v_fmac_f32_e32 v55, v61, v47
	v_fma_f32 v60, -v41, v54, v42
	v_fmac_f32_e32 v57, v62, v48
	v_fmac_f32_e32 v59, v64, v50
	v_rcp_f32_e32 v63, v53
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v54, v60, v46
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 16, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v45, v59, v52
	v_fma_f32 v60, -v56, v58, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 32, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v41, v54, v42
	v_fma_f32 v42, -v43, v55, v49
	v_fma_f32 v43, -v44, v57, v51
	v_fma_f32 v49, -v53, v63, 1.0
	v_fmac_f32_e32 v58, v60, v58
	v_div_fmas_f32 v41, v41, v46, v54
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v47, v55
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v26, v41, v37, v26
	v_div_fmas_f32 v41, v43, v48, v57
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v42, v37, v25
	v_div_fmas_f32 v43, v45, v50, v59
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v42, s7, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v45, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v43, v37, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v41, v37, v28
	v_fmac_f32_e32 v63, v49, v63
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v45.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v44, s9, v30, v37, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v25, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v25, 1, v39
	v_mov_b16_e32 v40.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v42, v63
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v26, v26, v28, 0x7fff
	v_mov_b16_e32 v47.h, v77.l
	v_add3_u32 v28, v45, v25, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v39, v44, v58 :: v_dual_and_b32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_mov_b16_e32 v26.l, v38.h
	v_mov_b16_e32 v26.h, v77.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v56, v39, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v38, v38
	v_cndmask_b16 v25.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v28, v27, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v53, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v26, 1, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v43, v58
	v_div_scale_f32 v43, null, v37, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v40, v63
	v_div_scale_f32 v40, null, v37, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v26, v38, v26, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v43
	v_fma_f32 v44, -v56, v39, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v45, v40
	v_fma_f32 v42, -v53, v41, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v44, v58, v39
	s_mov_b32 vcc_lo, s7
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s29, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v42, v63, v41
	v_fma_f32 v42, -v43, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v40, v45, 1.0
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_fixup_f32 v29, v41, v37, v29
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v41, s7, v32, v37, v32
	v_fmac_f32_e32 v45, v27, v45
	v_div_scale_f32 v27, s8, v31, v37, v31
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v28, v41, v38 :: v_dual_mul_f32 v39, v27, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.h, v77.l
	v_mov_b16_e32 v42.l, v29.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v44, -v43, v28, v41
	v_fma_f32 v46, -v40, v39, v27
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e32 v47.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v28, v44, v38 :: v_dual_fmac_f32 v39, v46, v45
	v_div_scale_f32 v44, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v46, 1, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v43, v28, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v40, v39, v27
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v43, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v41, v38, v28
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v29, v42, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v43
	v_div_fmas_f32 v27, v27, v45, v39
	v_div_fixup_f32 v28, v28, v37, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v30, v46, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v44, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v27, v37, v31
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v31, s7, v18, v37, v18
	v_fmac_f32_e32 v40, v32, v40
	v_fma_f32 v32, -v43, v38, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v39.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v28.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v31, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v77.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v32, v38
	v_div_scale_f32 v32, s8, v17, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v45.l, v30.h
	v_mov_b16_e32 v45.h, v77.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v44, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v29, v29
	v_and_b32_e32 v29, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v47, v32, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v45
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v46, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s10, v28, v28
	v_add3_u32 v29, v28, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v43, v47, v32
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v28, -v44, v41, v31
	v_div_scale_f32 v44, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v45, v38
	v_div_scale_f32 v46, null, v37, v37, v20
	v_div_fmas_f32 v40, v28, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v44
	v_fma_f32 v32, -v43, v47, v32
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v31, v46
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v42.h, s9
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v47
	v_div_scale_f32 v29, vcc_lo, v20, v37, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v30, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v32, v37, v17
	v_fma_f32 v32, -v44, v41, 1.0
	v_fma_f32 v38, -v46, v31, 1.0
	v_div_fixup_f32 v18, v40, v37, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v43.h, v77.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v41, v32, v41
	v_div_scale_f32 v32, s8, v19, v37, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v39.h, s7
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v0, v35, v0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_dual_mul_f32 v42, v32, v41 :: v_dual_fmac_f32 v31, v38, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v43.l, v18.h
	v_mov_b16_e32 v38.l, v30.h
	v_mov_b16_e32 v38.h, v77.l
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s29, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v17, v29, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v43
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s29, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v38
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s29, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v46, v17, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v18, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v30, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v17, v40, v31
	v_fma_f32 v40, -v44, v42, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v46, v17, v29
	v_fmac_f32_e32 v42, v40, v41
	v_div_scale_f32 v40, null, v37, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v29, v31, v17
	v_fma_f32 v29, -v44, v42, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v31, v40
	v_div_scale_f32 v32, null, v37, v37, v21
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v29, v29, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v17, v37, v20
	v_rcp_f32_e32 v20, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v77.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v29, v37, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v40, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v77.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v29, v31
	v_div_scale_f32 v29, s7, v22, v37, v22
	v_fma_f32 v30, -v32, v20, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v18.h
	v_cndmask_b16 v17.l, 0x7fff, v38.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v29, v31
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v20, v30, v20
	v_div_scale_f32 v30, s8, v21, v37, v21
	v_fma_f32 v43, -v40, v42, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v39
	v_cmp_o_f32_e64 s7, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v30, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v31
	v_div_scale_f32 v43, null, v37, v37, v24
	v_fma_f32 v44, -v32, v39, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v38, v18, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v42, v29
	v_rcp_f32_e32 v40, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v44, v20
	v_div_scale_f32 v44, null, v37, v37, v23
	v_div_fmas_f32 v29, v29, v31, v42
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v32, v39, v30
	v_rcp_f32_e32 v31, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v19, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v40, 1.0
	v_div_fixup_f32 v22, v29, v37, v22
	v_div_fmas_f32 v20, v18, v20, v39
	v_div_scale_f32 v29, vcc_lo, v24, v37, v24
	v_fmac_f32_e32 v40, v30, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v20, v37, v21
	v_fma_f32 v30, -v44, v31, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v29, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v77.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v31, v30, v31
	v_div_scale_f32 v30, s7, v23, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v43, v22, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v20.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v30, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v19, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v32, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v19.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v44, v38, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v19.h, v77.l
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v43, v22, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v41.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v32, v31
	v_div_scale_f32 v32, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v29, v40, v22
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v29, -v44, v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v40, null, v37, v37, v9
	v_div_fmas_f32 v29, v29, v31, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_add3_u32 v19, v21, v19, 0x7fff
	v_add3_u32 v21, v20, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v31, v40
	v_div_fixup_f32 v23, v29, v37, v23
	v_fma_f32 v29, -v32, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v22, v37, v24
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v23, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v29, v30
	v_div_scale_f32 v23, s7, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v77.l
	v_cndmask_b16 v19.l, 0x7fff, v21.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v23, v30
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v40, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v20, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v32, v29, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v22.h
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v21.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v38, v30
	v_div_scale_f32 v38, null, v37, v37, v12
	v_fma_f32 v23, -v32, v29, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v32, v38
	v_div_fmas_f32 v23, v23, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v20, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v23, v37, v10
	v_fma_f32 v39, -v38, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s7
	v_cmp_o_f32_e64 s7, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_dual_fmac_f32 v32, v39, v32 :: v_dual_fmac_f32 v31, v24, v31
	v_div_scale_f32 v24, s8, v9, v37, v9
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v41, v24, v31
	v_fma_f32 v42, -v40, v41, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v42, v31
	v_div_scale_f32 v42, null, v37, v37, v11
	v_fma_f32 v24, -v40, v41, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v30, v42
	v_div_fmas_f32 v23, v24, v31, v41
	v_div_scale_f32 v24, vcc_lo, v12, v37, v12
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v77.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v23, v37, v9
	v_fma_f32 v31, -v42, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v20, v24, v32
	v_div_scale_f32 v23, s8, v11, v37, v11
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v31, v30
	v_fma_f32 v39, -v38, v20, v24
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v10.h
	v_mov_b16_e32 v31.h, v77.l
	v_mov_b16_e32 v41.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v23, v30
	v_fmac_f32_e32 v20, v39, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v42, v40, v23
	v_fma_f32 v24, -v38, v20, v24
	v_div_scale_f32 v38, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v39, v30
	v_div_scale_f32 v39, null, v37, v37, v13
	v_div_fmas_f32 v20, v24, v32, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v24, v38
	v_fma_f32 v23, -v42, v40, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v32, v39
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v12, v20, v37, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v30, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v40.h, v77.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v11, v23, v37, v11
	v_fma_f32 v20, -v39, v32, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v12.h
	v_mov_b16_e32 v23.h, v77.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v32, v20, v32
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v21, v22, v21, 0x7fff
	v_and_b32_e32 v22, 1, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v23.l, v11.h
	v_cndmask_b16 v29.l, 0x7fff, v21.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v20, s7, v13, v37, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v10, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v38, v24, 1.0
	v_dual_mul_f32 v30, v20, v32 :: v_dual_and_b32 v31, 1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v24, v21, v24
	v_div_scale_f32 v21, vcc_lo, v14, v37, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v30, v20
	v_fmac_f32_e32 v30, v41, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v9, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v9, v21, v24
	v_fma_f32 v20, -v39, v30, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v38, v9, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v9, v31, v24
	v_div_scale_f32 v31, null, v37, v37, v16
	v_fma_f32 v21, -v38, v9, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v9, v21, v24, v9
	v_rcp_f32_e32 v21, v31
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v24, null, v37, v37, v15
	v_div_fmas_f32 v20, v20, v32, v30
	v_div_fixup_f32 v9, v9, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_mov_b16_e32 v30.h, v77.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v14, -v31, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v10, 1, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v14, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v12, v10, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v13
	v_rcp_f32_e32 v13, v24
	v_div_scale_f32 v14, s7, v16, v37, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cmp_o_f32_e64 s9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v14, v21
	v_fma_f32 v20, -v24, v13, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v31, v32, v14
	v_dual_fmac_f32 v32, v38, v21 :: v_dual_and_b32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v23, v11, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v12, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e32 v12.h, v77.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v20, v13
	v_div_scale_f32 v20, s8, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 1, v12
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v38, null, v37, v37, v2
	v_mul_f32_e32 v23, v20, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v11.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v12, v9, v12, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v31, v32, v14
	v_rcp_f32_e32 v14, v38
	v_fma_f32 v39, -v24, v23, v20
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v21, v32
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v23, v39, v13
	v_div_scale_f32 v31, null, v37, v37, v1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v11, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v24, v23, v20
	v_fma_f32 v24, -v38, v14, 1.0
	v_rcp_f32_e32 v21, v31
	v_div_fixup_f32 v9, v9, v37, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v30.h, s7
	v_mov_b16_e32 v30.h, v77.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v14, v24, v14
	v_div_fmas_f32 v13, v20, v13, v23
	v_div_scale_f32 v16, vcc_lo, v2, v37, v2
	v_div_scale_f32 v32, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v11, v13, v37, v15
	v_fma_f32 v20, -v31, v21, 1.0
	v_div_scale_f32 v15, s8, v1, v37, v1
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s9
	v_mov_b16_e32 v30.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v20, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v20.l, v9.h
	v_mov_b16_e32 v20.h, v77.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v13, v16, v14 :: v_dual_mul_f32 v24, v15, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v38, v13, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v9, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v23, v14
	v_fma_f32 v23, -v31, v24, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v38, v13, v16
	v_fmac_f32_e32 v24, v23, v21
	v_rcp_f32_e32 v23, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v13, v16, v14, v13
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v2, v13, v37, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v32, v23, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v16, v23
	v_fma_f32 v14, -v31, v24, v15
	v_div_scale_f32 v15, null, v37, v37, v3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v16, v11, v30, 0x7fff
	v_mov_b16_e32 v30.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v14, v14, v21, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v9, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v77.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v14, v37, v1
	v_div_scale_f32 v14, s7, v4, v37, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_mul_f32_e32 v13, v14, v23
	v_fma_f32 v21, -v15, v9, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v77.l
	v_cndmask_b16 v20.l, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v16, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v32, v13, v14
	v_fmac_f32_e32 v9, v21, v9
	v_div_scale_f32 v21, s8, v3, v37, v3
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v13, v24, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v16, v2, v16, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v24, v21, v9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v2, v2
	v_mov_b16_e32 v11.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v15, v24, v21
	v_fmac_f32_e32 v24, v30, v9
	v_fma_f32 v14, -v32, v13, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v77.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v2, -v15, v24, v21
	v_div_fmas_f32 v13, v14, v23, v13
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v14, null, v37, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v2, v2, v9, v24
	v_div_fixup_f32 v4, v13, v37, v4
	v_div_scale_f32 v9, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v13, v14
	v_div_fixup_f32 v2, v2, v37, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v4, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v4, v9
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v24, null, v37, v37, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v3.h
	v_mov_b16_e32 v15.h, v77.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v30.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v9, v4, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v4, v21, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v11, v1, v11, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v16.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v16, null, v37, v37, v8
	v_rcp_f32_e32 v21, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v11.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v14, v13, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v16
	v_div_scale_f32 v32, s7, v5, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v2, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v11, v13
	v_div_scale_f32 v11, vcc_lo, v6, v37, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v40, v32, v4
	v_fma_f32 v41, -v24, v21, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v16, v23, 1.0
	v_fmac_f32_e32 v21, v41, v21
	v_div_scale_f32 v41, s9, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v38, v23
	v_div_scale_f32 v38, s8, v8, v37, v8
	v_dual_mul_f32 v31, v11, v13 :: v_dual_mul_f32 v42, v38, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v14, v31, v11
	v_fmac_f32_e32 v31, v39, v13
	v_fma_f32 v39, -v9, v40, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v14, v31, v11
	v_fmac_f32_e32 v40, v39, v4
	v_fma_f32 v14, -v16, v42, v38
	v_mul_f32_e32 v39, v41, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v9, v40, v32
	v_fmac_f32_e32 v42, v14, v23
	v_div_fmas_f32 v11, v11, v13, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v13, -v24, v39, v41
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v3, v3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v9, v4, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v3, v15, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v13, v21
	v_fma_f32 v3, -v16, v42, v38
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v4, v4, v37, v5
	v_div_fixup_f32 v6, v11, v37, v6
	v_fma_f32 v5, -v24, v39, v41
	v_div_fmas_f32 v3, v3, v23, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	v_cndmask_b32_e64 v6, 0, v6, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v21, v39
	v_div_fixup_f32 v3, v3, v37, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v8.h, v77.l
	v_mov_b16_e32 v13.h, v77.l
	v_mov_b16_e32 v8.l, v6.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v4.h
	v_mov_b16_e32 v7.h, v77.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v77.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v11.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v13.l, v5.h
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v2, v4, v7, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v8, v6, v8, 0x7fff
	v_and_b32_e32 v7, 1, v13
	v_cmp_o_f32_e64 s6, v6, v6
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v6, v3, v11, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_add3_u32 v4, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s9, v5, v5
	v_cndmask_b16 v3.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v9.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	v_cndmask_b32_e64 v5, v25, v27, s0
	v_cndmask_b32_e64 v7, v26, v28, s0
	v_cndmask_b32_e64 v8, v19, v17, s0
	v_cndmask_b32_e64 v11, v17, v19, s0
	v_cndmask_b32_e64 v14, v18, v29, s0
	v_cndmask_b32_e64 v17, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v13, v29, v18, s0
	v_cndmask_b32_e64 v15, v12, v22, s0
	v_cndmask_b32_e64 v12, v22, v12, s0
	v_cndmask_b32_e64 v16, v20, v10, s0
	v_cndmask_b32_e64 v10, v10, v20, s0
	v_cndmask_b32_e64 v18, v2, v9, s0
	v_cndmask_b32_e64 v2, v9, v2, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v4, v27, v25, s0
	v_cndmask_b32_e64 v6, v28, v26, s0
	v_permlanex16_b32 v3, v5, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v2, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v3, v4, v75
	v_perm_b32 v2, v3, v4, v76
	v_perm_b32 v3, v5, v6, v75
	v_perm_b32 v4, v5, v6, v76
	v_perm_b32 v5, v7, v8, v75
	v_perm_b32 v6, v7, v8, v76
	v_perm_b32 v7, v9, v13, v75
	v_perm_b32 v8, v9, v13, v76
	v_perm_b32 v13, v14, v17, v75
	v_perm_b32 v14, v14, v17, v76
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v11, v15, v75
	v_perm_b32 v10, v11, v15, v76
	v_perm_b32 v11, v12, v16, v75
	v_perm_b32 v12, v12, v16, v76
	v_perm_b32 v15, v19, v18, v75
	v_perm_b32 v16, v19, v18, v76
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v34, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v17, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v18, s[24:27], 0 offen
	buffer_store_b128 v[13:16], v19, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp29:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 146
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 146
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10212
; TotalNumSgprs: 54
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 146
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
