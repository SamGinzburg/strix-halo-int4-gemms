	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
	v_dual_mov_b32 v43, 0x7632 :: v_dual_and_b32 v16, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v42, 0x5410
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v16
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s23, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s22, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s21, s22, s23
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x28
	s_load_b64 s[28:29], s[0:1], 0x38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v76, 0x60, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[73:74], null, s24, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s24, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s10, s24, 4
	s_lshl_b32 s11, s24, 5
	s_mul_i32 s12, s24, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s24, s21, v[73:74]
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s36, s4
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v52, 16, v0
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v47, 1, v0
	v_dual_mov_b32 v44, 0x6420 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v2, s10, 1
	v_add_lshl_u32 v4, v2, s11, 1
	v_add_lshl_u32 v2, v2, s12, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[8:11], v1, s[36:39], 0 offen
	buffer_load_b128 v[12:15], v3, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v4, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v2, s[36:39], 0 offen
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_dual_mov_b32 v45, 0x7531 :: v_dual_lshlrev_b32 v50, 1, v0
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v75, 15, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_i32 v48, v0, 0, 1
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v51, 0x70, v0
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v53, 7, v0
	v_dual_mov_b32 v31, v33 :: v_dual_lshlrev_b32 v16, 4, v16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s0, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s5, s3, s1
	v_cmp_eq_u32_e64 s0, 0, v47
	v_cmp_eq_u32_e64 s1, 0, v52
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v54, 5, v0
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v49, 4, v0
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v56, 3, v47
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v52, 0x700, v53
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v57, 0x70, v50
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v48, 0x90, v48
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v47, 6, v47
	v_cndmask_b32_e64 v58, 0x7632, v42, s0
	v_cndmask_b32_e64 v42, 0x1054, v42, s1
	v_lshrrev_b32_e32 v51, 2, v51
	v_lshl_or_b32 v79, v75, 7, v16
	v_cndmask_b32_e64 v16, 0x5410, v43, s0
	v_cndmask_b32_e64 v44, 0x7531, v44, s0
	v_cndmask_b32_e64 v45, 0x6420, v45, s0
	v_cndmask_b32_e64 v43, 0x3276, v43, s1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v46, 1, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v77, 4, v0
	v_bfe_i32 v55, v0, 2, 1
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v78, 30, v50
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v53, 0x160, v54
	v_mov_b32_e32 v3, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v49, v49, v57
	v_lshl_or_b32 v54, v58, 8, v58
	v_and_or_b32 v80, v50, 60, v47
	v_lshl_or_b32 v42, v42, 8, v42
	v_xor_b32_e32 v47, v48, v51
	v_add_nc_u32_e32 v48, 0, v52
	v_lshl_or_b32 v44, v44, 8, v44
	v_lshl_or_b32 v45, v45, 8, v45
	v_lshl_or_b32 v43, v43, 8, v43
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v46, s22, v46
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v83, v48, v47
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v82, 0, v49
	v_dual_mov_b32 v6, v33 :: v_dual_and_b32 v45, 0x750031, v45
	v_dual_mov_b32 v7, v33 :: v_dual_and_b32 v48, 0x760032, v54
	v_and_or_b32 v57, v77, 1, v78
	v_and_or_b32 v81, 0x90, v55, v53
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v49, v76, 6, v79
	v_and_b32_e32 v42, 0x540054, v42
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v44, 0x750031, v44
	v_and_b32_e32 v43, 0x760076, v43
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v46
	v_mul_lo_u32 v46, s9, v46
	v_xor_b32_e32 v50, 16, v79
	v_xor_b32_e32 v51, 32, v79
	v_xor_b32_e32 v52, 48, v79
	v_xor_b32_e32 v53, 64, v79
	v_xor_b32_e32 v55, 0x50, v79
	v_xor_b32_e32 v47, 0x60, v79
	v_lshlrev_b32_e32 v84, 2, v57
	v_xor_b32_e32 v54, 0x70, v79
	v_xor_b32_e32 v57, 16, v81
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v58, 0, v49
	v_lshl_or_b32 v48, v48, 4, v48
	v_lshl_or_b32 v44, v44, 4, v44
	v_lshl_or_b32 v45, v45, 4, v45
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s10, s27, s4
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s5, s8, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v59, v49, 16, 0
	v_xad_u32 v60, v49, 32, 0
	s_add_i32 s5, s5, s10
	v_xad_u32 v61, v49, 48, 0
	v_xad_u32 v62, v49, 64, 0
	v_xad_u32 v63, 0x50, v49, 0
	v_xad_u32 v65, 0x60, v49, 0
	v_xad_u32 v69, 0x70, v49, 0
	v_add_nc_u32_e32 v85, 0, v50
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_add_nc_u32 v86, 0, v51
	v_add_nc_u32_e32 v87, 0, v52
	v_add_nc_u32_e32 v88, 0, v53
	v_add_nc_u32_e32 v89, 0, v55
	v_add_nc_u32_e32 v90, 0, v47
	v_add_nc_u32_e32 v91, 0, v54
	v_add_nc_u32_e32 v92, 0, v57
	v_add3_u32 v93, s5, v56, v46
	v_and_b32_e32 v94, 0x7060302, v48
	v_and_b32_e32 v97, 0x7050301, v44
	v_and_b32_e32 v98, 0x7050301, v45
	v_lshl_or_b32 v16, v16, 8, v16
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v74, 2, v75
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v26, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v16, 0x760032, v16
	v_xor_b32_e32 v101, 64, v80
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s4, s25, v74
	v_lshl_or_b32 v102, s3, 8, v77
	v_mov_b32_e32 v106, 0xff800000
	v_mov_b32_e32 v104, 0xff800000
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s26, s26, 0x3fb8aa3b
	s_and_b32 s47, s47, 0xffff
	s_mov_b32 s30, 0
	s_mov_b32 s31, 0x76543210
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s33, s3, 5
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
	ds_store_b128 v82, v[8:11]
	s_waitcnt vmcnt(2)
	ds_store_b128 v82, v[12:15] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v82, v[34:37] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v82, v[38:41] offset:6144
	v_mov_b32_e32 v8, v33
	v_lshl_or_b32 v43, v43, 4, v43
	v_mov_b32_e32 v11, v33
	v_lshl_or_b32 v42, v42, 4, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v99, 0x7060706, v43
	v_mov_b32_e32 v13, v33
	v_and_b32_e32 v95, 0x5040504, v42
	ds_load_b128 v[41:44], v58
	ds_load_b128 v[45:48], v59
	ds_load_b128 v[49:52], v60
	ds_load_b128 v[53:56], v61
	ds_load_b128 v[57:60], v62
	ds_load_b128 v[61:64], v63
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v69
	v_mov_b32_e32 v15, v33
	v_lshl_or_b32 v16, v16, 4, v16
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v33
	v_mov_b32_e32 v12, v33
	v_mov_b32_e32 v14, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v96, 0x7060302, v16
	v_mov_b32_e32 v16, v33
	v_xor_b32_e32 v100, 4, v84
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s3, s30, s23
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v40, v33
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s3, s3, s24
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v108, 0, v79
	v_dual_mov_b32 v34, v33 :: v_dual_max_f32 v135, v104, v104
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v110, 0, v81
	v_mov_b32_e32 v38, v33
	v_dual_mov_b32 v39, v33 :: v_dual_max_f32 v106, v106, v106
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s5, s30, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v127, s5, v102
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v119, s3, v73, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v118, v40 :: v_dual_mov_b32 v117, v39
	v_dual_mov_b32 v116, v38 :: v_dual_mov_b32 v115, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v114, v36 :: v_dual_mov_b32 v113, v35
	v_dual_mov_b32 v112, v34 :: v_dual_mov_b32 v111, v33
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v34, 0x80000000, v119, vcc_lo
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v109, v93, s30, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s6, s30, 4
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v107.l, 0
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
	s_mul_i32 s5, s5, s25
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v129.l, v107.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v39.h, v107.l
	v_mov_b16_e32 v109.h, v107.l
	v_mov_b16_e32 v40.h, v107.l
	v_mov_b16_e64 v130.h, v107.l
	v_mov_b16_e64 v132.h, v107.l
	v_mov_b16_e64 v128.h, v107.l
	v_mov_b16_e64 v131.h, v107.l
	v_mov_b16_e64 v133.h, v107.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v136.h, v107.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v105
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v134.h, v107.l
	v_mov_b16_e64 v137.h, v107.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v82, v[34:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_b128 v[34:37], v38, s[48:51], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v108
	ds_load_b128 v[123:126], v85
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[119:126], v[41:48], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v86
	ds_load_b128 v[123:126], v87
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[119:126], v[49:56], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v88
	ds_load_b128 v[123:126], v89
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[119:126], v[57:64], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[119:122], v90
	ds_load_b128 v[123:126], v91
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
	v_mov_b16_e32 v107.h, v38.l
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v34, v108, v38, v94
	v_perm_b32 v35, v108, v38, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v36, v120, v119, v94
	v_perm_b32 v37, v120, v119, v96
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v107
	.loc	1 965 35                        ; attention.py:965:35
	ds_bpermute_b32 v34, v84, v34
	ds_bpermute_b32 v35, v100, v35
	ds_bpermute_b32 v36, v84, v36
	ds_bpermute_b32 v37, v100, v37
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v107.h, v108.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s3, s2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v107
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e32 v107.h, v119.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s9, s2, s9
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v107
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e32 v107.h, v120.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s10, s2, s10
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v121, v35, v34, s1
	v_cndmask_b32_e64 v34, v34, v35, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v122, v37, v36, s1
	v_cndmask_b32_e64 v35, v36, v37, s1
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v107
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v37, 16, v121
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s11, s2, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v125, 0x3fb8aa3b, v37
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v36, 0xffff0000, v121
	v_and_b32_e32 v121, 0xffff0000, v122
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v121, 0x3fb8aa3b, v121 :: v_dual_lshlrev_b32 v122, 16, v122
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v124, 0xffff0000, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v122, 0x3fb8aa3b, v122 :: v_dual_fmac_f32 v125, s26, v111
	v_dual_mul_f32 v126, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v123, 0xffff0000, v34
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v36, s5, v74, 1
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v121, s26, v114
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_dual_mul_f32 v139, 0x3fb8aa3b, v35 :: v_dual_fmac_f32 v126, s26, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v123, 0x3fb8aa3b, v123 :: v_dual_lshlrev_b32 v34, 16, v34
	v_dual_mul_f32 v124, 0x3fb8aa3b, v124 :: v_dual_fmac_f32 v139, s26, v117
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v122, s26, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v138, 0x3fb8aa3b, v34
	.loc	1 977 30 is_stmt 1              ; attention.py:977:30
	v_mad_u64_u32 v[34:35], null, v127, s25, v[74:75]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v35, 0x80000000, v36, s4
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v124, s26, v118 :: v_dual_fmac_f32 v123, s26, v116
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	buffer_load_b32 v111, v34, s[40:43], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[36:37], v35, s[44:47], 0 offen
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v138, s26, v115
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_cndmask_b32_e64 v38, 0, 1, s3
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v107.h, v36.l
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
	v_mov_b16_e32 v119.h, v107.l
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v116, 0, 1, s7
	v_or_b16 v108.l, v37.l, v35.h
	v_lshlrev_b16 v35.h, 8, v38.l
	v_cndmask_b32_e64 v37, 0, 1, s8
	v_cndmask_b32_e64 v38, 0, 1, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v120.h, v107.l
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
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
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v116, v109, 0, 16
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.h, v34.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v36.l, v113.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s14, 0, v36.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v36.l, 0, -16, s12
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v34.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v116, v107, v116
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v39.l, v35.l, v36.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v35.l, v37.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v36.l, 4, v37.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v37.l, v112.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v36.h, 0, -16, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v35.l
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_gt_i16_e64 s15, 0, v37.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v37.l, v34.l, v36.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v34.l, v34.h, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v37, v37, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v111.l, v34.h, v34.l, s13
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v34.l, v35.h, -16
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v34.h, v107.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v112.l, v35.h, v34.l, s14
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v34.l, 0, -16, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v35.h, v107.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v112, v112, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v35.l, v35.l, v34.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v34.l, v36.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v34.l, v36.l, v34.l, s15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v36, v111, 0, 16
	v_bfe_i32 v111, v39, 0, 16
	v_mul_f32_e32 v112, v129, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v113, v34, 0, 16
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v131.l, v112.h
	v_cmp_o_f32_e64 s17, v112, v112
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v113, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v111, v129, v111 :: v_dual_mul_f32 v36, v114, v36
	v_mul_f32_e32 v37, v114, v37
	v_bfe_i32 v114, v35, 0, 16
	v_mul_f32_e32 v113, v115, v113
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v130.l, v111.h
	v_mov_b16_e32 v109.l, v36.h
	v_cmp_o_f32_e64 s14, v111, v111
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s15, v36, v36
	v_and_b32_e32 v117, 1, v130
	v_and_b32_e32 v109, 1, v109
	v_mov_b16_e64 v128.l, v37.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v114, v115, v114
	v_bfe_i32 v115, v40, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v40.l, v116.h
	v_add3_u32 v111, v111, v117, 0x7fff
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_perm_b32 v117, v38, v108, v97
	v_perm_b32 v38, v38, v108, v98
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e64 v132.l, v113.h
	v_add3_u32 v36, v36, v109, 0x7fff
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	ds_bpermute_b32 v109, v84, v117
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v115, v107, v115
	.loc	1 966 25                        ; attention.py:966:25
	ds_bpermute_b32 v38, v100, v38
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v108, 1, v132
	v_mov_b16_e64 v133.l, v114.h
	v_cmp_o_f32_e64 s16, v37, v37
	v_mov_b16_e32 v39.l, v115.h
	v_cmp_o_f32_e64 s12, v115, v115
	v_cmp_o_f32_e64 s18, v113, v113
	v_and_b32_e32 v118, 1, v133
	v_cmp_o_f32_e64 s19, v114, v114
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e64 s13, v116, v116
	v_add3_u32 v40, v116, v40, 0x7fff
	v_and_b32_e32 v116, 1, v131
	v_add3_u32 v108, v113, v108, 0x7fff
	v_add3_u32 v39, v115, v39, 0x7fff
	v_and_b32_e32 v115, 1, v128
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s13
	v_cndmask_b16 v36.l, 0x7fff, v111.h, s14
	v_cndmask_b16 v111.h, 0x7fff, v36.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s12
	v_add3_u32 v37, v37, v115, 0x7fff
	v_add3_u32 v39, v112, v116, 0x7fff
	v_add3_u32 v112, v114, v118, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v107.h, v107.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v111.l, 0x7fff, v37.h, s16
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s17
	v_cndmask_b16 v37.h, 0x7fff, v108.h, s18
	v_cndmask_b16 v37.l, 0x7fff, v112.h, s19
	ds_store_2addr_b32 v83, v40, v111 offset1:8
	ds_store_2addr_b32 v83, v36, v37 offset0:16 offset1:24
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v36, v38, v109, s1
	v_cndmask_b32_e64 v37, v109, v38, s1
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v111, 0x10000, v36
	v_and_b32_e32 v40, 1, v37
	v_and_b32_e32 v38, 1, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s18, 0, v111
	v_cmp_eq_u32_e64 s14, 1, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s12, 1, v38
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v122, v122, 0xff800000, s18
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v39, 0x100, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v40, 0xff800000, v138, s14
	v_cndmask_b32_e64 v38, 0xff800000, v125, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s13, 0, v39
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v114, v40, v38, s1
	v_cndmask_b32_e64 v115, v38, v40, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v39, v126, 0xff800000, s13
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v108, 0x100, v37
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v114, v80, v114
	ds_bpermute_b32 v115, v101, v115
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v112, v38, v39, v122
.Ltmp2:
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s15, 0, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v108, v123, 0xff800000, s15
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v109, 0x10000, v37
	v_and_b32_e32 v37, 0x1000000, v37
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v117, v39, v108, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s16, 0, v109
	v_cmp_eq_u32_e64 s17, 0, v37
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v116, v108, v39, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v109, v139, 0xff800000, s16
	v_cndmask_b32_e64 v37, v124, 0xff800000, s17
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v36, 0x1000000, v36
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v145, v115, v114, s0
	v_cndmask_b32_e64 v146, v114, v115, s0
	v_cndmask_b32_e64 v118, v109, v122, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v111, v109, v37
.Ltmp4:
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s19, 0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v36, v121, 0xff800000, s19
	v_cndmask_b32_e64 v121, v122, v109, s1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v113, v36, v40, v108
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v123, v37, v36, s1
	v_cndmask_b32_e64 v124, v36, v37, s1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v111, v112, v113, v111
.Ltmp8:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v113, v101, v117
	ds_bpermute_b32 v117, v101, v121
	ds_bpermute_b32 v121, v80, v123
	ds_bpermute_b32 v112, v80, v116
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v123, v111, s31, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v116, v80, v118
	ds_bpermute_b32 v118, v101, v124
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v143, v105, v111, v123
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v38, v38, v143
	v_sub_f32_e32 v39, v39, v143
	v_sub_f32_e32 v122, v122, v143
	v_sub_f32_e32 v108, v108, v143
	v_sub_f32_e32 v40, v40, v143
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v36, v143
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v111, v105, v143
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v36, v36
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v138, v111
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v105, v113, v112, s0
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v38, s12
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v139, v112, v113, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v140, v117, v116, s0
	v_cndmask_b32_e64 v141, v116, v117, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v111, v118, v118
.Ltmp12:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v136.l, v38.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v109, v109, v143
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v112, v121, v121
.Ltmp14:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, v39, 0, s13
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v113, v139, v140, v141
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v124, 1, v136
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v109, v109
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v111, v112, v111
	v_max3_f32 v112, v114, v115, v105
.Ltmp18:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v37, v143
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v122, v122, 0, s18
	v_cndmask_b32_e64 v108, v108, 0, s15
	v_cndmask_b32_e64 v40, 0, v40, s14
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v134.l, v39.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, v36, 0, s19
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v142, v118, v121, s0
	v_cndmask_b32_e64 v144, v121, v118, s0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v121, v112, v113, v111
.Ltmp20:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v109, v109, 0, s16
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v34.l, v122.h
	v_mov_b16_e32 v35.l, v108.h
	v_mov_b16_e32 v119.l, v40.h
	v_and_b32_e32 v123, 1, v134
	v_mov_b16_e64 v137.l, v36.h
	v_cmp_o_f32_e64 s12, v39, v39
	v_mov_b16_e32 v107.l, v109.h
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v39, v39, v123, 0x7fff
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v123, v121
.Ltmp22:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v119, 1, v119
	v_and_b32_e32 v125, 1, v137
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, v37, 0, s17
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s15, v122, v122
	v_cmp_o_f32_e64 s16, v108, v108
	v_cmp_o_f32_e64 s17, v40, v40
	v_and_b32_e32 v107, 1, v107
	v_add3_u32 v34, v122, v34, 0x7fff
	v_add3_u32 v35, v108, v35, 0x7fff
	v_add3_u32 v40, v40, v119, 0x7fff
	v_cmp_o_f32_e64 s14, v36, v36
	v_add3_u32 v36, v36, v125, 0x7fff
	v_cmp_o_f32_e64 s19, v109, v109
	v_add3_u32 v107, v109, v107, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v34.h, s15
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s16
	v_cndmask_b16 v34.l, 0x7fff, v40.h, s17
	v_mov_b16_e32 v120.l, v37.h
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v35.l, 0x7fff, v107.h, s19
	v_cmp_o_f32_e64 s13, v38, v38
	v_permlanex16_b32 v107, v34, s31, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v38, v38, v124, 0x7fff
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v108, v123, v123
.Ltmp26:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s18, v37, v37
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s12
	v_perm_b32 v123, v107, v34, v95
	v_perm_b32 v124, v107, v34, v99
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v34, 0, v138, s20
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v120, 1, v120
	v_cndmask_b16 v39.l, 0x7fff, v38.h, s13
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s14
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[115:118], v92
	ds_load_b128 v[111:114], v110
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v34
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v37, v37, v120, 0x7fff
	v_permlanex16_b32 v38, v39, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v36, s31, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v34
	v_mul_f32_e32 v28, v28, v34
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s18
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v37, v121, v108
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v119, v38, v39, v95
	v_perm_b32 v120, v38, v39, v99
	v_perm_b32 v121, v40, v36, v95
	v_permlanex16_b32 v108, v35, s31, 0xfedcba98 op_sel:[1,0]
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v106, v106, v37
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v122, v40, v36, v99
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v34
	v_mul_f32_e32 v32, v32, v34
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v125, v108, v35, v95
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v139, v106
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v126, v108, v35, v99
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v107, v142, v106
	v_sub_f32_e32 v36, v145, v106
	v_sub_f32_e32 v40, v140, v106
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v35, v135, v37
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v107, v107
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v37, v146, v106
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v40, v40
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	ds_load_b128 v[127:130], v110 offset:512
	ds_load_b128 v[131:134], v92 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v34
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v39, s6
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v108, v144, v106
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v107, 0, v107, s11
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s3
	v_cndmask_b32_e64 v40, 0, v40, s10
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v108, v108
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s5
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v34
	v_mul_f32_e32 v21, v21, v34
	v_mul_f32_e32 v23, v23, v34
	v_mul_f32_e32 v24, v24, v34
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_mul_f32 v1, v1, v34
.Ltmp30:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v108, 0, v108, s8
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v38, v105, v106
	v_sub_f32_e32 v105, v141, v106
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v34
	v_mul_f32_e32 v5, v5, v34
	v_mul_f32_e32 v6, v6, v34
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v105, v105
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v34
	v_mul_f32_e32 v8, v8, v34
	v_mul_f32_e32 v9, v9, v34
	v_mul_f32_e32 v10, v10, v34
	v_mul_f32_e32 v11, v11, v34
	v_mul_f32_e32 v12, v12, v34
	v_mul_f32_e32 v13, v13, v34
	v_mul_f32_e32 v14, v14, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v38, s9
	v_cndmask_b32_e64 v105, 0, v105, s7
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v34
	v_mul_f32_e32 v15, v15, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v16, v16, v34 :: v_dual_add_f32 v37, v38, v39
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v38, v40, v105 :: v_dual_add_f32 v39, v107, v108
.Ltmp32:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v34
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_mov_b32 v105, v143
	v_add_f32_e32 v37, v38, v39
.Ltmp34:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[111:118], v[119:126], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[111:114], v110 offset:1024
	ds_load_b128 v[135:138], v110 offset:1536
	ds_load_b128 v[115:118], v92 offset:1024
	ds_load_b128 v[139:142], v92 offset:1536
	v_mov_b32_e32 v38, v103
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp36:
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v37, v104, v35 :: v_dual_mul_f32 v22, v22, v34
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v34
	v_mov_b32_e32 v104, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v34, v37
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v37, v36
.Ltmp38:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[127:134], v[119:126], v[17:24]
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v34, 0, v34, s3
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v103, v36, v37
.Ltmp42:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[111:118], v[119:126], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[135:142], v[119:126], v[9:16]
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s3, s30, 16
	s_cmpk_lt_u32 s30, 0x1f0
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v103, v38, v34
	s_mov_b32 s30, s3
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 787 79                        ; attention.py:787:79
	v_bfe_u32 v36, v0, 4, 1
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 903 13                        ; attention.py:903:13
	v_or_b32_e32 v0, v78, v36
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v36
	v_or_b32_e32 v34, 32, v36
	v_or_b32_e32 v35, 16, v36
	.loc	1 903 13                        ; attention.py:903:13
	v_lshlrev_b32_e32 v0, 2, v0
	ds_bpermute_b32 v38, v0, v103
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v37, v0, v75
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v77
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s22, v37
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s21, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v39
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s25, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v27
	v_div_scale_f32 v45, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v47, null, v38, v38, v29
	v_rcp_f32_e32 v52, v41
	v_rcp_f32_e32 v53, v43
	v_rcp_f32_e32 v54, v45
	v_div_scale_f32 v49, null, v38, v38, v30
	v_rcp_f32_e32 v55, v47
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_fma_f32 v60, -v39, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v56, v49
	v_fma_f32 v61, -v41, v52, 1.0
	v_fma_f32 v62, -v43, v53, 1.0
	v_fma_f32 v63, -v45, v54, 1.0
	v_fmac_f32_e32 v51, v60, v51
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_div_scale_f32 v44, s2, v27, v38, v27
	v_div_scale_f32 v46, s3, v28, v38, v28
	v_fma_f32 v64, -v47, v55, 1.0
	v_dual_fmac_f32 v52, v61, v52 :: v_dual_fmac_f32 v53, v62, v53
	v_fmac_f32_e32 v54, v63, v54
	v_mul_f32_e32 v60, v40, v51
	v_fma_f32 v65, -v49, v56, 1.0
	v_fmac_f32_e32 v55, v64, v55
	v_dual_mul_f32 v61, v42, v52 :: v_dual_mul_f32 v62, v44, v53
	v_mul_f32_e32 v63, v46, v54
	v_fma_f32 v64, -v39, v60, v40
	v_div_scale_f32 v48, s4, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v43, v62, v44
	v_fma_f32 v67, -v45, v63, v46
	v_fmac_f32_e32 v56, v65, v56
	v_fma_f32 v65, -v41, v61, v42
	v_fmac_f32_e32 v60, v64, v51
	v_div_scale_f32 v50, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v68, v48, v55 :: v_dual_fmac_f32 v61, v65, v52
	v_fmac_f32_e32 v62, v66, v53
	v_fma_f32 v39, -v39, v60, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v59, v50
	v_fmac_f32_e32 v63, v67, v54
	v_fma_f32 v40, -v41, v61, v42
	v_fma_f32 v41, -v43, v62, v44
	v_div_fmas_f32 v39, v39, v51, v60
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v58, null, v38, v38, v32
	v_fma_f32 v42, -v45, v63, v46
	v_div_fmas_f32 v40, v40, v52, v61
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v57, s5, v30, v38, v30
	v_div_fmas_f32 v41, v41, v53, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v42, v54, v63
	v_fma_f32 v42, -v50, v59, 1.0
	v_rcp_f32_e32 v43, v58
	v_div_fixup_f32 v26, v40, v38, v26
	v_mul_f32_e32 v40, v57, v56
	v_fma_f32 v64, -v47, v68, v48
	v_fmac_f32_e32 v59, v42, v59
	v_div_scale_f32 v42, null, v38, v38, v17
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v49, v40, v57
	v_div_scale_f32 v41, s2, v31, v38, v31
	v_fma_f32 v44, -v58, v43, 1.0
	v_rcp_f32_e32 v46, v42
	v_fmac_f32_e32 v68, v64, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v39, v56 :: v_dual_mul_f32 v39, v41, v59
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s3, v32, v38, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v68, v48
	v_fma_f32 v47, -v49, v40, v57
	v_fma_f32 v48, -v50, v39, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v42, v46, 1.0
	v_mul_f32_e32 v49, v44, v43
	v_div_scale_f32 v52, null, v38, v38, v18
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v39, v48, v59
	v_div_fmas_f32 v45, v45, v55, v68
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v46, v51, v46
	v_div_fmas_f32 v40, v47, v56, v40
	v_rcp_f32_e32 v47, v52
	v_fma_f32 v48, -v58, v49, v44
	v_div_scale_f32 v51, s4, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v40, v38, v30
	v_fma_f32 v40, -v50, v39, v41
	v_fmac_f32_e32 v49, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v41, v51, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v45, v38, v29
	v_fma_f32 v45, -v52, v47, 1.0
	v_div_fmas_f32 v39, v40, v59, v39
	v_fma_f32 v40, -v58, v49, v44
	v_fma_f32 v44, -v42, v41, v51
	v_div_scale_f32 v48, null, v38, v38, v19
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v50, s2, v18, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v46
	v_rcp_f32_e32 v45, v48
	v_div_scale_f32 v53, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v50, v47
	v_div_fixup_f32 v31, v39, v38, v31
	v_fma_f32 v39, -v42, v41, v51
	v_div_scale_f32 v51, null, v38, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v19, v38, v19
	v_div_fmas_f32 v40, v40, v43, v49
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v43, v53
	v_div_fmas_f32 v39, v39, v46, v41
	v_rcp_f32_e32 v41, v51
	v_fma_f32 v49, -v48, v45, 1.0
	v_div_fixup_f32 v32, v40, v38, v32
	v_fma_f32 v40, -v52, v44, v50
	v_div_fixup_f32 v17, v39, v38, v17
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v46, s4, v20, v38, v20
	v_fma_f32 v49, -v53, v43, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v51, v41, 1.0
	v_fmac_f32_e32 v44, v40, v47
	v_mul_f32_e32 v40, v42, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v38
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v55, v41
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, null, v38, v38, v22
	v_fma_f32 v39, -v52, v44, v50
	v_fma_f32 v50, -v48, v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v54, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v50, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v54, v50, v54
	v_div_fmas_f32 v39, v39, v47, v44
	v_div_scale_f32 v47, s2, v21, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v39, v38, v18
	v_fma_f32 v39, -v48, v40, v42
	v_mul_f32_e32 v42, v47, v41
	v_mul_f32_e32 v52, v46, v43
	v_div_scale_f32 v48, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v45, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v53, v52, v46
	v_fma_f32 v45, -v51, v42, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v39, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v44, v43
	v_div_scale_f32 v44, s5, v22, v38, v22
	v_fmac_f32_e32 v42, v45, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v53, v52, v46
	v_div_scale_f32 v53, null, v38, v38, v24
	v_rcp_f32_e32 v46, v48
	v_fma_f32 v39, -v51, v42, v47
	v_div_fmas_f32 v40, v40, v43, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v53
	v_mul_f32_e32 v50, v44, v54
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, null, v38, v38, v2
	v_div_fmas_f32 v39, v39, v41, v42
	v_fma_f32 v45, -v49, v50, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v48, v46, 1.0
	v_div_fixup_f32 v20, v40, v38, v20
	v_div_scale_f32 v40, s3, v23, v38, v23
	v_fmac_f32_e32 v50, v45, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v45, -v53, v43, 1.0
	v_div_fixup_f32 v21, v39, v38, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v49, v50, v44
	v_div_scale_f32 v44, null, v38, v38, v1
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s2, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_fmac_f32_e32 v46, v52, v46
	v_div_fmas_f32 v41, v41, v54, v50
	v_div_scale_f32 v54, null, v38, v38, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v40, v46
	v_div_fixup_f32 v22, v41, v38, v22
	v_rcp_f32_e32 v41, v51
	v_rcp_f32_e32 v56, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v48, v42, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v49, v46
	v_fma_f32 v49, -v44, v47, 1.0
	v_fma_f32 v52, -v51, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v48, v42, v40
	v_div_scale_f32 v48, null, v38, v38, v3
	v_fmac_f32_e32 v47, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_div_fmas_f32 v40, v40, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, s3, v2, v38, v2
	v_div_fixup_f32 v23, v40, v38, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v46, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v48, v49, 1.0
	v_dual_mul_f32 v50, v45, v43 :: v_dual_fmac_f32 v49, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v53, v50, v45
	v_div_scale_f32 v52, s5, v3, v38, v3
	v_fmac_f32_e32 v50, v39, v43
	v_div_scale_f32 v39, s4, v1, v38, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v53, v50, v45
	v_mul_f32_e32 v45, v39, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v50
	v_fma_f32 v53, -v44, v45, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v51, v55, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v42, v38, v24
	v_fmac_f32_e32 v45, v53, v47
	v_fma_f32 v42, -v54, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v5
	v_fma_f32 v39, -v44, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v42, v56
	v_div_scale_f32 v42, s2, v4, v38, v4
	v_fma_f32 v44, -v51, v55, v46
	v_div_fmas_f32 v39, v39, v47, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v42, v56 :: v_dual_mul_f32 v50, v52, v49
	v_div_fmas_f32 v41, v44, v41, v55
	v_div_scale_f32 v46, null, v38, v38, v6
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v50, v52
	v_div_fixup_f32 v1, v39, v38, v1
	v_div_fixup_f32 v2, v41, v38, v2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v40, v49
	v_rcp_f32_e32 v40, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v48, v50, v52
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v44, v44, v49, v50
	v_fma_f32 v47, -v43, v40, 1.0
	v_fma_f32 v49, -v54, v45, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v44, v38, v3
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s3, v5, v38, v5
	v_fmac_f32_e32 v45, v49, v56
	v_div_scale_f32 v44, null, v38, v38, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v47, v40
	v_fma_f32 v41, -v46, v48, 1.0
	v_fma_f32 v42, -v54, v45, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v43, v39, v47
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s4, v6, v38, v6
	v_div_fmas_f32 v42, v42, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v38, v38, v8
	v_div_fixup_f32 v4, v42, v38, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v42, -v43, v39, v47
	v_fma_f32 v47, -v44, v50, 1.0
	v_mul_f32_e32 v45, v41, v48
	v_rcp_f32_e32 v51, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v42, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v9
	v_fmac_f32_e32 v50, v47, v50
	v_fma_f32 v43, -v46, v45, v41
	v_div_scale_f32 v42, s2, v7, v38, v7
	v_div_fixup_f32 v5, v39, v38, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v47, null, v38, v38, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v39, v51
	v_fma_f32 v41, -v46, v45, v41
	v_mul_f32_e32 v46, v42, v50
	v_div_scale_f32 v39, s3, v8, v38, v8
	v_rcp_f32_e32 v53, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v40, v43, 1.0
	v_div_scale_f32 v54, s4, v9, v38, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v47, v53, 1.0
	v_mul_f32_e32 v57, v54, v43
	v_div_fmas_f32 v41, v41, v48, v45
	v_fma_f32 v45, -v44, v46, v42
	v_mul_f32_e32 v48, v39, v51
	v_fmac_f32_e32 v53, v55, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v41, v38, v6
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_rcp_f32_e32 v56, v52
	v_div_scale_f32 v55, s5, v10, v38, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v44, v46, v42
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v50, v46
	v_fma_f32 v39, -v49, v48, v39
	v_div_scale_f32 v46, null, v38, v38, v12
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v52, v56, 1.0
	v_div_fmas_f32 v39, v39, v51, v48
	v_rcp_f32_e32 v48, v46
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v11, v38, v11
	v_div_fixup_f32 v7, v41, v38, v7
	v_fma_f32 v40, -v40, v57, v54
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v8, v39, v38, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v48, 1.0
	v_div_scale_f32 v50, null, v38, v38, v16
	v_div_fmas_f32 v40, v40, v43, v57
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v41, v48
	v_fmac_f32_e32 v44, v42, v53
	v_mul_f32_e32 v42, v45, v56
	v_div_scale_f32 v41, null, v38, v38, v14
	v_div_fixup_f32 v9, v40, v38, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_div_scale_f32 v40, null, v38, v38, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v43, v43, v53, v44
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v43, v38, v10
	v_fma_f32 v39, -v52, v42, v45
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v43, null, v38, v38, v15
	v_rcp_f32_e32 v52, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v51, -v41, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v51, v45
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v44, vcc_lo, v12, v38, v12
	v_div_scale_f32 v51, s3, v14, v38, v14
	v_div_fixup_f32 v11, v39, v38, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v56, -v50, v52, 1.0
	v_mul_f32_e32 v57, v51, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v15, v38, v15
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v13, v38, v13
	v_fma_f32 v53, -v46, v49, v44
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s5, v16, v38, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v39, v42
	v_dual_fmac_f32 v49, v53, v48 :: v_dual_mul_f32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v40, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fmac_f32_e32 v55, v53, v42
	v_fma_f32 v53, -v43, v58, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v46, v45
	v_div_fmas_f32 v44, v44, v48, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_fmac_f32_e32 v58, v53, v47
	v_fma_f32 v41, -v41, v57, v51
	v_div_fixup_f32 v12, v44, v38, v12
	v_div_fmas_f32 v39, v39, v42, v55
	v_fmac_f32_e32 v59, v40, v52
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v45, v57
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v13, v39, v38, v13
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v41, v38, v14
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s25, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v15, v40, v38, v15
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v42, v38, v16
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v38, v37, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s25, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 16, v38
	v_add_nc_u32_e32 v36, 8, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s25, v35
	v_cmp_gt_i32_e64 s3, s25, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	s_clause 0x2
	buffer_store_b32 v25, v40, s[28:31], 0 offen
	buffer_store_b32 v26, v36, s[28:31], 0 offen
	buffer_store_b32 v27, v39, s[28:31], 0 offen
	v_add_nc_u32_e32 v39, 56, v38
	v_add_nc_u32_e32 v36, 48, v38
	v_add_nc_u32_e32 v25, 24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_add_nc_u32 v27, 40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v26, 32, v38
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x4
	buffer_store_b32 v28, v25, s[28:31], 0 offen
	buffer_store_b32 v29, v26, s[28:31], 0 offen
	buffer_store_b32 v30, v27, s[28:31], 0 offen
	buffer_store_b32 v31, v36, s[28:31], 0 offen
	buffer_store_b32 v32, v39, s[28:31], 0 offen
	v_add_lshl_u32 v25, v37, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[28:31], 0 offen
	buffer_store_b32 v18, v26, s[28:31], 0 offen
	buffer_store_b32 v19, v27, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[28:31], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[28:31], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[28:31], 0 offen
	buffer_store_b32 v24, v20, s[28:31], 0 offen
	buffer_store_b32 v1, v17, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_store_b32 v2, v17, s[28:31], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v3, v1, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v4, v2, s[28:31], 0 offen
	buffer_store_b32 v5, v17, s[28:31], 0 offen
	buffer_store_b32 v6, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v2, 0xb8, v38
	v_add_lshl_u32 v3, v37, v33, 2
	v_add_nc_u32_e32 v4, 0xc8, v38
	v_add_nc_u32_e32 v5, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	s_clause 0x4
	buffer_store_b32 v7, v1, s[28:31], 0 offen
	buffer_store_b32 v8, v2, s[28:31], 0 offen
	buffer_store_b32 v9, v3, s[28:31], 0 offen
	buffer_store_b32 v10, v4, s[28:31], 0 offen
	buffer_store_b32 v11, v5, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v4, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x4
	buffer_store_b32 v12, v1, s[28:31], 0 offen
	buffer_store_b32 v13, v2, s[28:31], 0 offen
	buffer_store_b32 v14, v3, s[28:31], 0 offen
	buffer_store_b32 v15, v4, s[28:31], 0 offen
	buffer_store_b32 v16, v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 147
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 147
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9048
; TotalNumSgprs: 54
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 147
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
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
