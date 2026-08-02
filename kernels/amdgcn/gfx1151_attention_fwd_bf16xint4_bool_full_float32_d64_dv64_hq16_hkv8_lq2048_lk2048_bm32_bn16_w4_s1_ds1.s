	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v17, 0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v13, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s15, s33, s2
	.loc	1 787 79 is_stmt 0              ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v13
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x10
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	v_mov_b32_e32 v4, v17
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_bfe_i32 v16, v0, 5, 1
	v_and_b32_e32 v22, 31, v0
	v_lshrrev_b32_e32 v23, 1, v0
	v_bfe_i32 v29, v0, 2, 1
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s16, v2, v[1:2]
	.loc	1 790 61 is_stmt 1              ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s16, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s10, s16, 4
	v_and_b32_e32 v16, 0x84, v16
	v_and_b32_e32 v23, 12, v23
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s16, s15, v[65:66]
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v66, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	v_lshlrev_b32_e32 v19, 1, v0
	v_lshlrev_b32_e32 v18, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v1, 1, v2
	v_add_lshl_u32 v2, v2, s10, 1
	v_and_b32_e32 v19, 0x70, v19
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v69, 32, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v15, 3, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_xor_b32_e32 v18, v18, v19
	v_lshlrev_b32_e32 v28, 5, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v67, 64, v0
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_b128 v[5:8], v1, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v2, s[24:27], 0 offen
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v75, 0, v18
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_lshlrev_b32 v13, 4, v13
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v68, 16, v0
	v_and_b32_e32 v24, 12, v0
	v_and_b32_e32 v28, 0x160, v28
	v_and_b32_e32 v29, 0x90, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v71, v66, 7, v13
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v20, 0x70, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_lshlrev_b32_e32 v26, 7, v0
	v_bfe_i32 v27, v0, 0, 1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v14, 2, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v70, 0x7c, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v21, 4, v0
	v_and_b32_e32 v25, 48, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s0, 4
	v_dual_mov_b32 v101, 0xff800000 :: v_dual_lshlrev_b32 v0, 2, v66
	v_lshlrev_b32_e32 v36, 3, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	v_and_b32_e32 v27, 0x90, v27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s33, v14
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s3, s1, s0
	v_lshlrev_b32_e32 v41, 2, v68
	s_bfe_i32 s3, s3, 0x80000
	v_add_nc_u32_e32 v73, 0, v0
	s_sext_i32_i16 s3, s3
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v14
	v_mul_lo_u32 v14, s9, v14
	v_lshlrev_b32_e32 v40, 1, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s3, s3, 1
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s8, s1
	.loc	1 937 33                        ; attention.py:937:33
	s_lshl3_add_u32 s3, s2, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s2, s19, s2
	v_lshl_or_b32 v82, s3, 10, v21
	s_add_i32 s4, s4, s2
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s17, v0
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s18, s18, 0x3fb8aa3b
	s_mov_b32 s34, 0
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[22:23], s[38:39]
	s_and_b32 s25, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s19, s3, 11
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s40, s3, 7
	s_mov_b32 s24, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v75, v[5:8]
	s_waitcnt vmcnt(0)
	ds_store_b128 v75, v[9:12] offset:2048
	v_mov_b32_e32 v9, 0
	v_lshlrev_b32_e32 v31, 2, v22
	v_lshlrev_b32_e32 v22, 4, v22
	v_mov_b32_e32 v12, v17
	v_lshrrev_b32_e32 v33, 4, v69
	v_lshlrev_b32_e32 v35, 2, v69
	v_dual_mov_b32 v10, v17 :: v_dual_lshlrev_b32 v43, 4, v69
	v_dual_mov_b32 v103, 0xff800000 :: v_dual_lshlrev_b32 v30, 2, v15
	v_lshlrev_b32_e32 v15, 5, v15
	v_xor_b32_e32 v13, v16, v31
	v_or3_b32 v72, v22, v33, v23
	v_mov_b32_e32 v8, v17
	v_lshrrev_b32_e32 v32, 5, v67
	v_lshl_or_b32 v16, v68, 4, v35
	v_or3_b32 v74, v29, v43, v28
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v34, 1, v24
	v_lshl_or_b32 v15, v24, 7, v15
	v_or_b32_e32 v76, v13, v32
	v_xor_b32_e32 v13, 4, v72
	v_mov_b32_e32 v7, v17
	v_lshrrev_b32_e32 v20, 2, v20
	v_or3_b32 v77, v15, v16, v34
	v_xor_b32_e32 v16, 16, v74
	v_add_nc_u32_e32 v90, 0, v13
	v_dual_mov_b32 v13, v17 :: v_dual_and_b32 v26, 0x700, v26
	v_lshrrev_b32_e32 v42, 1, v67
	v_lshlrev_b32_e32 v39, 1, v69
	v_lshl_or_b32 v18, v69, 6, v71
	v_add_nc_u32_e32 v94, 0, v16
	v_mov_b32_e32 v16, v17
	v_lshrrev_b32_e32 v37, 1, v25
	v_lshl_or_b32 v19, v25, 5, v36
	v_xor_b32_e32 v20, v27, v20
	v_add_nc_u32_e32 v24, 0, v26
	v_add3_u32 v22, 0, v41, v69
	v_add_nc_u32_e32 v23, 0, v42
	v_lshl_add_u32 v38, v67, 1, 0
	v_xor_b32_e32 v25, 16, v71
	v_xor_b32_e32 v26, 32, v71
	v_xor_b32_e32 v27, 48, v71
	v_xor_b32_e32 v28, 64, v71
	v_xor_b32_e32 v29, 0x50, v71
	v_xor_b32_e32 v31, 0x60, v71
	v_xor_b32_e32 v33, 0x70, v71
	v_xor_b32_e32 v32, 8, v72
	v_xor_b32_e32 v35, 12, v72
	v_xor_b32_e32 v15, v19, v37
	v_add_nc_u32_e32 v78, v73, v39
	v_add_nc_u32_e32 v19, 0, v18
	v_xor_b32_e32 v34, 0x108, v76
	v_xor_b32_e32 v36, 8, v77
	v_xor_b32_e32 v37, 16, v77
	v_xor_b32_e32 v39, 24, v77
	v_add_nc_u32_e32 v81, v24, v20
	v_xad_u32 v20, v18, 16, 0
	v_xad_u32 v21, v18, 32, 0
	v_add_nc_u32_e32 v79, v22, v40
	v_xad_u32 v22, v18, 48, 0
	v_add_nc_u32_e32 v80, v23, v40
	v_xad_u32 v23, v18, 64, 0
	v_xad_u32 v49, 0x60, v18, 0
	v_xad_u32 v24, 0x50, v18, 0
	v_xad_u32 v18, 0x70, v18, 0
	v_add_nc_u32_e32 v83, 0, v25
	v_add_nc_u32_e32 v84, 0, v26
	v_add_nc_u32_e32 v85, 0, v27
	v_add_nc_u32_e32 v86, 0, v28
	v_add_nc_u32_e32 v87, 0, v29
	v_add_nc_u32_e32 v88, 0, v31
	v_add_nc_u32_e32 v89, 0, v33
	v_add_nc_u32_e32 v91, 0, v32
	v_add_nc_u32_e32 v92, 0, v35
	v_add_nc_u32_e32 v93, v38, v15
	v_add3_u32 v95, s4, v30, v14
	v_add_nc_u32_e32 v96, 0, v34
	v_add_nc_u32_e32 v97, 0, v36
	v_add_nc_u32_e32 v98, 0, v37
	v_add_nc_u32_e32 v99, 0, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v19
	ds_load_b128 v[29:32], v20
	ds_load_b128 v[33:36], v21
	ds_load_b128 v[37:40], v22
	ds_load_b128 v[41:44], v23
	ds_load_b128 v[45:48], v24
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v18
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v6, v17
	v_mov_b32_e32 v14, v17
	v_mov_b32_e32 v15, v17
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	v_and_b16 v18.h, 0xff, v19.h
	v_and_b16 v19.h, 0xff, v21.l
	v_and_b16 v19.l, 0xff, v19.l
	v_and_b16 v20.l, 0xff, v20.l
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s2, 0, v18.h
	v_cmp_ne_u16_e64 s3, 0, v19.h
	v_cmp_ne_u16_e64 s4, 0, v19.l
	v_cmp_ne_u16_e64 s5, 0, v20.l
	.loc	1 962 25                        ; attention.py:962:25
	s_barrier
	s_and_b32 s2, s0, s2
	s_and_b32 s3, s0, s3
	v_cndmask_b32_e64 v19, 0, 1, s2
	v_cndmask_b32_e64 v20, 0, 1, s3
	s_and_b32 s4, s0, s4
	s_and_b32 s5, s0, s5
	v_cndmask_b32_e64 v21, 0, 1, s4
	v_lshlrev_b16 v18.h, 8, v19.l
	v_cndmask_b32_e64 v22, 0, 1, s5
	v_lshlrev_b16 v19.l, 8, v20.l
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v23, s18, v57 :: v_dual_add_nc_u32 v20, 0, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v18.h, v21.l, v18.h
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v24, s18, v58 :: v_dual_add_nc_u32 v21, 0, v72
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v19.l, v22.l, v19.l
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s14, s34, 1
	.loc	1 962 25                        ; attention.py:962:25
	ds_store_b16_d16_hi v20, v18
	ds_store_b16 v96, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v18, v21
	ds_load_u16_d16 v19, v90
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v19, v91
	ds_load_u16_d16 v20, v92
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v59, s18, v59 :: v_dual_mul_f32 v60, s18, v60
	v_dual_mul_f32 v61, s18, v61 :: v_dual_mul_f32 v62, s18, v62
	v_dual_mul_f32 v63, s18, v63 :: v_dual_mul_f32 v64, s18, v64
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v109.l, v18.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v18.l
	v_mov_b16_e32 v111.h, v18.l
	v_mov_b16_e32 v112.h, v18.l
	v_mov_b16_e32 v114.h, v18.l
	v_mov_b16_e32 v115.h, v18.l
	v_mov_b16_e32 v116.h, v18.l
	.loc	1 962 25                        ; attention.py:962:25
	v_lshrrev_b16 v20.h, 8, v18.h
	v_lshrrev_b16 v21.l, 8, v19.l
	v_and_b16 v19.l, 1, v19.l
	v_lshrrev_b16 v21.h, 8, v19.h
	v_and_b16 v19.h, 1, v19.h
	v_lshrrev_b16 v22.l, 8, v20.l
	v_and_b16 v20.l, 1, v20.l
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s8, 1, v19.l
	v_cmp_eq_u16_e64 s10, 1, v19.h
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v108, v101, v101 :: v_dual_add_nc_u32 v19, s14, v82
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v21.l, 1, v21.l
	v_and_b16 v21.h, 1, v21.h
	v_and_b16 v22.l, 1, v22.l
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s14, s34, 4
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s7, 1, v20.h
	v_cmp_eq_u16_e64 s12, 1, v20.l
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[19:20], null, v19, s17, v[0:1]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s14, s14, s40
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s6, 1, v18.h
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s14, s14, s17
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s9, 1, v21.l
	v_cmp_eq_u16_e64 s11, 1, v21.h
	v_cmp_eq_u16_e64 s13, 1, v22.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v20, s14, v0, 1
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v57, 0xff800000, v23, s6
	v_cndmask_b32_e64 v58, 0xff800000, v24, s7
	v_cndmask_b32_e64 v59, 0xff800000, v59, s8
	v_cndmask_b32_e64 v60, 0xff800000, v60, s9
	v_cndmask_b32_e64 v61, 0xff800000, v61, s10
	v_cndmask_b32_e64 v62, 0xff800000, v62, s11
	v_cndmask_b32_e64 v63, 0xff800000, v63, s12
	v_cndmask_b32_e64 v64, 0xff800000, v64, s13
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v102, v102, v102 :: v_dual_add_nc_u32 v21, 0, v77
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v106, v60, v61, v62
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b64 v21, v[57:58]
	ds_store_b64 v97, v[59:60]
	ds_store_b64 v98, v[61:62]
	ds_store_b64 v99, v[63:64]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v24, v19, s[28:31], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[104:105], v20, s[36:39], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b64 v[20:23], v93 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v19, v57, v58, v59
	v_max_f32_e32 v107, v63, v64
