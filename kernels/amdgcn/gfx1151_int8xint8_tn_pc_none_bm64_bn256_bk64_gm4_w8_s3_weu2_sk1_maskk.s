	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v102, 0xf0, v0
	s_load_b32 s30, s[0:1], 0x38
	v_and_b32_e32 v101, 15, v0
	v_lshrrev_b32_e32 v85, 2, v0
	v_lshlrev_b32_e32 v84, 4, v0
	v_lshrrev_b32_e32 v86, 2, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v103, 14, v0
	v_or_b32_e32 v90, 0x3f0, v0
	v_or_b32_e32 v91, 0x7f0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 48, v84
	v_or_b32_e32 v92, 0xbf0, v0
	v_or_b32_e32 v93, 0xff0, v0
	v_and_b32_e32 v94, 8, v0
	v_and_b32_e32 v95, 32, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s23, v86
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v81, v101, 4, v3
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[82:83], null, s23, 3, v[81:82]
	v_lshl_add_u32 v87, s23, 1, v81
	.loc	1 349 16 is_stmt 1              ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s22, v85
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s31, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s31, v86
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s3, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s23, s31
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s31, v85
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s30, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s29, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s3, s4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v83, v1, v2, s28
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s4, v87
	v_add_nc_u32_e32 v5, s4, v82
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s4, v81
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s22, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v2, 0x80000000, v4, s2
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v5, s7, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[6:9], v2, s[24:27], 0 offen
	buffer_load_b128 v[10:13], v4, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v5, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s31, s31, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s6, s23, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[14:17], v2, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v1, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v3, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s31, v86
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s6
	v_lshlrev_b32_e32 v5, 3, v0
	v_add_nc_u32_e32 v2, s4, v81
	v_add_nc_u32_e32 v3, s4, v87
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s4, v82
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s22, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s23, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x3
	buffer_load_b128 v[26:29], v2, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v1, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v3, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v4, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s31, v85
	v_lshlrev_b32_e32 v3, 6, v0
	v_lshlrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s7, s4, v83
	s_mov_b32 s4, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b128 v[42:45], v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v1, v1, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v96, v103, 10, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, 0, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v97, 0x90, v96
	v_xor_b32_e32 v98, 0x120, v96
	v_xor_b32_e32 v99, 0x1b0, v96
	v_xor_b32_e32 v100, 0x210, v96
	v_add_nc_u32_e32 v2, 0, v96
	v_xor_b32_e32 v168, 0x330, v96
	v_xor_b32_e32 v169, 0x3a0, v96
	v_add_nc_u32_e32 v46, 0, v97
	v_add_nc_u32_e32 v47, 0, v98
	v_add_nc_u32_e32 v48, 0, v99
	v_add_nc_u32_e32 v49, 0, v100
	v_add_nc_u32_e32 v50, 0, v168
	v_add_nc_u32_e32 v51, 0, v169
	v_add_nc_u32_e32 v52, 0x4000, v2
	v_add_nc_u32_e32 v53, 0x4000, v46
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	s_waitcnt vmcnt(8)
	v_perm_b32 v59, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	v_perm_b32 v10, v11, v7, 0x4000501
	v_perm_b32 v7, v11, v7, 0x6020703
	v_perm_b32 v11, v12, v8, 0x4000501
	v_perm_b32 v8, v12, v8, 0x6020703
	v_perm_b32 v12, v13, v9, 0x4000501
	v_perm_b32 v9, v13, v9, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[14:17] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v13, v22, v18, 0x4000501
	v_perm_b32 v14, v22, v18, 0x6020703
	v_perm_b32 v15, v23, v19, 0x4000501
	v_perm_b32 v16, v23, v19, 0x6020703
	v_perm_b32 v17, v24, v20, 0x4000501
	v_perm_b32 v18, v24, v20, 0x6020703
	v_perm_b32 v19, v25, v21, 0x4000501
	v_perm_b32 v20, v25, v21, 0x6020703
	v_perm_b32 v21, v59, v13, 0x7060302
	v_perm_b32 v13, v59, v13, 0x5040100
	v_perm_b32 v22, v6, v14, 0x7060302
	v_perm_b32 v6, v6, v14, 0x5040100
	v_perm_b32 v14, v10, v15, 0x7060302
	v_perm_b32 v10, v10, v15, 0x5040100
	v_perm_b32 v15, v7, v16, 0x7060302
	v_perm_b32 v7, v7, v16, 0x5040100
	v_perm_b32 v16, v11, v17, 0x7060302
	v_perm_b32 v11, v11, v17, 0x5040100
	v_perm_b32 v17, v8, v18, 0x7060302
	v_perm_b32 v8, v8, v18, 0x5040100
	v_perm_b32 v18, v12, v19, 0x7060302
	v_perm_b32 v12, v12, v19, 0x5040100
	v_perm_b32 v19, v9, v20, 0x7060302
	v_perm_b32 v9, v9, v20, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v20, v30, v26, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v23, v38, v34, 0x4000501
	v_perm_b32 v24, v30, v26, 0x6020703
	v_perm_b32 v25, v38, v34, 0x6020703
	v_perm_b32 v26, v31, v27, 0x4000501
	v_perm_b32 v30, v39, v35, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v39, v35, 0x6020703
	v_perm_b32 v34, v32, v28, 0x4000501
	v_perm_b32 v35, v40, v36, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v40, v36, 0x6020703
	v_perm_b32 v36, v33, v29, 0x4000501
	v_perm_b32 v38, v41, v37, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v41, v37, 0x6020703
	ds_store_2addr_b32 v2, v21, v13 offset1:16
	ds_store_2addr_b32 v46, v22, v6 offset1:16
	ds_store_2addr_b32 v47, v14, v10 offset1:16
	ds_store_2addr_b32 v48, v15, v7 offset1:16
	ds_store_2addr_b32 v49, v16, v11 offset1:16
	ds_store_2addr_b32 v2, v17, v8 offset0:160 offset1:176
	ds_store_2addr_b32 v50, v18, v12 offset1:16
	ds_store_2addr_b32 v51, v19, v9 offset1:16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[42:45] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v1, v23, v20, 0x7060302
	v_perm_b32 v2, v23, v20, 0x5040100
	v_perm_b32 v6, v25, v24, 0x7060302
	v_perm_b32 v7, v25, v24, 0x5040100
	v_perm_b32 v8, v30, v26, 0x7060302
	v_perm_b32 v9, v30, v26, 0x5040100
	v_perm_b32 v10, v31, v27, 0x7060302
	v_perm_b32 v11, v31, v27, 0x5040100
	v_perm_b32 v12, v35, v34, 0x7060302
	v_perm_b32 v13, v35, v34, 0x5040100
	v_perm_b32 v14, v32, v28, 0x7060302
	v_perm_b32 v15, v32, v28, 0x5040100
	v_perm_b32 v16, v38, v36, 0x7060302
	v_perm_b32 v17, v38, v36, 0x5040100
	v_perm_b32 v18, v33, v29, 0x7060302
	v_perm_b32 v19, v33, v29, 0x5040100
	ds_store_2addr_b32 v52, v1, v2 offset1:16
	ds_store_2addr_b32 v53, v6, v7 offset1:16
	ds_store_2addr_b32 v54, v8, v9 offset1:16
	ds_store_2addr_b32 v55, v10, v11 offset1:16
	ds_store_2addr_b32 v56, v12, v13 offset1:16
	ds_store_2addr_b32 v52, v14, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v57, v16, v17 offset1:16
	ds_store_2addr_b32 v58, v18, v19 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v170, 0x3f0, v0
	v_or_b32_e32 v171, 0x7f0, v0
	v_or_b32_e32 v172, 0xbf0, v0
	v_or_b32_e32 v173, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v88, 48, v5
	v_and_b32_e32 v2, 8, v0
	v_and_b32_e32 v1, 32, v0
	v_and_or_b32 v89, 0x1c0, v3, v6
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v137, 0
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr89
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v2, 0x1800, v4
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s34, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v88, 48, v5
	v_and_b32_e32 v1, 0x210, v1
	v_bfe_i32 v4, v0, 5, 1
	v_and_or_b32 v89, 0x1c0, v3, v2
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v170, s23, v81
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_xor_b32_e32 v1, v1, v88
	v_and_b32_e32 v2, 0x420, v4
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v167, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v89, v1
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_mov_b32_e32 v157, 0
	v_xor_b32_e32 v171, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v7, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v172, 16, v171
	v_xor_b32_e32 v173, 32, v171
	v_xor_b32_e32 v174, 48, v171
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v104, 0
	s_add_i32 s31, s31, 64
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s34, s34, -3
	s_mov_b32 s35, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v175, s33, v101
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s31, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s4, v171
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s6, v85
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s6, s22, v[83:84]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v18, s4, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v11
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[57:60], v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v175 offset:832
	ds_load_u8 v10, v175 offset:768
	ds_load_u8 v11, v175 offset:960
	ds_load_u8 v12, v175 offset:896
	ds_load_u8 v13, v175 offset:576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v17
	ds_load_b128 v[73:76], v18
	ds_load_b128 v[61:64], v17 offset:8192
	ds_load_b128 v[65:68], v18 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v175 offset:704
	v_lshl_or_b32 v28, v11, 16, v9
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v13, 0xc0c0004
	ds_load_u8 v13, v175 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v10
	ds_load_u8 v9, v175 offset:320
	ds_load_u8 v10, v175 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:448
	ds_load_u8 v11, v175 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v175 offset:64
	ds_load_u8 v10, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:192
	ds_load_u8 v11, v175 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v175 offset:1856
	ds_load_u8 v10, v175 offset:1792
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:1984
	ds_load_u8 v11, v175 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v175 offset:1600
	ds_load_u8 v12, v175 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v175 offset:1344
	ds_load_u8 v10, v175 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v175 offset:1728
	ds_load_u8 v13, v175 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v175 offset:1472
	ds_load_u8 v11, v175 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v175 offset:1088
	ds_load_u8 v10, v175 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v175 offset:1216
	ds_load_u8 v11, v175 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v175 offset:848
	ds_load_u8 v26, v175 offset:784
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v175 offset:976
	ds_load_u8 v27, v175 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v175 offset:592
	ds_load_u8 v28, v175 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v175 offset:336
	ds_load_u8 v26, v175 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v175 offset:720
	ds_load_u8 v29, v175 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v175 offset:464
	ds_load_u8 v27, v175 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v175 offset:16
	ds_load_u8 v26, v175 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v175 offset:208
	ds_load_u8 v27, v175 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v175 offset:1872
	ds_load_u8 v26, v175 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v175 offset:2000
	ds_load_u8 v27, v175 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v175 offset:1616
	ds_load_u8 v28, v175 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v175 offset:1360
	ds_load_u8 v26, v175 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v175 offset:1744
	ds_load_u8 v29, v175 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v175 offset:1488
	ds_load_u8 v27, v175 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v175 offset:1104
	ds_load_u8 v26, v175 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v175 offset:1232
	ds_load_u8 v27, v175 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v175 offset:864
	ds_load_u8 v42, v175 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:992
	ds_load_u8 v43, v175 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v175 offset:608
	ds_load_u8 v44, v175 offset:544
	v_lshl_or_b32 v80, v42, 16, v41
	ds_load_u8 v41, v175 offset:352
	ds_load_u8 v42, v175 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v175 offset:736
	ds_load_u8 v45, v175 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v44, 16, v43
	ds_load_u8 v42, v175 offset:480
	ds_load_u8 v43, v175 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v78, v42, 16, v41
	ds_load_u8 v41, v175 offset:32
	ds_load_u8 v42, v175 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v175 offset:224
	ds_load_u8 v43, v175 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v42, 16, v41
	ds_load_u8 v41, v175 offset:1888
	ds_load_u8 v42, v175 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:2016
	ds_load_u8 v43, v175 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v175 offset:1632
	ds_load_u8 v44, v175 offset:1568
	v_lshl_or_b32 v179, v42, 16, v41
	ds_load_u8 v41, v175 offset:1376
	ds_load_u8 v42, v175 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v175 offset:1760
	ds_load_u8 v45, v175 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v44, 16, v43
	ds_load_u8 v42, v175 offset:1504
	ds_load_u8 v43, v175 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v177, v42, 16, v41
	ds_load_u8 v41, v175 offset:1120
	ds_load_u8 v42, v175 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v175 offset:1248
	ds_load_u8 v43, v175 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[77:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v77, v175 offset:880
	ds_load_u8 v78, v175 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[176:179], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[176:179], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v78, s33, v90
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v175 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v175 offset:624
	ds_load_u8 v80, v175 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v175 offset:752
	ds_load_u8 v176, v175 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v175 offset:368
	ds_load_u8 v78, v175 offset:304
	v_lshl_or_b32 v79, v176, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v175 offset:496
	ds_load_u8 v176, v175 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v176, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v175 offset:48
	ds_load_u8 v176, v175 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v176, 0xc0c0004
	ds_load_u8 v176, v175 offset:240
	ds_load_u8 v177, v175 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v176, 16, v77
	ds_load_u8 v176, v175 offset:1904
	ds_load_u8 v177, v175 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v177, s33, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v177, v177
	ds_load_u8 v178, v175 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v175 offset:1648
	ds_load_u8 v179, v175 offset:1584
	v_lshl_or_b32 v187, v177, 16, v176
	ds_load_u8 v176, v175 offset:1392
	ds_load_u8 v177, v175 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v175 offset:1776
	ds_load_u8 v180, v175 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v186, v179, 16, v178
	ds_load_u8 v177, v175 offset:1520
	ds_load_u8 v178, v175 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_lshl_or_b32 v185, v177, 16, v176
	ds_load_u8 v176, v175 offset:1136
	ds_load_u8 v177, v175 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v175 offset:1264
	ds_load_u8 v178, v175 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v184, v177, 16, v176
	v_wmma_i32_16x16x16_iu8 v[176:183], v[69:72], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[73:76], v[184:187], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[61:64], v[77:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:2880
	ds_load_u8 v62, v175 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v77, s4, v173
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[69:76], v[65:68], v[184:187], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:3008
	ds_load_u8 v63, v175 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:2624
	ds_load_u8 v64, v175 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:2752
	ds_load_u8 v65, v175 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:2368
	ds_load_u8 v62, v175 offset:2304
	v_lshl_or_b32 v63, v65, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:2496
	ds_load_u8 v65, v175 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:2112
	ds_load_u8 v65, v175 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v65, v61, 0xc0c0004
	ds_load_u8 v65, v175 offset:2240
	ds_load_u8 v66, v175 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v65, 16, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v77
	ds_load_b128 v[77:80], v77 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[61:64], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:2896
	ds_load_u8 v62, v175 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:3024
	ds_load_u8 v63, v175 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:2640
	ds_load_u8 v64, v175 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:2768
	ds_load_u8 v184, v175 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v184, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:2384
	ds_load_u8 v62, v175 offset:2320
	v_lshl_or_b32 v63, v184, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:2512
	ds_load_u8 v184, v175 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v184, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:2128
	ds_load_u8 v184, v175 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v184, v61, 0xc0c0004
	ds_load_u8 v184, v175 offset:2256
	ds_load_u8 v185, v175 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v184, 16, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[61:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[61:64], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:2912
	ds_load_u8 v62, v175 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:3040
	ds_load_u8 v63, v175 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:2656
	ds_load_u8 v64, v175 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:2784
	ds_load_u8 v184, v175 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v184, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:2400
	ds_load_u8 v62, v175 offset:2336
	v_lshl_or_b32 v63, v184, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:2528
	ds_load_u8 v184, v175 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v184, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:2144
	ds_load_u8 v184, v175 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v184, v61, 0xc0c0004
	ds_load_u8 v184, v175 offset:2272
	ds_load_u8 v185, v175 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v184, 16, v61
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[61:64], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:2928
	ds_load_u8 v62, v175 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s33, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v62
	ds_load_u8 v63, v175 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:2672
	ds_load_u8 v64, v175 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:2800
	ds_load_u8 v184, v175 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v184, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:2416
	ds_load_u8 v62, v175 offset:2352
	v_lshl_or_b32 v63, v184, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:2544
	ds_load_u8 v184, v175 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v184, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:2160
	ds_load_u8 v184, v175 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v184, v61, 0xc0c0004
	ds_load_u8 v184, v175 offset:2288
	ds_load_u8 v185, v175 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v184, 16, v61
	v_wmma_i32_16x16x16_iu8 v[176:183], v[65:68], v[61:64], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[61:64], v[69:76] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:3904
	ds_load_u8 v62, v175 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v77, s4, v174
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s6, s23
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s3
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:4032
	ds_load_u8 v63, v175 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:3648
	ds_load_u8 v64, v175 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:3776
	ds_load_u8 v65, v175 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:3392
	ds_load_u8 v62, v175 offset:3328
	v_lshl_or_b32 v63, v65, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:3520
	ds_load_u8 v65, v175 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:3136
	ds_load_u8 v65, v175 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v65, v61, 0xc0c0004
	ds_load_u8 v65, v175 offset:3264
	ds_load_u8 v66, v175 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v65, 16, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v77
	ds_load_b128 v[77:80], v77 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[61:64], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:3920
	ds_load_u8 v62, v175 offset:3856
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v156, v156, v21 :: v_dual_add_f32 v157, v157, v20
	v_dual_add_f32 v154, v154, v23 :: v_dual_add_f32 v155, v155, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v153, v153, v24
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:4048
	ds_load_u8 v63, v175 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:3664
	ds_load_u8 v64, v175 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:3792
	ds_load_u8 v184, v175 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v184, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:3408
	ds_load_u8 v62, v175 offset:3344
	v_lshl_or_b32 v63, v184, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:3536
	ds_load_u8 v184, v175 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v184, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:3152
	ds_load_u8 v184, v175 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v184, v61, 0xc0c0004
	ds_load_u8 v184, v175 offset:3280
	ds_load_u8 v185, v175 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v184, 16, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[61:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[61:64], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:3936
	ds_load_u8 v62, v175 offset:3872
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v146, v146, v31 :: v_dual_add_f32 v145, v145, v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:4064
	ds_load_u8 v63, v175 offset:4000
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v144, v144, v33 :: v_dual_add_f32 v143, v143, v34
	v_dual_add_f32 v142, v142, v35 :: v_dual_add_f32 v141, v141, v36
	v_dual_add_f32 v140, v140, v37 :: v_dual_add_f32 v139, v139, v38
	v_dual_add_f32 v152, v152, v25 :: v_dual_add_f32 v151, v151, v26
	v_add_f32_e32 v150, v150, v27
	v_dual_add_f32 v148, v148, v29 :: v_dual_add_f32 v149, v149, v28
	v_add_f32_e32 v147, v147, v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:3680
	ds_load_u8 v64, v175 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:3808
	ds_load_u8 v184, v175 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v184, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:3424
	ds_load_u8 v62, v175 offset:3360
	v_lshl_or_b32 v63, v184, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:3552
	ds_load_u8 v184, v175 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v184, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:3168
	ds_load_u8 v184, v175 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v184, v61, 0xc0c0004
	ds_load_u8 v184, v175 offset:3296
	ds_load_u8 v185, v175 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v184, 16, v61
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[61:64], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v61, v175 offset:3952
	ds_load_u8 v62, v175 offset:3888
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v138, v138, v39 :: v_dual_add_f32 v135, v135, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s33, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v62
	ds_load_u8 v63, v175 offset:4016
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v136, v136, v40 :: v_dual_add_f32 v133, v133, v43
	v_dual_add_f32 v134, v134, v42 :: v_dual_add_f32 v131, v131, v45
	v_dual_add_f32 v132, v132, v44 :: v_dual_add_f32 v129, v129, v47
	v_dual_add_f32 v130, v130, v46 :: v_dual_add_f32 v127, v127, v49
	v_dual_add_f32 v128, v128, v48 :: v_dual_add_f32 v125, v125, v51
	v_dual_add_f32 v126, v126, v50 :: v_dual_add_f32 v123, v123, v53
	v_dual_add_f32 v124, v124, v52 :: v_dual_add_f32 v121, v121, v55
	s_mov_b32 s33, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v175 offset:3696
	ds_load_u8 v64, v175 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v175 offset:3824
	ds_load_u8 v184, v175 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v184, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v175 offset:3440
	ds_load_u8 v62, v175 offset:3376
	v_lshl_or_b32 v63, v184, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v175 offset:3568
	ds_load_u8 v184, v175 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v184, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v175 offset:3184
	ds_load_u8 v184, v175 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v184, v61, 0xc0c0004
	ds_load_u8 v184, v175 offset:3312
	ds_load_u8 v175, v175 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v175, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v175, 16, v61
	v_wmma_i32_16x16x16_iu8 v[176:183], v[65:68], v[61:64], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[61:64], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v64, v12
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v12, s6, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v62, v10
	v_cvt_f32_i32_e32 v65, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s4, v170
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v78, v18
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v167, v167, v62 :: v_dual_add_nc_u32 v12, s4, v81
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v68, v16
	v_cvt_f32_i32_e32 v66, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v16, 0x80000000, v13 :: v_dual_add_f32 v159, v159, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v67, v15
	v_cvt_f32_i32_e32 v77, v17
	v_cvt_f32_i32_e32 v79, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v16, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v63, v11
	v_cvt_f32_i32_e32 v11, v74
	v_cvt_f32_i32_e32 v10, v75
	v_cvt_f32_i32_e32 v61, v9
	v_cvt_f32_i32_e32 v80, v176
	v_cvt_f32_i32_e32 v176, v178
	v_cvt_f32_i32_e32 v178, v180
	v_cvt_f32_i32_e32 v180, v182
	v_cvt_f32_i32_e32 v9, v76
	v_cvt_f32_i32_e32 v175, v177
	v_cvt_f32_i32_e32 v177, v179
	v_cvt_f32_i32_e32 v179, v181
	v_cvt_f32_i32_e32 v181, v183
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v137, v137, v61 :: v_dual_add_f32 v166, v166, v63
	v_dual_add_f32 v165, v165, v64 :: v_dual_add_f32 v164, v164, v65
	v_dual_add_f32 v163, v163, v66 :: v_dual_add_f32 v162, v162, v67
	v_dual_add_f32 v161, v161, v68 :: v_dual_add_f32 v160, v160, v77
	v_add_f32_e32 v158, v158, v79
	v_dual_add_f32 v122, v122, v54 :: v_dual_add_f32 v119, v119, v80
	v_dual_add_f32 v120, v120, v56 :: v_dual_add_f32 v115, v115, v178
	v_dual_add_f32 v118, v118, v175 :: v_dual_add_f32 v117, v117, v176
	v_dual_add_f32 v116, v116, v177 :: v_dual_add_f32 v113, v113, v180
	v_dual_add_f32 v114, v114, v179 :: v_dual_add_f32 v111, v111, v69
	v_dual_add_f32 v112, v112, v181 :: v_dual_add_f32 v109, v109, v71
	v_dual_add_f32 v110, v110, v70 :: v_dual_add_f32 v107, v107, v73
	v_dual_add_f32 v108, v108, v72 :: v_dual_add_f32 v105, v105, v10
	v_add_f32_e32 v104, v104, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v74, v16, v12, 0x4000501
	v_perm_b32 v75, v16, v12, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s4, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v76, v17, v13, 0x4000501
	v_perm_b32 v182, v17, v13, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s4, v82
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v183, v18, v14, 0x4000501
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_perm_b32 v184, v18, v14, 0x6020703
	v_perm_b32 v185, v19, v15, 0x4000501
	v_cndmask_b32_e32 v16, 0x80000000, v13, vcc_lo
	v_perm_b32 v186, v19, v15, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v16, s[24:27], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_add_i32 s4, s35, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s4, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s35, s4, 0
	s_add_i32 s7, s5, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s4, s35, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, 0
	s_mov_b32 s4, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s0, s35, 14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s6, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s0, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v106, v106, v11 :: v_dual_add_nc_u32 v11, s0, v168
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v187, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v19, s6, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v10, v14, v184, 0x7060302
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v19, v[57:60] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v19, v187, v74, 0x7060302
	v_perm_b32 v57, v187, v74, 0x5040100
	v_add_nc_u32_e32 v58, s0, v96
	ds_store_2addr_b32 v58, v19, v57 offset1:16
	v_perm_b32 v19, v12, v75, 0x7060302
	v_perm_b32 v12, v12, v75, 0x5040100
	v_add_nc_u32_e32 v57, s0, v97
	ds_store_2addr_b32 v57, v19, v12 offset1:16
	v_perm_b32 v12, v16, v76, 0x7060302
	v_perm_b32 v16, v16, v76, 0x5040100
	v_add_nc_u32_e32 v19, s0, v98
	ds_store_2addr_b32 v19, v12, v16 offset1:16
	v_perm_b32 v12, v13, v182, 0x7060302
	v_perm_b32 v13, v13, v182, 0x5040100
	v_add_nc_u32_e32 v16, s0, v99
	ds_store_2addr_b32 v16, v12, v13 offset1:16
	v_perm_b32 v12, v17, v183, 0x7060302
	v_perm_b32 v13, v17, v183, 0x5040100
	v_add_nc_u32_e32 v16, s0, v100
	v_add_nc_u32_e32 v17, s0, v169
	ds_store_2addr_b32 v16, v12, v13 offset1:16
	v_perm_b32 v12, v14, v184, 0x5040100
	v_perm_b32 v13, v18, v185, 0x7060302
	v_perm_b32 v14, v18, v185, 0x5040100
	v_perm_b32 v16, v15, v186, 0x7060302
	v_perm_b32 v15, v15, v186, 0x5040100
	ds_store_2addr_b32 v58, v10, v12 offset0:160 offset1:176
	ds_store_2addr_b32 v11, v13, v14 offset1:16
	ds_store_2addr_b32 v17, v16, v15 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v170, v90 :: v_dual_mov_b32 v171, v91
	v_dual_mov_b32 v172, v92 :: v_dual_mov_b32 v173, v93
	v_dual_mov_b32 v2, v94 :: v_dual_mov_b32 v1, v95
.LBB0_7:                                ; %Flow72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_and_b32_e32 v168, 1, v0
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v2, v2, v88
	v_cndmask_b32_e64 v1, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v89, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v77, v2, v1
	v_xor_b32_e32 v73, 16, v77
	v_xor_b32_e32 v74, 32, v77
	v_xor_b32_e32 v75, 48, v77
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v76, s33, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v2, v76 offset:832
	ds_load_u8 v3, v76 offset:768
	ds_load_u8 v4, v76 offset:960
	ds_load_u8 v5, v76 offset:896
	ds_load_u8 v6, v76 offset:576
	ds_load_u8 v7, v76 offset:512
	ds_load_u8 v8, v76 offset:704
	ds_load_u8 v9, v76 offset:640
	ds_load_u8 v10, v76 offset:320
	ds_load_u8 v11, v76 offset:256
	ds_load_u8 v12, v76 offset:448
	ds_load_u8 v13, v76 offset:384
	ds_load_u8 v14, v76 offset:64
	ds_load_u8 v15, v76
	ds_load_u8 v16, v76 offset:192
	ds_load_u8 v17, v76 offset:128
	ds_load_u8 v21, v76 offset:848
	ds_load_u8 v22, v76 offset:784
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s4, v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v3, v2, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s33, v170
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	v_lshl_or_b32 v20, v4, 16, v3
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	ds_load_u8 v9, v76 offset:16
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v13, v12, 0xc0c0004
	v_lshl_or_b32 v19, v6, 16, v5
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v17, v16, 0xc0c0004
	v_lshl_or_b32 v18, v8, 16, v7
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v22, v21, 0xc0c0004
	ds_load_u8 v6, v76 offset:976
	ds_load_u8 v7, v76 offset:912
	ds_load_u8 v8, v76 offset:592
	ds_load_u8 v10, v76 offset:528
	ds_load_u8 v11, v76 offset:720
	ds_load_u8 v12, v76 offset:656
	ds_load_u8 v13, v76 offset:336
	ds_load_u8 v14, v76 offset:272
	ds_load_u8 v15, v76 offset:464
	ds_load_u8 v16, v76 offset:400
	ds_load_u8 v21, v76 offset:80
	ds_load_u8 v22, v76 offset:208
	ds_load_u8 v25, v76 offset:144
	ds_load_u8 v26, v76 offset:864
	ds_load_u8 v27, v76 offset:800
	ds_load_u8 v28, v76 offset:992
	ds_load_u8 v29, v76 offset:928
	ds_load_u8 v30, v76 offset:608
	ds_load_u8 v31, v76 offset:544
	ds_load_u8 v32, v76 offset:736
	ds_load_u8 v33, v76 offset:672
	ds_load_u8 v34, v76 offset:352
	ds_load_u8 v35, v76 offset:288
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v76 offset:480
	ds_load_u8 v36, v76 offset:416
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v8, v10, v8, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	ds_load_u8 v11, v76 offset:32
	ds_load_u8 v12, v76 offset:48
	v_lshl_or_b32 v17, v4, 16, v3
	v_lshl_or_b32 v24, v6, 16, v5
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	v_lshl_or_b32 v23, v10, 16, v8
	ds_load_u8 v8, v76 offset:96
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v5, v9, v21, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v6, v25, v22, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v10, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v31, v30, 0xc0c0004
	ds_load_u8 v16, v76 offset:224
	ds_load_u8 v25, v76 offset:160
	ds_load_u8 v26, v76 offset:880
	ds_load_u8 v27, v76 offset:816
	ds_load_u8 v2, v2
	ds_load_u8 v28, v76 offset:944
	ds_load_u8 v29, v76 offset:624
	ds_load_u8 v30, v76 offset:560
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v14, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v15, v35, v34, 0xc0c0004
	v_lshl_or_b32 v22, v4, 16, v3
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v36, v7, 0xc0c0004
	v_lshl_or_b32 v21, v6, 16, v5
	v_lshl_or_b32 v81, v10, 16, v9
	v_lshl_or_b32 v80, v14, 16, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v79, v7, 16, v15
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v11, v8, 0xc0c0004
	ds_load_u8 v4, v76 offset:752
	ds_load_u8 v5, v76 offset:688
	ds_load_u8 v6, v76 offset:368
	ds_load_u8 v7, v76 offset:304
	ds_load_u8 v8, v76 offset:496
	ds_load_u8 v9, v76 offset:432
	ds_load_u8 v11, v76 offset:112
	ds_load_u8 v13, v76 offset:240
	ds_load_u8 v14, v76 offset:176
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v1 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v28, v2, 0xc0c0004
	v_perm_b32 v10, v25, v16, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v72, v2, 16, v15
	v_lshl_or_b32 v78, v10, 16, v3
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v9, v8, 0xc0c0004
	v_lshl_or_b32 v71, v1, 16, v16
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v14, v13, 0xc0c0004
	v_mov_b32_e32 v16, s15
	v_lshl_or_b32 v70, v4, 16, v3
	v_dual_mov_b32 v15, s14 :: v_dual_mov_b32 v14, s13
	v_mov_b32_e32 v11, s10
	v_dual_mov_b32 v13, s12 :: v_dual_mov_b32 v12, s11
	v_dual_mov_b32 v9, s8 :: v_dual_mov_b32 v10, s9
	v_lshl_or_b32 v69, v2, 16, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[82:85], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[82:85], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[82:85], v[78:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[78:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[82:85], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1856
	ds_load_u8 v66, v76 offset:1792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s4, v73
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1984
	ds_load_u8 v67, v76 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1600
	ds_load_u8 v68, v76 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1728
	ds_load_u8 v69, v76 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1344
	ds_load_u8 v66, v76 offset:1280
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1472
	ds_load_u8 v69, v76 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1088
	ds_load_u8 v69, v76 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v76 offset:1216
	ds_load_u8 v70, v76 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v78
	ds_load_b128 v[78:81], v78 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[78:81], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1872
	ds_load_u8 v66, v76 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2000
	ds_load_u8 v67, v76 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1616
	ds_load_u8 v68, v76 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1744
	ds_load_u8 v82, v76 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1360
	ds_load_u8 v66, v76 offset:1296
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1488
	ds_load_u8 v82, v76 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1104
	ds_load_u8 v82, v76 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:1232
	ds_load_u8 v83, v76 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[78:81], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1888
	ds_load_u8 v66, v76 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2016
	ds_load_u8 v67, v76 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1632
	ds_load_u8 v68, v76 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1760
	ds_load_u8 v82, v76 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1376
	ds_load_u8 v66, v76 offset:1312
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1504
	ds_load_u8 v82, v76 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1120
	ds_load_u8 v82, v76 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:1248
	ds_load_u8 v83, v76 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[78:81], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1904
	ds_load_u8 v66, v76 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s33, v171
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v76 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1648
	ds_load_u8 v68, v76 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1776
	ds_load_u8 v82, v76 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1392
	ds_load_u8 v66, v76 offset:1328
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1520
	ds_load_u8 v82, v76 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1136
	ds_load_u8 v82, v76 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:1264
	ds_load_u8 v83, v76 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[78:81], v[65:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2880
	ds_load_u8 v66, v76 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s4, v74
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3008
	ds_load_u8 v67, v76 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2624
	ds_load_u8 v68, v76 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2752
	ds_load_u8 v69, v76 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2368
	ds_load_u8 v66, v76 offset:2304
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2496
	ds_load_u8 v69, v76 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2112
	ds_load_u8 v69, v76 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v76 offset:2240
	ds_load_u8 v70, v76 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v78
	ds_load_b128 v[78:81], v78 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[78:81], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2896
	ds_load_u8 v66, v76 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3024
	ds_load_u8 v67, v76 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2640
	ds_load_u8 v68, v76 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2768
	ds_load_u8 v82, v76 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2384
	ds_load_u8 v66, v76 offset:2320
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2512
	ds_load_u8 v82, v76 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2128
	ds_load_u8 v82, v76 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:2256
	ds_load_u8 v83, v76 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[78:81], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2912
	ds_load_u8 v66, v76 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3040
	ds_load_u8 v67, v76 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2656
	ds_load_u8 v68, v76 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2784
	ds_load_u8 v82, v76 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2400
	ds_load_u8 v66, v76 offset:2336
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2528
	ds_load_u8 v82, v76 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2144
	ds_load_u8 v82, v76 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:2272
	ds_load_u8 v83, v76 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[78:81], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2928
	ds_load_u8 v66, v76 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s33, v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v76 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2672
	ds_load_u8 v68, v76 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2800
	ds_load_u8 v82, v76 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2416
	ds_load_u8 v66, v76 offset:2352
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2544
	ds_load_u8 v82, v76 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2160
	ds_load_u8 v82, v76 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:2288
	ds_load_u8 v83, v76 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[78:81], v[65:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3904
	ds_load_u8 v66, v76 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s4, v75
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:4032
	ds_load_u8 v67, v76 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3648
	ds_load_u8 v68, v76 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3776
	ds_load_u8 v69, v76 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3392
	ds_load_u8 v66, v76 offset:3328
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3520
	ds_load_u8 v69, v76 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3136
	ds_load_u8 v69, v76 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v76 offset:3264
	ds_load_u8 v70, v76 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v78
	ds_load_b128 v[78:81], v78 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[78:81], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3920
	ds_load_u8 v66, v76 offset:3856
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v167, v167, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v3
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v166, v166, v2 :: v_dual_add_f32 v153, v153, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v4
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v159, v159, v58
	v_add_f32_e32 v157, v157, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:4048
	ds_load_u8 v67, v76 offset:3984
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v165, v165, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v155, v155, v62
	v_add_f32_e32 v137, v137, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3664
	ds_load_u8 v68, v76 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3792
	ds_load_u8 v82, v76 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3408
	ds_load_u8 v66, v76 offset:3344
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3536
	ds_load_u8 v82, v76 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3152
	ds_load_u8 v82, v76 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:3280
	ds_load_u8 v83, v76 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[78:81], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3936
	ds_load_u8 v66, v76 offset:3872
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v164, v164, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v163, v163, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v162, v162, v2 :: v_dual_add_f32 v145, v145, v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:4064
	ds_load_u8 v67, v76 offset:4000
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v161, v161, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v160, v160, v57 :: v_dual_add_f32 v151, v151, v50
	v_dual_add_f32 v158, v158, v59 :: v_dual_add_f32 v147, v147, v54
	v_dual_add_f32 v156, v156, v61 :: v_dual_add_f32 v143, v143, v42
	v_dual_add_f32 v154, v154, v63 :: v_dual_add_f32 v141, v141, v44
	v_dual_add_f32 v152, v152, v49 :: v_dual_add_f32 v139, v139, v46
	v_add_f32_e32 v149, v149, v52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3680
	ds_load_u8 v68, v76 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3808
	ds_load_u8 v82, v76 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3424
	ds_load_u8 v66, v76 offset:3360
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3552
	ds_load_u8 v82, v76 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3168
	ds_load_u8 v82, v76 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:3296
	ds_load_u8 v83, v76 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[78:81], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3952
	ds_load_u8 v66, v76 offset:3888
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v5, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v138, v138, v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v140, v140, v45
	v_add_f32_e32 v123, v123, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v125, v125, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v31
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v142, v142, v43 :: v_dual_add_f32 v127, v127, v2
	v_dual_add_f32 v136, v136, v48 :: v_dual_add_f32 v121, v121, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s33, v173
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v76 offset:4016
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v150, v150, v51 :: v_dual_add_f32 v135, v135, v33
	v_dual_add_f32 v148, v148, v53 :: v_dual_add_f32 v133, v133, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v146, v146, v55 :: v_dual_add_f32 v131, v131, v37
	v_dual_add_f32 v144, v144, v41 :: v_dual_add_f32 v129, v129, v39
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3696
	ds_load_u8 v68, v76 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3824
	ds_load_u8 v82, v76 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3440
	ds_load_u8 v66, v76 offset:3376
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3568
	ds_load_u8 v82, v76 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3184
	ds_load_u8 v82, v76 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:3312
	ds_load_u8 v76, v76 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v76, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[78:81], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v134, v134, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v20
	v_cvt_f32_i32_e32 v6, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v119, v119, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v116, v116, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v126, v126, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v114, v114, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v124, v124, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v118, v118, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v128, v128, v40 :: v_dual_add_f32 v111, v111, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v120, v120, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v130, v130, v38
	v_add_f32_e32 v113, v113, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v109, v109, v5
	v_add_f32_e32 v115, v115, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v10
	v_cvt_f32_i32_e32 v3, v14
	v_cvt_f32_i32_e32 v5, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v108, v108, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v110, v110, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v122, v122, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v132, v132, v36
	v_dual_add_f32 v106, v106, v3 :: v_dual_add_f32 v105, v105, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_add_f32 v104, v104, v5 :: v_dual_add_f32 v117, v117, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v112, v112, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v107, v107, v2
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v169, s1, v173
	v_add_nc_u32_e32 v173, s1, v101
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v171, s1, v171
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	ds_load_u8 v17, v173 offset:1856
	ds_load_u8 v18, v173 offset:1792
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s0, v75
	ds_load_b128 v[65:68], v1 offset:8192
	ds_load_b128 v[81:84], v1
	v_add_nc_u32_e32 v1, s0, v74
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[85:88], v1
	v_add_nc_u32_e32 v1, s0, v73
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:1984
	ds_load_u8 v19, v173 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[73:76], v1 offset:8192
	ds_load_b128 v[89:92], v1
	v_add_nc_u32_e32 v1, s0, v77
	ds_load_b128 v[77:80], v1 offset:8192
	ds_load_b128 v[93:96], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v173 offset:832
	ds_load_u8 v2, v173 offset:768
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v172, s1, v172
	v_add_nc_u32_e32 v58, s1, v170
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v173 offset:1600
	ds_load_u8 v18, v173 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v173 offset:960
	ds_load_u8 v3, v173 offset:896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:1728
	ds_load_u8 v19, v173 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v173 offset:576
	ds_load_u8 v2, v173 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v173 offset:1344
	ds_load_u8 v18, v173 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v173 offset:704
	ds_load_u8 v3, v173 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:1472
	ds_load_u8 v19, v173 offset:1408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v173 offset:320
	ds_load_u8 v2, v173 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v173 offset:1088
	ds_load_u8 v18, v173 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v173 offset:448
	ds_load_u8 v3, v173 offset:384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:1216
	ds_load_u8 v19, v173 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v173 offset:64
	ds_load_u8 v2, v173
	ds_load_u8 v42, v173 offset:16
	ds_load_u8 v41, v173 offset:32
	ds_load_u8 v57, v173 offset:48
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v173 offset:2880
	ds_load_u8 v18, v173 offset:2816
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v173 offset:192
	ds_load_u8 v3, v173 offset:128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:3008
	ds_load_u8 v19, v173 offset:2944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v173 offset:2624
	ds_load_u8 v18, v173 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:2752
	ds_load_u8 v19, v173 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v173 offset:2368
	ds_load_u8 v18, v173 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:2496
	ds_load_u8 v19, v173 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v173 offset:2112
	ds_load_u8 v18, v173 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:2240
	ds_load_u8 v19, v173 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v173 offset:3904
	ds_load_u8 v18, v173 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:4032
	ds_load_u8 v19, v173 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v173 offset:3648
	ds_load_u8 v18, v173 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:3776
	ds_load_u8 v19, v173 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v173 offset:3392
	ds_load_u8 v18, v173 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:3520
	ds_load_u8 v19, v173 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v173 offset:3136
	ds_load_u8 v18, v173 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v173 offset:3264
	ds_load_u8 v19, v173 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v173 offset:848
	ds_load_u8 v26, v173 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v9, v9
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[33:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v173 offset:1872
	ds_load_u8 v34, v173 offset:1808
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v173 offset:976
	ds_load_u8 v27, v173 offset:912
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:2000
	ds_load_u8 v35, v173 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v173 offset:592
	ds_load_u8 v26, v173 offset:528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v173 offset:1616
	ds_load_u8 v34, v173 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v173 offset:720
	ds_load_u8 v27, v173 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:1744
	ds_load_u8 v35, v173 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v173 offset:336
	ds_load_u8 v26, v173 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v173 offset:1360
	ds_load_u8 v34, v173 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v173 offset:464
	ds_load_u8 v27, v173 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:1488
	ds_load_u8 v35, v173 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v173 offset:80
	ds_load_u8 v26, v173 offset:208
	ds_load_u8 v27, v173 offset:144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v173 offset:1104
	ds_load_u8 v34, v173 offset:1040
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:1232
	ds_load_u8 v35, v173 offset:1168
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v173 offset:2896
	ds_load_u8 v34, v173 offset:2832
	v_wmma_i32_16x16x16_iu8 v[25:32], v[89:92], v[46:49], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:3024
	ds_load_u8 v35, v173 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v173 offset:2640
	ds_load_u8 v34, v173 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:2768
	ds_load_u8 v35, v173 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v173 offset:2384
	ds_load_u8 v34, v173 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:2512
	ds_load_u8 v35, v173 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v173 offset:2128
	ds_load_u8 v34, v173 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:2256
	ds_load_u8 v35, v173 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v173 offset:3920
	ds_load_u8 v34, v173 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[85:88], v[50:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:4048
	ds_load_u8 v35, v173 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v173 offset:3664
	ds_load_u8 v34, v173 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:3792
	ds_load_u8 v35, v173 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v173 offset:3408
	ds_load_u8 v34, v173 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:3536
	ds_load_u8 v35, v173 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v173 offset:3152
	ds_load_u8 v34, v173 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v173 offset:3280
	ds_load_u8 v35, v173 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v173 offset:864
	ds_load_u8 v43, v173 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v25, v25
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[50:53], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v173 offset:1888
	ds_load_u8 v50, v173 offset:1824
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[59:62], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v173 offset:992
	ds_load_u8 v44, v173 offset:928
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:2016
	ds_load_u8 v51, v173 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v173 offset:608
	ds_load_u8 v43, v173 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v100, v50, 16, v49
	ds_load_u8 v49, v173 offset:1632
	ds_load_u8 v50, v173 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v173 offset:736
	ds_load_u8 v44, v173 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:1760
	ds_load_u8 v51, v173 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v173 offset:352
	ds_load_u8 v43, v173 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v99, v50, 16, v49
	ds_load_u8 v49, v173 offset:1376
	ds_load_u8 v50, v173 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v173 offset:480
	ds_load_u8 v44, v173 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:1504
	ds_load_u8 v51, v173 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v173 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v98, v50, 16, v49
	ds_load_u8 v49, v173 offset:1120
	ds_load_u8 v50, v173 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v173 offset:224
	ds_load_u8 v43, v173 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:1248
	ds_load_u8 v51, v173 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v59, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v50, 16, v49
	ds_load_u8 v49, v173 offset:2912
	ds_load_u8 v50, v173 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[89:92], v[97:100], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:3040
	ds_load_u8 v51, v173 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v50, 16, v49
	ds_load_u8 v49, v173 offset:2656
	ds_load_u8 v50, v173 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:2784
	ds_load_u8 v51, v173 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v50, 16, v49
	ds_load_u8 v49, v173 offset:2400
	ds_load_u8 v50, v173 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:2528
	ds_load_u8 v51, v173 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v50, 16, v49
	ds_load_u8 v49, v173 offset:2144
	ds_load_u8 v50, v173 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:2272
	ds_load_u8 v51, v173 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v50, 16, v49
	ds_load_u8 v49, v173 offset:3936
	ds_load_u8 v50, v173 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[85:88], v[174:177], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:4064
	ds_load_u8 v51, v173 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v50, 16, v49
	ds_load_u8 v49, v173 offset:3680
	ds_load_u8 v50, v173 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:3808
	ds_load_u8 v51, v173 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v50, 16, v49
	ds_load_u8 v49, v173 offset:3424
	ds_load_u8 v50, v173 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:3552
	ds_load_u8 v51, v173 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v50, 16, v49
	ds_load_u8 v49, v173 offset:3168
	ds_load_u8 v50, v173 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v173 offset:3296
	ds_load_u8 v51, v173 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[59:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v59, v173 offset:880
	ds_load_u8 v60, v173 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[178:181], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[97:100], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v41, v41
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[174:177], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[178:181], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v58, v58
	ds_load_u8 v60, v173 offset:944
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v58, 16, v59
	ds_load_u8 v58, v173 offset:624
	ds_load_u8 v59, v173 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v173 offset:752
	ds_load_u8 v60, v173 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v59, 16, v58
	ds_load_u8 v58, v173 offset:368
	ds_load_u8 v59, v173 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v173 offset:496
	ds_load_u8 v60, v173 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v59, 16, v58
	ds_load_u8 v58, v173 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v173 offset:240
	ds_load_u8 v59, v173 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[97:100], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v93, v173 offset:1904
	ds_load_u8 v94, v173 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v171
	ds_load_u8 v95, v173 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v94, 16, v93
	ds_load_u8 v93, v173 offset:1648
	ds_load_u8 v94, v173 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v173 offset:1776
	ds_load_u8 v95, v173 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v94, 16, v93
	ds_load_u8 v93, v173 offset:1392
	ds_load_u8 v94, v173 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v173 offset:1520
	ds_load_u8 v170, v173 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v170, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v173 offset:1136
	ds_load_u8 v170, v173 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v170, v93, 0xc0c0004
	ds_load_u8 v170, v173 offset:1264
	ds_load_u8 v171, v173 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v170, 16, v93
	v_wmma_i32_16x16x16_iu8 v[57:64], v[89:92], v[93:96], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v173 offset:2928
	ds_load_u8 v90, v173 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[73:76], v[93:96], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v172
	ds_load_u8 v91, v173 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v173 offset:2672
	ds_load_u8 v90, v173 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v173 offset:2800
	ds_load_u8 v91, v173 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v90, 16, v89
	ds_load_u8 v89, v173 offset:2416
	ds_load_u8 v90, v173 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v173 offset:2544
	ds_load_u8 v170, v173 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v170, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v173 offset:2160
	ds_load_u8 v170, v173 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v170, v89, 0xc0c0004
	ds_load_u8 v170, v173 offset:2288
	ds_load_u8 v171, v173 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v170, 16, v89
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[89:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v85, v173 offset:3952
	ds_load_u8 v86, v173 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v169
	ds_load_u8 v87, v173 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v173 offset:3696
	ds_load_u8 v86, v173 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v173 offset:3824
	ds_load_u8 v87, v173 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v86, 16, v85
	ds_load_u8 v85, v173 offset:3440
	ds_load_u8 v86, v173 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v173 offset:3568
	ds_load_u8 v169, v173 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v169, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v173 offset:3184
	ds_load_u8 v169, v173 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v169, v85, 0xc0c0004
	ds_load_u8 v169, v173 offset:3312
	ds_load_u8 v170, v173 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v169, 16, v85
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[85:88], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[85:88], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v65, s28, v101
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v66, s3, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v167, v10 :: v_dual_lshlrev_b32 v65, 1, v65
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s24, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v9, v137, v9 :: v_dual_lshlrev_b32 v66, 1, v66
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v67, 32, v65
	v_or_b32_e32 v68, 64, v65
	v_or_b32_e32 v69, 0x60, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v105, v7 :: v_dual_add_f32 v73, v104, v8
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	buffer_load_u16 v69, v69, s[24:27], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s25, s19, 0xffff
	s_mov_b32 s24, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v11, v166, v11 :: v_dual_add_f32 v12, v165, v12
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v13, v164, v13 :: v_dual_add_f32 v14, v163, v14
	v_dual_add_f32 v15, v162, v15 :: v_dual_add_f32 v16, v161, v16
	v_dual_add_f32 v17, v160, v17 :: v_dual_add_f32 v18, v159, v18
	v_dual_add_f32 v19, v158, v19 :: v_dual_add_f32 v20, v157, v20
	v_dual_add_f32 v21, v156, v21 :: v_dual_add_f32 v22, v155, v22
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v74, v102, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v137, v9, s2
	v_cndmask_b32_e64 v76, v167, v10, s2
	v_cndmask_b32_e64 v77, v166, v11, s2
	v_cndmask_b32_e64 v78, v165, v12, s2
	v_cndmask_b32_e64 v79, v164, v13, s2
	v_cndmask_b32_e64 v80, v163, v14, s2
	v_cndmask_b32_e64 v81, v162, v15, s2
	v_cndmask_b32_e64 v82, v161, v16, s2
	v_cndmask_b32_e64 v83, v160, v17, s2
	v_cndmask_b32_e64 v84, v159, v18, s2
	v_cndmask_b32_e64 v85, v158, v19, s2
	v_cndmask_b32_e64 v86, v157, v20, s2
	v_cndmask_b32_e64 v87, v156, v21, s2
	v_cndmask_b32_e64 v88, v155, v22, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v70, 1, v102
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v109, v3 :: v_dual_add_f32 v4, v108, v4
	v_dual_add_f32 v71, v111, v1 :: v_dual_add_f32 v2, v110, v2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v1, s23, v101
	s_mul_i32 s28, s28, s23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v154, v23 :: v_dual_add_f32 v24, v153, v24
	v_dual_add_f32 v25, v152, v25 :: v_dual_add_f32 v26, v151, v26
	v_dual_add_f32 v5, v107, v5 :: v_dual_add_f32 v6, v106, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v108, v4, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v4, s28, s3, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v109, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v27, v150, v27 :: v_dual_add_f32 v28, v149, v28
	v_dual_add_f32 v29, v148, v29 :: v_dual_add_f32 v30, v147, v30
	v_dual_add_f32 v33, v144, v33 :: v_dual_add_f32 v34, v143, v34
	v_dual_add_f32 v41, v135, v41 :: v_dual_add_f32 v42, v134, v42
	v_dual_add_f32 v43, v133, v43 :: v_dual_add_f32 v44, v132, v44
	v_dual_add_f32 v45, v131, v45 :: v_dual_add_f32 v46, v130, v46
	v_dual_add_f32 v47, v129, v47 :: v_dual_add_f32 v48, v128, v48
	v_dual_add_f32 v49, v127, v49 :: v_dual_add_f32 v50, v126, v50
	v_dual_add_f32 v51, v125, v51 :: v_dual_add_f32 v52, v124, v52
	v_dual_add_f32 v53, v123, v53 :: v_dual_add_f32 v54, v122, v54
	v_dual_add_f32 v55, v121, v55 :: v_dual_add_f32 v56, v120, v56
	v_dual_add_f32 v57, v119, v57 :: v_dual_add_f32 v58, v118, v58
	v_dual_add_f32 v59, v117, v59 :: v_dual_add_f32 v60, v116, v60
	v_dual_add_f32 v61, v115, v61 :: v_dual_add_f32 v62, v114, v62
	v_dual_add_f32 v63, v113, v63 :: v_dual_add_f32 v64, v112, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v154, v23, s2
	v_cndmask_b32_e64 v24, v153, v24, s2
	v_cndmask_b32_e64 v26, v151, v26, s2
	v_cndmask_b32_e64 v91, v107, v5, s2
	v_cndmask_b32_e64 v92, v106, v6, s2
	v_cndmask_b32_e64 v72, v105, v72, s2
	v_cndmask_b32_e64 v73, v104, v73, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v146, v31 :: v_dual_add_f32 v32, v145, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v152, v25, s2
	v_cndmask_b32_e64 v27, v150, v27, s2
	v_cndmask_b32_e64 v29, v148, v29, s2
	v_cndmask_b32_e64 v34, v143, v34, s2
	v_cndmask_b32_e64 v41, v135, v41, s2
	v_cndmask_b32_e64 v42, v134, v42, s2
	v_cndmask_b32_e64 v43, v133, v43, s2
	v_cndmask_b32_e64 v44, v132, v44, s2
	v_cndmask_b32_e64 v45, v131, v45, s2
	v_cndmask_b32_e64 v46, v130, v46, s2
	v_cndmask_b32_e64 v47, v129, v47, s2
	v_cndmask_b32_e64 v48, v128, v48, s2
	v_cndmask_b32_e64 v49, v127, v49, s2
	v_cndmask_b32_e64 v50, v126, v50, s2
	v_cndmask_b32_e64 v51, v125, v51, s2
	v_cndmask_b32_e64 v52, v124, v52, s2
	v_cndmask_b32_e64 v53, v123, v53, s2
	v_cndmask_b32_e64 v54, v122, v54, s2
	v_cndmask_b32_e64 v55, v121, v55, s2
	v_cndmask_b32_e64 v56, v120, v56, s2
	v_cndmask_b32_e64 v57, v119, v57, s2
	v_cndmask_b32_e64 v58, v118, v58, s2
	v_cndmask_b32_e64 v59, v117, v59, s2
	v_cndmask_b32_e64 v60, v116, v60, s2
	v_cndmask_b32_e64 v61, v115, v61, s2
	v_cndmask_b32_e64 v62, v114, v62, s2
	v_cndmask_b32_e64 v63, v113, v63, s2
	v_cndmask_b32_e64 v64, v112, v64, s2
	v_cndmask_b32_e64 v28, v149, v28, s2
	v_cndmask_b32_e64 v30, v147, v30, s2
	v_cndmask_b32_e64 v32, v145, v32, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v35, v142, v35 :: v_dual_add_f32 v36, v141, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v146, v31, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v37, v140, v37 :: v_dual_add_f32 v38, v139, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v144, v33, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v36, v141, v36, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v138, v39 :: v_dual_add_f32 v40, v136, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v142, v35, s2
	v_cndmask_b32_e64 v38, v139, v38, s2
	v_cndmask_b32_e64 v37, v140, v37, s2
	v_cndmask_b32_e64 v39, v138, v39, s2
	v_cndmask_b32_e64 v40, v136, v40, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v6, s23, 4, v1
	v_lshl_add_u32 v5, s23, 5, v1
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s26
	v_and_b32_e32 v0, 16, v0
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v67, 16, v67
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v7, 2, v102
	v_lshlrev_b32_e32 v8, 5, v168
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v7, 0, v7, v8
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v111, v71, s2
	v_cndmask_b32_e64 v71, v110, v2, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[2:3], null, s23, 48, v[1:2]
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v7, v103, 1, v7
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v1, v4, v1, 1
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_mov_b32 s23, s27
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	ds_store_b32 v7, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v74
	ds_load_b128 v[11:14], v74 offset:16
	ds_load_b128 v[15:18], v74 offset:512
	ds_load_b128 v[19:22], v74 offset:528
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v106, v7, v67 :: v_dual_add_nc_u32 v3, 0x80, v4
	v_mul_f32_e32 v70, v7, v65
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v97, v13, v65 :: v_dual_lshlrev_b32 v68, 16, v68
	v_mul_f32_e32 v74, v8, v65
	v_mul_f32_e32 v93, v9, v65
	v_mul_f32_e32 v94, v10, v65
	v_dual_mul_f32 v108, v9, v67 :: v_dual_lshlrev_b32 v69, 16, v69
	v_mul_f32_e32 v95, v11, v65
	v_dual_mul_f32 v96, v12, v65 :: v_dual_mul_f32 v109, v10, v67
	v_dual_mul_f32 v98, v14, v65 :: v_dual_mul_f32 v107, v8, v67
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v99, v15, v65 :: v_dual_mul_f32 v112, v13, v67
	v_dual_mul_f32 v100, v16, v65 :: v_dual_mul_f32 v113, v14, v67
	v_dual_mul_f32 v101, v17, v65 :: v_dual_mul_f32 v110, v11, v67
	v_dual_mul_f32 v102, v18, v65 :: v_dual_mul_f32 v111, v12, v67
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v103, v19, v65 :: v_dual_mul_f32 v116, v17, v67
	v_dual_mul_f32 v104, v20, v65 :: v_dual_mul_f32 v117, v18, v67
	v_dual_mul_f32 v105, v21, v65 :: v_dual_mul_f32 v114, v15, v67
	v_dual_mul_f32 v65, v22, v65 :: v_dual_mul_f32 v118, v19, v67
	v_dual_mul_f32 v115, v16, v67 :: v_dual_mul_f32 v124, v10, v68
	v_dual_mul_f32 v119, v20, v67 :: v_dual_mul_f32 v128, v14, v68
	v_dual_mul_f32 v120, v21, v67 :: v_dual_mul_f32 v121, v7, v68
	v_dual_mul_f32 v67, v22, v67 :: v_dual_mul_f32 v122, v8, v68
	v_dual_mul_f32 v123, v9, v68 :: v_dual_mul_f32 v8, v8, v69
	v_dual_mul_f32 v125, v11, v68 :: v_dual_mul_f32 v10, v10, v69
	v_dual_mul_f32 v126, v12, v68 :: v_dual_mul_f32 v7, v7, v69
	v_dual_mul_f32 v127, v13, v68 :: v_dual_mul_f32 v12, v12, v69
	v_dual_mul_f32 v129, v15, v68 :: v_dual_mul_f32 v14, v14, v69
	v_dual_mul_f32 v130, v16, v68 :: v_dual_mul_f32 v9, v9, v69
	v_dual_mul_f32 v131, v17, v68 :: v_dual_mul_f32 v16, v16, v69
	v_dual_mul_f32 v132, v18, v68 :: v_dual_mul_f32 v11, v11, v69
	v_dual_mul_f32 v133, v19, v68 :: v_dual_mul_f32 v18, v18, v69
	v_dual_mul_f32 v134, v20, v68 :: v_dual_mul_f32 v13, v13, v69
	v_dual_mul_f32 v135, v21, v68 :: v_dual_mul_f32 v20, v20, v69
	v_dual_mul_f32 v68, v22, v68 :: v_dual_mul_f32 v15, v15, v69
	v_dual_mul_f32 v19, v19, v69 :: v_dual_mul_f32 v26, v26, v107
	v_mul_f32_e32 v22, v22, v69
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v23, v23, v105 :: v_dual_mul_f32 v34, v34, v115
	v_dual_mul_f32 v24, v24, v65 :: v_dual_mul_f32 v25, v25, v106
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v17, v17, v69
	v_mul_f32_e32 v21, v21, v69
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v69, v75, v70
	v_mul_f32_e32 v70, v76, v74
	v_dual_mul_f32 v74, v77, v93 :: v_dual_mul_f32 v75, v78, v94
	v_dual_mul_f32 v76, v79, v95 :: v_dual_mul_f32 v77, v80, v96
	v_dual_mul_f32 v78, v81, v97 :: v_dual_mul_f32 v79, v82, v98
	v_dual_mul_f32 v80, v83, v99 :: v_dual_mul_f32 v81, v84, v100
	v_dual_mul_f32 v82, v85, v101 :: v_dual_mul_f32 v83, v86, v102
	v_dual_mul_f32 v84, v87, v103 :: v_dual_mul_f32 v85, v88, v104
	v_dual_mul_f32 v30, v30, v111 :: v_dual_mul_f32 v27, v27, v108
	v_dual_mul_f32 v28, v28, v109 :: v_dual_mul_f32 v29, v29, v110
	v_dual_mul_f32 v32, v32, v113 :: v_dual_mul_f32 v19, v91, v19
	v_mul_f32_e32 v22, v73, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_bfe_u32 v73, v23, 16, 1
	v_bfe_u32 v86, v24, 16, 1
	v_bfe_u32 v88, v26, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v57, v7 :: v_dual_mul_f32 v12, v62, v12
	v_mul_f32_e32 v17, v89, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v57, v69, 16, 1
	v_cmp_o_f32_e64 s13, v23, v23
	v_cmp_o_f32_e64 s14, v24, v24
	v_cmp_o_f32_e64 s16, v26, v26
	v_bfe_u32 v89, v27, 16, 1
	v_bfe_u32 v91, v29, 16, 1
	v_add3_u32 v23, v23, v73, 0x7fff
	v_add3_u32 v24, v24, v86, 0x7fff
	v_add3_u32 v26, v26, v88, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v13, v63, v13 :: v_dual_mul_f32 v18, v90, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v87, v25, 16, 1
	v_bfe_u32 v90, v28, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v31, v31, v112 :: v_dual_mul_f32 v36, v36, v117
	v_dual_mul_f32 v53, v53, v133 :: v_dual_mul_f32 v8, v58, v8
	v_dual_mul_f32 v9, v59, v9 :: v_dual_mul_f32 v14, v64, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_bfe_u32 v58, v70, 16, 1
	v_bfe_u32 v59, v74, 16, 1
	v_cmp_o_f32_e64 s17, v27, v27
	v_cmp_o_f32_e64 s19, v29, v29
	v_add3_u32 v57, v69, v57, 0x7fff
	v_add3_u32 v27, v27, v89, 0x7fff
	v_add3_u32 v29, v29, v91, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s13
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s14
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s16
	v_bfe_u32 v26, v30, 16, 1
	v_cmp_o_f32_e64 s15, v25, v25
	v_cmp_o_f32_e64 s18, v28, v28
	v_add3_u32 v25, v25, v87, 0x7fff
	v_add3_u32 v28, v28, v90, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v33, v33, v114 :: v_dual_mul_f32 v38, v38, v119
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v70, v70
	v_cmp_o_f32_e64 s1, v74, v74
	v_add3_u32 v58, v70, v58, 0x7fff
	v_add3_u32 v59, v74, v59, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v57.h, vcc_lo
	v_cndmask_b16 v25.l, 0x7fff, v27.h, s17
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v35, v35, v116 :: v_dual_mul_f32 v40, v40, v67
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s0
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s1
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s15
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s18
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v32, v32
	v_cndmask_b16 v28.h, 0x7fff, v26.h, vcc_lo
	v_bfe_u32 v26, v33, 16, 1
	v_bfe_u32 v30, v34, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v37, v37, v118 :: v_dual_mul_f32 v44, v44, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v35, 16, 1
	v_add3_u32 v26, v33, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v30, v34, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v34, v34
	v_bfe_u32 v31, v36, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v39, v39, v120 :: v_dual_mul_f32 v42, v42, v122
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v29, v35, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v35, v35
	v_cndmask_b16 v26.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v30.h, s0
	v_bfe_u32 v30, v37, 16, 1
	v_bfe_u32 v32, v38, 16, 1
	v_add3_u32 v31, v36, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v41, v41, v121 :: v_dual_mul_f32 v46, v46, v126
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s1
	v_add3_u32 v30, v37, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v37, v37
	v_add3_u32 v32, v38, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v38, v38
	v_cndmask_b16 v29.h, 0x7fff, v31.h, vcc_lo
	v_bfe_u32 v31, v39, 16, 1
	v_bfe_u32 v33, v40, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v43, v43, v123 :: v_dual_mul_f32 v48, v48, v128
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s1
	v_bfe_u32 v32, v41, 16, 1
	v_add3_u32 v31, v39, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v33, v40, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	v_bfe_u32 v34, v42, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v45, v45, v125 :: v_dual_mul_f32 v50, v50, v130
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v32, v41, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v41, v41
	v_cndmask_b16 v31.l, 0x7fff, v31.h, vcc_lo
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s0
	v_bfe_u32 v33, v43, 16, 1
	v_bfe_u32 v35, v44, 16, 1
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v47, v47, v127 :: v_dual_mul_f32 v52, v52, v132
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s1
	v_add3_u32 v33, v43, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v43, v43
	v_add3_u32 v35, v44, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v44, v44
	v_cndmask_b16 v32.h, 0x7fff, v34.h, vcc_lo
	v_bfe_u32 v34, v45, 16, 1
	v_bfe_u32 v36, v46, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v49, v49, v129 :: v_dual_mul_f32 v54, v54, v134
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s0
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v47, 16, 1
	v_add3_u32 v34, v45, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v36, v46, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v46, v46
	v_bfe_u32 v37, v48, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v51, v51, v131 :: v_dual_mul_f32 v56, v56, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v35, v47, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_cndmask_b16 v34.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v49, 16, 1
	v_bfe_u32 v38, v50, 16, 1
	v_add3_u32 v37, v48, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	v_add3_u32 v36, v49, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v49, v49
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_cndmask_b16 v35.h, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v37, v51, 16, 1
	v_bfe_u32 v39, v52, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v55, v55, v135 :: v_dual_mul_f32 v10, v60, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s0
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s1
	v_bfe_u32 v38, v53, 16, 1
	v_add3_u32 v37, v51, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_add3_u32 v39, v52, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v52, v52
	v_add3_u32 v38, v53, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_cndmask_b16 v37.l, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v40, v54, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s0
	v_bfe_u32 v39, v55, 16, 1
	v_bfe_u32 v41, v56, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s1
	v_add3_u32 v40, v54, v40, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v39, v55, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_add3_u32 v41, v56, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v56, v56
	v_cndmask_b16 v38.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v7, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s0
	v_bfe_u32 v42, v8, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s1
	v_bfe_u32 v41, v9, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v11, v61, v11 :: v_dual_mul_f32 v16, v71, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v7, v40, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v7, v8, v42, 0x7fff
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v8, v9, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_bfe_u32 v9, v10, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v11, 16, 1
	v_bfe_u32 v41, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v9, v10, v9, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v15, v66, v15 :: v_dual_mul_f32 v20, v92, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v10, v11, v40, 0x7fff
	v_cmp_o_f32_e64 s0, v11, v11
	v_add3_u32 v11, v12, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_cndmask_b16 v8.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v13, 16, 1
	v_bfe_u32 v12, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s1
	v_bfe_u32 v11, v15, 16, 1
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v12, v14, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	v_bfe_u32 v13, v16, 16, 1
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v15, v15
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s0
	v_bfe_u32 v12, v17, 16, 1
	v_bfe_u32 v14, v18, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_bfe_u32 v62, v77, 16, 1
	v_bfe_u32 v67, v82, 16, 1
	v_bfe_u32 v68, v83, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_add3_u32 v12, v17, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v17, v17
	v_add3_u32 v14, v18, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_bfe_u32 v15, v19, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v20, 16, 1
	v_cmp_o_f32_e64 s4, v77, v77
	v_cmp_o_f32_e64 s9, v82, v82
	v_cmp_o_f32_e64 s10, v83, v83
	v_add3_u32 v62, v77, v62, 0x7fff
	v_add3_u32 v67, v82, v67, 0x7fff
	v_add3_u32 v68, v83, v68, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s1
	v_add3_u32 v14, v19, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v13, v20, v13, 0x7fff
	v_bfe_u32 v60, v75, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s4
	v_cndmask_b16 v62.l, 0x7fff, v67.h, s9
	v_cndmask_b16 v62.h, 0x7fff, v68.h, s10
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v21, v72, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v75, v75
	v_add3_u32 v60, v75, v60, 0x7fff
	v_bfe_u32 v16, v22, 16, 1
	v_cmp_o_f32_e64 s0, v20, v20
	v_cndmask_b32_e32 v20, v23, v62, vcc_lo
	v_bfe_u32 v15, v21, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s2
	v_cmp_o_f32_e64 s1, v21, v21
	v_add3_u32 v16, v22, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v22, v22
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_dual_cndmask_b32 v21, v62, v23 :: v_dual_cndmask_b32 v22, v28, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s1
	v_dual_cndmask_b32 v23, v24, v28 :: v_dual_cndmask_b32 v24, v27, v25
	v_cndmask_b32_e32 v25, v25, v27, vcc_lo
	v_dual_cndmask_b32 v27, v30, v26 :: v_dual_cndmask_b32 v28, v31, v29
	v_dual_cndmask_b32 v26, v26, v30 :: v_dual_cndmask_b32 v29, v29, v31
	v_dual_cndmask_b32 v30, v34, v32 :: v_dual_cndmask_b32 v31, v32, v34
	v_dual_cndmask_b32 v32, v35, v33 :: v_dual_cndmask_b32 v33, v33, v35
	v_dual_cndmask_b32 v34, v38, v36 :: v_dual_cndmask_b32 v35, v36, v38
	v_dual_cndmask_b32 v36, v39, v37 :: v_dual_cndmask_b32 v37, v37, v39
	v_dual_cndmask_b32 v38, v10, v7 :: v_dual_cndmask_b32 v7, v7, v10
	v_dual_cndmask_b32 v39, v9, v8 :: v_dual_mov_b32 v10, 0x5410
	v_cndmask_b32_e32 v8, v8, v9, vcc_lo
	v_dual_cndmask_b32 v40, v13, v11 :: v_dual_cndmask_b32 v9, v11, v13
	v_mov_b32_e32 v11, 0x7632
	v_bfe_u32 v61, v76, 16, 1
	v_bfe_u32 v63, v78, 16, 1
	v_bfe_u32 v64, v79, 16, 1
	v_dual_cndmask_b32 v41, v0, v12 :: v_dual_cndmask_b32 v10, 0x1054, v10
	v_dual_cndmask_b32 v0, v12, v0 :: v_dual_cndmask_b32 v11, 0x3276, v11
	v_bfe_u32 v65, v80, 16, 1
	v_bfe_u32 v66, v81, 16, 1
	v_bfe_u32 v71, v84, 16, 1
	v_bfe_u32 v72, v85, 16, 1
	v_cmp_o_f32_e64 s3, v76, v76
	v_cmp_o_f32_e64 s5, v78, v78
	v_cmp_o_f32_e64 s6, v79, v79
	v_add3_u32 v61, v76, v61, 0x7fff
	v_add3_u32 v63, v78, v63, 0x7fff
	v_add3_u32 v64, v79, v64, 0x7fff
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v11, v11, 8, v11
	v_cmp_o_f32_e64 s7, v80, v80
	v_cmp_o_f32_e64 s8, v81, v81
	v_cmp_o_f32_e64 s11, v84, v84
	v_cmp_o_f32_e64 s12, v85, v85
	v_add3_u32 v65, v80, v65, 0x7fff
	v_add3_u32 v66, v81, v66, 0x7fff
	v_add3_u32 v69, v84, v71, 0x7fff
	v_add3_u32 v70, v85, v72, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v61.h, s3
	v_cndmask_b16 v60.l, 0x7fff, v63.h, s5
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s6
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b16 v61.l, 0x7fff, v65.h, s7
	v_cndmask_b16 v61.h, 0x7fff, v66.h, s8
	v_cndmask_b16 v63.l, 0x7fff, v69.h, s11
	v_cndmask_b16 v63.h, 0x7fff, v70.h, s12
	v_dual_cndmask_b32 v14, v59, v57 :: v_dual_cndmask_b32 v15, v57, v59
	v_dual_cndmask_b32 v16, v60, v58 :: v_dual_cndmask_b32 v17, v58, v60
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	v_dual_cndmask_b32 v18, v63, v61 :: v_dual_cndmask_b32 v19, v61, v63
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(SALU_CYCLE_1)
	v_permlanex16_b32 v12, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v37, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v10
	v_and_b32_e32 v42, 0x7060706, v11
	v_permlanex16_b32 v15, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v12, v14, v37
	v_perm_b32 v8, v12, v14, v42
	v_perm_b32 v9, v13, v16, v37
	v_perm_b32 v10, v13, v16, v42
	v_perm_b32 v11, v15, v18, v37
	v_perm_b32 v12, v15, v18, v42
	v_perm_b32 v13, v17, v20, v37
	v_perm_b32 v14, v17, v20, v42
	v_perm_b32 v15, v19, v22, v37
	v_perm_b32 v16, v19, v22, v42
	v_perm_b32 v17, v21, v24, v37
	v_perm_b32 v18, v21, v24, v42
	v_perm_b32 v19, v23, v27, v37
	v_perm_b32 v20, v23, v27, v42
	v_perm_b32 v21, v25, v28, v37
	v_perm_b32 v22, v25, v28, v42
	v_perm_b32 v23, v26, v30, v37
	v_perm_b32 v24, v26, v30, v42
	v_perm_b32 v25, v29, v32, v37
	v_perm_b32 v26, v29, v32, v42
	v_perm_b32 v27, v31, v34, v37
	v_perm_b32 v28, v31, v34, v42
	v_perm_b32 v29, v33, v36, v37
	v_perm_b32 v30, v33, v36, v42
	v_perm_b32 v33, v43, v39, v37
	v_perm_b32 v34, v43, v39, v42
	v_add_lshl_u32 v39, v4, v6, 1
	v_perm_b32 v31, v35, v38, v37
	v_perm_b32 v32, v35, v38, v42
	v_perm_b32 v35, v44, v40, v37
	v_perm_b32 v37, v0, v41, v37
	v_perm_b32 v38, v0, v41, v42
	v_add_lshl_u32 v0, v3, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v1, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v1, s[20:23], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v1, v4, v5, 1
	v_add_lshl_u32 v5, v3, v5, 1
	v_add_lshl_u32 v4, v4, v2, 1
	v_perm_b32 v36, v44, v40, v42
	v_add_lshl_u32 v2, v3, v2, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v1, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v2, s[20:23], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 188
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25804
; TotalNumSgprs: 38
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	347                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	346                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