.Ltmp4:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v103
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v106, v19, v106, v107
.Ltmp6:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v107.h, v18.l
	.loc	1 962 25                        ; attention.py:962:25
	.loc	1 990 39                        ; attention.py:990:39
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v113, v106, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v120, v103, v106, v113
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v106, v22, v22 :: v_dual_add_nc_u32 v19, v73, v67
	v_max_f32_e32 v113, v20, v20
.Ltmp10:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v117, v103, v120
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v58, v58, v120
	v_sub_f32_e32 v61, v61, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v106, v113, v106
.Ltmp12:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v113, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v106, v106, v21, v23
.Ltmp14:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v60, v60, v120 :: v_dual_mov_b32 v117, v106
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v103, 0, v113, s14
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v61, 0, v61, s10
	v_cndmask_b32_e64 v58, 0, v58, s7
.Ltmp15:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v117, v117 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v78, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v121, v19
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v62, v62, v120 :: v_dual_max_f32 v103, v117, v117
	v_sub_f32_e32 v64, v64, v120
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v122, v61, 16, 1
	v_cmp_o_f32_e64 s10, v61, v61
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v60, 0, v60, s9
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v103, v106, v103
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v117, v58, 16, 1
	v_add3_u32 v61, v61, v122, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	v_bfe_u32 v118, v60, 16, 1
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v119, v103
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v58, v58, v117, 0x7fff
	v_cmp_o_f32_e64 s9, v60, v60
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v63, v63, v120
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v60, v60, v118, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v64, v64
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v121
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v119, v119 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v121
	v_mul_f32_e32 v2, v2, v121
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v63, v63
	.loc	1 1019 30                       ; attention.py:1019:30
	s_barrier
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v119, v119, v119
.Ltmp24:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v62, 0, v62, s11
	v_cndmask_b32_e64 v64, 0, v64, s13
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v121
	v_mul_f32_e32 v9, v9, v121
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v103, v103, v119
.Ltmp26:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v121
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v123, v62, 16, 1
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v63, 0, v63, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v125, v64, 16, 1
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v122, v108, v103
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v62, v62
	v_cmp_o_f32_e64 s13, v64, v64
	v_bfe_u32 v124, v63, 16, 1
	v_cmp_o_f32_e64 s12, v63, v63
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v108, v101, v122
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v102, v102, v103 :: v_dual_sub_f32 v57, v57, v120
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v62, v62, v123, 0x7fff
	v_add3_u32 v63, v63, v124, 0x7fff
	v_add3_u32 v64, v64, v125, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v22, v22, v102
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v57, v57
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v21, v21, v102
	v_sub_f32_e32 v23, v23, v102
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v121
	v_mul_f32_e32 v13, v13, v121
	v_mul_f32_e32 v15, v15, v121
	v_mul_f32_e32 v8, v8, v121
	v_mul_f32_e32 v10, v10, v121
	v_mul_f32_e32 v12, v12, v121
	v_mul_f32_e32 v14, v14, v121
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v57, 0, v57, s6
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v16, v16, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v113, v57, 16, 1
	v_cmp_o_f32_e64 s6, v57, v57
	v_add3_u32 v57, v57, v113, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v113, v23
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v23.l, 0x7fff, v64.h, s13
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v18.h, 0x7fff, v57.h, s6
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v57, v20, v102
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v20.l, 0x7fff, v58.h, s7
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v58, v22
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v22.l, 0x7fff, v62.h, s11
	v_cndmask_b16 v22.h, 0x7fff, v63.h, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v58, 0, v58, s5
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v103.l, v24.h
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v118, 0xffff0000, v104
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v57, v57
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v119, 0xffff0000, v105
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v117, 24, v24
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v109.h, v105.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v124, v103, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_bfe_i32 v125, v117, 0, 8
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v57, 0, v57, s4
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v59, v59, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v59, v59
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v59, 0, v59, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v106, v59, 16, 1
	v_cmp_o_f32_e64 s8, v59, v59
	v_add3_u32 v59, v59, v106, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v106, v21
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v21.l, 0x7fff, v60.h, s9
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v60, 0, v113, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v21.h, 0x7fff, v61.h, s10
	v_cndmask_b16 v20.h, 0x7fff, v59.h, s8
	ds_store_b16_d16_hi v79, v18
	ds_store_b16 v79, v20 offset:128
	ds_store_b16_d16_hi v79, v20 offset:256
	ds_store_b16 v79, v21 offset:384
	ds_store_b16_d16_hi v79, v21 offset:512
	ds_store_b16 v79, v22 offset:640
	ds_store_b16_d16_hi v79, v22 offset:768
	ds_store_b16 v79, v23 offset:896
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v20, v57, v58
.Ltmp28:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v23, 8, v24
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v59, 0, v106, s2
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v22, v24, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v18.h, v104.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v104, 20, v24
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v105, v23, 0, 8
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v21, v59, v60
.Ltmp30:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v22.h, v23.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v22.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v23.h, 4, v117.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v103.l, v105.l
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v20, v20, v21
.Ltmp32:
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v105.l, v125.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v106.h, v18.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.h, v23.h, -16
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v21, v20
.Ltmp34:
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v105.l
	.loc	1 1019 30                       ; attention.py:1019:30
	s_barrier
	ds_load_u16_d16 v57, v80
	ds_load_u16_d16 v58, v80 offset:128
	ds_load_u16_d16 v59, v80 offset:256
	ds_load_u16_d16 v60, v80 offset:384
	ds_load_u16_d16 v61, v80 offset:512
	ds_load_u16_d16 v62, v80 offset:640
	ds_load_u16_d16 v63, v80 offset:768
	ds_load_u16_d16 v64, v80 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v80 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v80 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v59, v80 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v60, v80 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v61, v80 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v62, v80 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v63, v80 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v64, v80 offset:960
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v123, v20, v21
.Ltmp38:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v20.l, 4, v24.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v20.h, v24.l, 15
	v_and_b16 v21.l, v24.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v21.h, 4, v23.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v24.l, v117.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v20.l, v20.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v20.h
	v_cmp_lt_u16_e64 s3, 7, v21.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v21.h, v21.h, 15
	v_and_b16 v23.l, v104.l, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v22.l, v20.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v24.h, 0, -16, s2
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v22.h
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_mov_b16_e32 v104.l, v124.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v104.h, 0, -16, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v24.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v106.l, v20.h, v24.h
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v22.l, v20.l, v22.l, s4
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v103.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v20.l, v21.h, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v20.h, 0, -16, s2
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v103.h, v23.l, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s2, 0, v104.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v103.l, v21.l, v104.h
	v_cndmask_b16 v21.l, 0, -16, s3
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v104, v22, 0, 16
	v_bfe_i32 v117, v106, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v22.l, v22.h, v20.h
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v20.l, v21.h, v20.l, s4
	v_cndmask_b16 v23.l, v23.l, v103.h, s2
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v103, v103, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v21.l, v24.l, v21.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v24.l, v23.h, v105.h, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v117
	v_bfe_i32 v20, v20, 0, 16
	v_bfe_i32 v22, v22, 0, 16
	v_bfe_i32 v23, v23, 0, 16
	v_cvt_f32_i32_e32 v103, v103
	v_bfe_i32 v24, v24, 0, 16
	v_bfe_i32 v21, v21, 0, 16
	v_mul_f32_e32 v104, v18, v104
	v_mul_f32_e32 v18, v18, v105
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_mul_f32_e32 v103, v109, v103
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v21, v21
	v_dual_mul_f32 v20, v118, v20 :: v_dual_add_nc_u32 v113, 0, v74
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v107.l, v104.h
	v_mov_b16_e32 v110.l, v18.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v22, v118, v22 :: v_dual_mul_f32 v23, v109, v23
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v115.l, v103.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v24, v119, v24
	v_mul_f32_e32 v21, v119, v21
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v105, 1, v107
	v_and_b32_e32 v107, 1, v110
	v_mov_b16_e32 v111.l, v20.h
	v_mov_b16_e32 v112.l, v22.h
	v_mov_b16_e32 v114.l, v23.h
	v_and_b32_e32 v109, 1, v115
	v_mov_b16_e32 v116.l, v24.h
	v_mov_b16_e32 v106.l, v21.h
	v_cmp_o_f32_e64 s2, v104, v104
	v_cmp_o_f32_e64 s3, v18, v18
	v_add3_u32 v18, v18, v107, 0x7fff
	v_add3_u32 v104, v104, v105, 0x7fff
	v_and_b32_e32 v105, 1, v111
	v_and_b32_e32 v107, 1, v112
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v3, v3, v121 :: v_dual_and_b32 v110, 1, v114
	v_dual_mul_f32 v5, v5, v121 :: v_dual_and_b32 v106, 1, v106
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s4, v103, v103
	v_add3_u32 v103, v103, v109, 0x7fff
	v_and_b32_e32 v109, 1, v116
	v_cmp_o_f32_e64 s5, v20, v20
	v_cmp_o_f32_e64 s6, v22, v22
	v_cndmask_b16 v104.l, 0x7fff, v18.h, s3
	v_add3_u32 v18, v22, v107, 0x7fff
	v_add3_u32 v20, v20, v105, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_cmp_o_f32_e64 s8, v24, v24
	v_cmp_o_f32_e64 s9, v21, v21
	v_add3_u32 v22, v23, v110, 0x7fff
	v_add3_u32 v23, v24, v109, 0x7fff
	v_add3_u32 v21, v21, v106, 0x7fff
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s2
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.l, 0x7fff, v18.h, s6
	v_cndmask_b16 v18.l, 0x7fff, v103.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v22.h, s7
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s8
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s9
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v21, v108
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v23, v123
.Ltmp40:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v81, v104, v20 offset1:8
	ds_store_2addr_b32 v81, v18, v22 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[104:107], v113
	ds_load_b128 v[112:115], v113 offset:1024
	ds_load_b128 v[108:111], v94
	ds_load_b128 v[116:119], v94 offset:1024
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v101
	v_mov_b32_e32 v103, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v101, v122 :: v_dual_add_f32 v18, v123, v23
	v_cndmask_b32_e64 v20, 0, v21, s2
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s2, s34, 16
	s_cmpk_lt_u32 s34, 0x7f0
	s_mov_b32 s34, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v18, v100, v20
	v_mov_b32_e32 v100, v18
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[104:111], v[57:64], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[112:119], v[57:64], v[9:16]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s34, s19
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v24, v17
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s2, s2, s16
	.loc	1 939 32                        ; attention.py:939:32
	v_add_nc_u32_e32 v23, 0, v71
	v_add_lshl_u32 v18, s2, v65, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_load_b128 v[19:22], v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v18, v17
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v75, v[19:22]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[104:107], v23
	ds_load_b128 v[108:111], v83
	ds_load_b128 v[112:115], v84
	ds_load_b128 v[116:119], v85
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v22, v17
	v_mov_b32_e32 v23, v17
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[120:123], v86
	ds_load_b128 v[124:127], v87
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v64, v24 :: v_dual_mov_b32 v61, v21
	v_dual_mov_b32 v62, v22 :: v_dual_mov_b32 v63, v23
	v_dual_mov_b32 v60, v20 :: v_dual_mov_b32 v59, v19
	v_dual_mov_b32 v58, v18 :: v_dual_mov_b32 v57, v17
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[128:131], v88
	ds_load_b128 v[132:135], v89
	v_mov_b16_e32 v19.l, 0
	v_mov_b16_e32 v18.l, 0
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[104:111], v[25:32], v[57:64]
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v19.l
	v_mov_b16_e32 v19.h, v19.l
	v_mov_b16_e32 v21.l, v18.l
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[112:119], v[33:40], v[57:64]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[120:127], v[41:48], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[128:135], v[49:56], v[57:64]
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v19, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v20, 31, v19
	v_add_co_u32 v19, s2, s22, v19
	v_add_co_ci_u32_e64 v20, null, s23, v20, s2
	global_load_b32 v19, v[19:20], off
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v21, 24, v19
	v_lshrrev_b32_e32 v20, 8, v19
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v0, 0, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v17, 2, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b32 v0, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v19
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v18, 4, v68
	v_lshrrev_b32_e32 v19, 1, v69
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, v17, v66
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v18, v18, v19
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s33, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v20, 32, v18
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v19, null, v0, v0, v1
	v_div_scale_f32 v22, null, v0, v0, v2
	v_div_scale_f32 v23, null, v0, v0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v25, v19
	v_rcp_f32_e32 v26, v22
	v_div_scale_f32 v21, vcc_lo, v1, v0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v27, v23
	v_div_scale_f32 v24, s1, v2, v0, v2
	v_div_scale_f32 v28, s2, v3, v0, v3
	v_div_scale_f32 v30, s3, v4, v0, v4
	v_fma_f32 v32, -v19, v25, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v22, v26, 1.0
	v_div_scale_f32 v29, null, v0, v0, v4
	v_fma_f32 v34, -v23, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v25, v32, v25 :: v_dual_fmac_f32 v26, v33, v26
	v_div_scale_f32 v32, null, v0, v0, v6
	v_dual_fmac_f32 v27, v34, v27 :: v_dual_mul_f32 v34, v21, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v37, v24, v26
	v_div_scale_f32 v31, null, v0, v0, v5
	v_rcp_f32_e32 v36, v29
	v_fma_f32 v41, -v19, v34, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v22, v37, v24
	v_mul_f32_e32 v38, v28, v27
	v_rcp_f32_e32 v40, v32
	v_rcp_f32_e32 v33, v31
	v_dual_fmac_f32 v34, v41, v25 :: v_dual_fmac_f32 v37, v42, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v23, v38, v28
	v_div_scale_f32 v35, s4, v5, v0, v5
	v_fma_f32 v19, -v19, v34, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v22, v37, v24
	v_fmac_f32_e32 v38, v43, v27
	v_fma_f32 v39, -v29, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v19, v19, v25, v34
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v22, -v23, v38, v28
	v_div_fmas_f32 v21, v21, v26, v37
	v_fma_f32 v28, -v32, v40, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v19, v0, v1
	v_div_fmas_f32 v22, v22, v27, v38
	v_div_fixup_f32 v2, v21, v0, v2
	v_div_scale_f32 v21, null, v0, v0, v7
	v_fmac_f32_e32 v40, v28, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v22, v0, v3
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v25, v21
	v_div_scale_f32 v26, null, v0, v0, v8
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v21, v25, 1.0
	v_fmac_f32_e32 v36, v39, v36
	v_fma_f32 v39, -v31, v33, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v25, v28, v25
	v_mul_f32_e32 v41, v30, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v39, v33
	v_fma_f32 v23, -v29, v41, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v35, v33
	v_fma_f32 v22, -v31, v24, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v23, v36
	v_div_scale_f32 v23, s2, v6, v0, v6
	v_fmac_f32_e32 v24, v22, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v29, v41, v30
	v_rcp_f32_e32 v29, v26
	v_div_fmas_f32 v19, v19, v36, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v19, v0, v4
	v_fma_f32 v19, -v31, v24, v35
	v_div_scale_f32 v31, null, v0, v0, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v19, v19, v33, v24
	v_rcp_f32_e32 v33, v31
	v_div_scale_f32 v24, null, v0, v0, v9
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v5, v19, v0, v5
	v_fma_f32 v19, -v26, v29, 1.0
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v35, s2, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v31, v33, 1.0
	v_fmac_f32_e32 v29, v19, v29
	v_div_scale_f32 v19, s4, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v36, v33
	v_div_scale_f32 v36, s5, v10, v0, v10
	v_mul_f32_e32 v22, v23, v40
	v_mul_f32_e32 v34, v19, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v32, v22, v23
	v_fmac_f32_e32 v22, v27, v40
	v_div_scale_f32 v27, s3, v7, v0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v32, v22, v23
	v_mul_f32_e32 v30, v27, v25
	v_fma_f32 v32, -v24, v28, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v23, v40, v22
	v_fma_f32 v23, -v21, v30, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, null, v0, v0, v11
	v_div_fixup_f32 v6, v22, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v23, v25
	v_fma_f32 v23, -v26, v34, v19
	v_rcp_f32_e32 v37, v32
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v21, v30, v27
	v_fmac_f32_e32 v34, v23, v29
	v_dual_mul_f32 v23, v36, v33 :: v_dual_mul_f32 v38, v35, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v25, v30
	v_fma_f32 v19, -v26, v34, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v32, v37, 1.0
	v_fma_f32 v22, -v24, v38, v35
	v_div_scale_f32 v26, null, v0, v0, v12
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v37, v27, v37 :: v_dual_fmac_f32 v38, v22, v28
	v_fma_f32 v22, -v31, v23, v36
	v_div_scale_f32 v25, s3, v11, v0, v11
	v_div_fmas_f32 v19, v19, v29, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v24, v38, v35
	v_fmac_f32_e32 v23, v22, v33
	v_rcp_f32_e32 v29, v26
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v22, v25, v37
	v_div_fmas_f32 v24, v24, v28, v38
	v_fma_f32 v27, -v31, v23, v36
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v7, v21, v0, v7
	v_fma_f32 v28, -v32, v22, v25
	v_div_fixup_f32 v8, v19, v0, v8
	v_div_fmas_f32 v23, v27, v33, v23
	v_div_scale_f32 v21, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v28, v37
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v23, v0, v10
	v_fma_f32 v23, -v26, v29, 1.0
	v_div_fixup_f32 v9, v24, v0, v9
	v_fma_f32 v19, -v32, v22, v25
	v_div_scale_f32 v24, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v23, v29
	v_div_scale_f32 v23, null, v0, v0, v14
	v_div_fmas_f32 v19, v19, v37, v22
	v_rcp_f32_e32 v22, v21
	v_div_scale_f32 v31, null, v0, v0, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v27, v23
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v25, vcc_lo, v12, v0, v12
	v_div_fixup_f32 v11, v19, v0, v11
	v_rcp_f32_e32 v33, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v21, v22, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v23, v27, 1.0
	v_fma_f32 v35, -v24, v28, 1.0
	v_fmac_f32_e32 v22, v19, v22
	v_div_scale_f32 v19, s2, v13, v0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, s3, v14, v0, v14
	v_mul_f32_e32 v36, v19, v22
	v_fma_f32 v37, -v31, v33, 1.0
	v_fmac_f32_e32 v28, v35, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v32, v27
	v_mul_f32_e32 v30, v25, v29
	v_div_scale_f32 v35, s4, v15, v0, v15
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, s5, v16, v0, v16
	v_fma_f32 v34, -v26, v30, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v35, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v37, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v34, v29
	v_fma_f32 v34, -v21, v36, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v26, v30, v25
	v_fmac_f32_e32 v36, v34, v22
	v_fma_f32 v26, -v23, v38, v32
	v_fma_f32 v34, -v24, v39, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v25, v29, v30
	v_fma_f32 v19, -v21, v36, v19
	v_fma_f32 v21, -v31, v40, v37
	v_fmac_f32_e32 v38, v26, v27
	v_fmac_f32_e32 v39, v34, v28
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v25, v0, v12
	v_fmac_f32_e32 v40, v21, v33
	v_div_fmas_f32 v19, v19, v22, v36
	v_fma_f32 v22, -v23, v38, v32
	v_fma_f32 v21, -v24, v39, v35
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v23, -v31, v40, v37
	v_div_fixup_f32 v13, v19, v0, v13
	v_div_fmas_f32 v22, v22, v27, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v28, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v22, v0, v14
	v_div_fmas_f32 v23, v23, v33, v40
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s17, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v15, v21, v0, v15
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v23, v0, v16
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v16, s15, v17
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v16, s17, v16
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s17, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v17, v16, v18, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v18, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v19, 8, v17
	v_add_nc_u32_e32 v21, 32, v17
	v_add_nc_u32_e32 v22, 40, v17
	buffer_store_b32 v1, v18, s[20:23], 0 offen
	v_dual_cndmask_b32 v18, 0x80000000, v19 :: v_dual_add_nc_u32 v1, 16, v17
	v_add_nc_u32_e32 v19, 24, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_store_b32 v2, v18, s[20:23], 0 offen
	v_cndmask_b32_e32 v18, 0x80000000, v21, vcc_lo
	buffer_store_b32 v3, v1, s[20:23], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v19 :: v_dual_add_nc_u32 v1, 48, v17
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	v_add_lshl_u32 v3, v16, v20, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x2
	buffer_store_b32 v4, v2, s[20:23], 0 offen
	buffer_store_b32 v5, v18, s[20:23], 0 offen
	buffer_store_b32 v6, v19, s[20:23], 0 offen
	v_add_nc_u32_e32 v2, 56, v17
	v_add_nc_u32_e32 v4, 0x88, v17
	v_add_nc_u32_e32 v5, 0x90, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[20:23], 0 offen
	buffer_store_b32 v8, v2, s[20:23], 0 offen
	buffer_store_b32 v9, v3, s[20:23], 0 offen
	buffer_store_b32 v10, v4, s[20:23], 0 offen
	buffer_store_b32 v11, v5, s[20:23], 0 offen
	v_add_nc_u32_e32 v1, 0x98, v17
	v_add_nc_u32_e32 v2, 0xa0, v17
	v_add_nc_u32_e32 v3, 0xa8, v17
	v_add_nc_u32_e32 v4, 0xb0, v17
	v_add_nc_u32_e32 v5, 0xb8, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v1, s[20:23], 0 offen
	buffer_store_b32 v13, v2, s[20:23], 0 offen
	buffer_store_b32 v14, v3, s[20:23], 0 offen
	buffer_store_b32 v15, v4, s[20:23], 0 offen
	buffer_store_b32 v0, v5, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 136
		.amdhsa_next_free_sgpr 41
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_vgpr, 136
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6328
; TotalNumSgprs: 43
; NumVgprs: 136
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 136
; Occupancy: 10
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     136
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
