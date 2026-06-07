	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s29, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v10, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshlrev_b32_e32 v87, 5, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0xc0, v3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[18:19]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s19
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v10
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s9, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s9
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s10, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s8, 0, s7
	v_rcp_iflag_f32_e32 v2, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_readfirstlane_b32 s6, v2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[5:6], null, s29, v3, v[1:2]
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mul_lo_u32 v2, s29, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v8, s29, 6, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v9, s29, 7, v5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s8, s8, s6
	s_mul_hi_u32 s4, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s10
	s_mul_i32 s8, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s5, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s8, s4, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s5, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s8, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s29, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s3, s10
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s3, s3, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s4
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s3, s29
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s22, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s7, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[6:7], null, s22, s29, v[5:6]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s28, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, s5
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s28
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v12, s5, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s9, s5, 64
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s4, v5
	v_add_nc_u32_e32 v7, s4, v8
	v_add_nc_u32_e32 v11, s4, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add3_u32 v2, v2, v1, s4
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v15, s9, v1
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, 64
	v_add_nc_u32_e32 v13, 64, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v14, 64, v2
	v_dual_cndmask_b32 v19, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v33, s4, v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v15
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v31, s9, v6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v32, s4, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[6:9], v12, s[16:19], 0 offen
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s7, 0xbf
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v12, 0x80000000, v33, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[15:18], v5, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v19, s[24:27], 0 offen
	buffer_load_b128 v[23:26], v11, s[24:27], 0 offen
	buffer_load_b128 v[27:30], v2, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v2, 0x80000000, v31 :: v_dual_cndmask_b32 v5, 0x80000000, v13
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v13, 0x80000000, v14 :: v_dual_lshlrev_b32 v14, 1, v0
	v_cndmask_b32_e32 v11, 0x80000000, v32, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[31:34], v2, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[35:38], v5, s[24:27], 0 offen
	buffer_load_b128 v[39:42], v11, s[24:27], 0 offen
	buffer_load_b128 v[43:46], v12, s[24:27], 0 offen
	buffer_load_b128 v[47:50], v13, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v14
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v13, 15, v0
	v_lshlrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v88, v10, v2
	v_add_nc_u32_e32 v2, 0, v88
	s_waitcnt vmcnt(9)
	ds_store_b128 v2, v[6:9] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v2, v[15:18]
	s_waitcnt vmcnt(7)
	ds_store_b128 v2, v[19:22] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v2, v[23:26] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v2, v[27:30] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v2, v[31:34] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v2, v[35:38] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v2, v[39:42] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v2, v[43:46] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[47:50] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 48, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v79, v13, 6, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v83, 0x1c00, v2, v79
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v80, 16, v79
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v84, 16, v83
	v_xor_b32_e32 v86, 32, v83
	v_xor_b32_e32 v85, 48, v83
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
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
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s0, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr85
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s8, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s7, 6
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v90, s5, v1, 0x80
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v2, 48, v5
	v_or_b32_e32 v4, s0, v4
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, s22, v3
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v79, v13, 6, v2
	v_or_b32_e32 v2, s0, v3
	s_lshl_b32 s0, s6, 8
	v_mul_lo_u32 v94, s29, v1
	v_subrev_nc_u32_e32 v4, s0, v4
	v_and_or_b32 v83, 0x1c00, v87, v79
	v_subrev_nc_u32_e32 v2, s0, v2
	s_mov_b32 s6, s4
	v_xor_b32_e32 v80, 16, v79
	v_mul_lo_u32 v89, s29, v4
	v_xor_b32_e32 v81, 32, v79
	v_or_b32_e32 v5, 0x80, v2
	v_or_b32_e32 v6, 64, v2
	v_mul_lo_u32 v93, s29, v2
	v_xor_b32_e32 v82, 48, v79
	v_xor_b32_e32 v84, 16, v83
	v_mul_lo_u32 v91, s29, v5
	v_mul_lo_u32 v92, s29, v6
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v86, 32, v83
	v_xor_b32_e32 v85, 48, v83
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v15, 0
	s_add_i32 s30, s1, -2
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s0, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v90
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, v94, v90
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v103, s4, v83
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v167, s31, v79
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v104, s4, v84
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v171, s31, v80
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[159:162], v103 offset:8192
	ds_load_b128 v[163:166], v104 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[111:114], v167
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[151:154], v103
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[115:118], v171
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[155:158], v104
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[127:130], v167 offset:1024
	ds_load_b128 v[131:134], v171 offset:1024
	ds_load_b128 v[143:146], v167 offset:2048
	ds_load_b128 v[147:150], v171 offset:2048
	ds_load_b128 v[167:170], v167 offset:3072
	ds_load_b128 v[171:174], v171 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[159:162], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[159:162], v[127:130], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[115:118], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[115:118], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[127:130], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[131:134], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[155:158], v[131:134], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[143:146], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[147:150], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[155:158], v[147:150], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[167:170], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[155:158], v[171:174], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[159:162], v[167:170], v[1:8] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v167, s4, v86
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[151:158], v[163:166], v[171:174], v[151:158] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v171, s31, v81
	ds_load_b128 v[159:162], v171
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v167
	ds_load_b128 v[167:170], v167 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[163:166], v[159:162], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[159:162], v[103:110] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[163:166], v[159:162], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[159:162], v[119:126] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[163:166], v[159:162], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[159:162], v[135:142] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:3072
	v_add_nc_u32_e32 v171, s31, v82
	s_mov_b32 s31, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s5, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s0, 2
	s_cselect_b32 s5, s0, 0
	s_add_i32 s30, s30, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s5, 12
	s_add_i32 s6, s0, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s0, s6, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[159:162], v[151:158] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v167, s4, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[143:150], v[163:166], v[159:162], v[143:150] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v167
	ds_load_b128 v[167:170], v167 offset:8192
	s_mov_b32 s4, s1
	s_lshl_b32 s1, s5, 14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s1, s1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s30, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[163:166], v[159:162], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[159:162], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v70, v70, v95
	v_add_f32_e32 v64, v64, v109
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v78, v78, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v77, v77, v97
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v97, v91, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v76, v76, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v66, v66, v107
	v_add_f32_e32 v74, v74, v100
	v_add_f32_e32 v72, v72, v102
	v_add_f32_e32 v68, v68, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[163:166], v[159:162], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[159:162], v[119:126] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:2048
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v96, v92, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v75, v75, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v103
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v103, 0x80000000, v97, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v73, v73, v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v104
	v_add_f32_e32 v67, v67, v106
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v99, 0x80000000, v96, vcc_lo
	buffer_load_b128 v[103:106], v103, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v65, v108
	v_add_f32_e32 v63, v63, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[163:166], v[159:162], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[159:162], v[135:142] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[159:162], v171 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v45, v45, v128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	buffer_load_b128 v[99:102], v99, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[159:162], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[163:166], v[159:162], v[143:150] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v95, v93, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v18, v18, v155
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_add_nc_u32 v98, v89, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v107, 0x80000000, v98, vcc_lo
	buffer_load_b128 v[95:98], v95, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	buffer_load_b128 v[107:110], v107, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v62, v62, v111 :: v_dual_add_f32 v61, v61, v112
	v_add_f32_e32 v46, v46, v127
	v_dual_add_f32 v60, v60, v113 :: v_dual_add_f32 v59, v59, v114
	v_add_f32_e32 v44, v44, v129
	v_dual_add_f32 v58, v58, v115 :: v_dual_add_f32 v57, v57, v116
	v_add_f32_e32 v42, v42, v131
	v_dual_add_f32 v56, v56, v117 :: v_dual_add_f32 v55, v55, v118
	v_add_f32_e32 v40, v40, v133
	v_dual_add_f32 v54, v54, v119 :: v_dual_add_f32 v53, v53, v120
	v_add_f32_e32 v38, v38, v135
	v_dual_add_f32 v52, v52, v121 :: v_dual_add_f32 v51, v51, v122
	v_add_f32_e32 v36, v36, v137
	v_dual_add_f32 v50, v50, v123 :: v_dual_add_f32 v49, v49, v124
	v_add_f32_e32 v34, v34, v139
	v_dual_add_f32 v48, v48, v125 :: v_dual_add_f32 v47, v47, v126
	v_dual_add_f32 v32, v32, v141 :: v_dual_add_f32 v43, v43, v130
	v_dual_add_f32 v30, v30, v143 :: v_dual_add_f32 v41, v41, v132
	v_dual_add_f32 v28, v28, v145 :: v_dual_add_f32 v39, v39, v134
	v_dual_add_f32 v26, v26, v147 :: v_dual_add_f32 v37, v37, v136
	v_dual_add_f32 v24, v24, v149 :: v_dual_add_f32 v35, v35, v138
	v_dual_add_f32 v22, v22, v151 :: v_dual_add_f32 v33, v33, v140
	v_dual_add_f32 v20, v20, v153 :: v_dual_add_f32 v31, v31, v142
	v_dual_add_f32 v16, v16, v157 :: v_dual_add_f32 v29, v29, v144
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v90, 64, v90
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v27, v27, v146 :: v_dual_add_nc_u32 v112, s1, v88
	v_add_f32_e32 v25, v25, v148
	v_add_f32_e32 v23, v23, v150
	v_add_f32_e32 v21, v21, v152
	v_add_f32_e32 v19, v19, v154
	v_add_f32_e32 v17, v17, v156
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v111, s6, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v15, v15, v158
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v111, v[9:12] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[95:98]
	ds_store_b128 v112, v[99:102] offset:4096
	ds_store_b128 v112, v[103:106] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[107:110] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v87
.LBB0_7:                                ; %._crit_edge
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s4, v86
	v_add_nc_u32_e32 v3, s4, v84
	v_add_nc_u32_e32 v11, s4, v85
	v_add_nc_u32_e32 v4, s4, v83
	s_mov_b32 s4, 0
	ds_load_b128 v[143:146], v1 offset:8192
	ds_load_b128 v[147:150], v1
	ds_load_b128 v[151:154], v3 offset:8192
	ds_load_b128 v[155:158], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s31, v79
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[159:162], v4 offset:8192
	ds_load_b128 v[163:166], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s4 :: v_dual_add_nc_u32 v12, s31, v82
	v_dual_mov_b32 v10, s11 :: v_dual_add_nc_u32 v123, s31, v80
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[119:122], v1 offset:1024
	ds_load_b128 v[103:106], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v7, s8 :: v_dual_add_nc_u32 v124, s31, v81
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[167:170], v123 offset:1024
	ds_load_b128 v[107:110], v123
	ds_load_b128 v[171:174], v124 offset:1024
	ds_load_b128 v[111:114], v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v4, s5 :: v_dual_mov_b32 v5, s6
	v_mov_b32_e32 v6, s7
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v9, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[175:178], v11 offset:8192
	ds_load_b128 v[179:182], v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[183:186], v12 offset:1024
	ds_load_b128 v[115:118], v12
	ds_load_b128 v[207:210], v12 offset:3072
	ds_load_b128 v[211:214], v12 offset:2048
	ds_load_b128 v[187:190], v1 offset:3072
	ds_load_b128 v[135:138], v1 offset:2048
	ds_load_b128 v[191:194], v123 offset:3072
	ds_load_b128 v[195:198], v123 offset:2048
	ds_load_b128 v[199:202], v124 offset:3072
	ds_load_b128 v[203:206], v124 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[163:166], v[103:106], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[155:158], v[107:110], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[147:150], v[111:114], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[179:182], v[115:118], v[87:94] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v88
	v_cvt_f32_i32_e32 v11, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v91
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v76, v76, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[159:162], v[103:106], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v78, v78, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v92
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v77, v77, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[107:110], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[119:122], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v93
	v_cvt_f32_i32_e32 v12, v94
	v_wmma_i32_16x16x16_iu8 v[95:102], v[143:146], v[111:114], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[155:158], v[167:170], v[103:110] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v74, v74, v1 :: v_dual_add_f32 v73, v73, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v72, v72, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[95:102], v[175:178], v[115:118], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[147:150], v[171:174], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[159:162], v[119:122], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[135:138], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v96
	v_cvt_f32_i32_e32 v1, v97
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v75, v75, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v95
	v_wmma_i32_16x16x16_iu8 v[103:110], v[179:182], v[183:186], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[167:170], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v98
	v_cvt_f32_i32_e32 v12, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v101
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v100
	v_wmma_i32_16x16x16_iu8 v[111:118], v[143:146], v[171:174], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[155:158], v[195:198], v[119:126] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v68, v68, v1
	v_add_f32_e32 v66, v66, v12
	v_add_f32_e32 v65, v65, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v67, v67, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v103
	v_wmma_i32_16x16x16_iu8 v[111:118], v[175:178], v[183:186], v[111:118] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v64, v64, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v102
	v_cvt_f32_i32_e32 v12, v104
	v_cvt_f32_i32_e32 v89, v106
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v62, v62, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v108
	v_wmma_i32_16x16x16_iu8 v[127:134], v[159:162], v[135:138], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[147:150], v[203:206], v[119:126] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v61, v61, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v109
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v63, v63, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v107
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v57, v57, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v59, v59, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v111
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[195:198], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[179:182], v[211:214], v[119:126] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v60, v60, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v58, v58, v1
	v_add_f32_e32 v56, v56, v12
	v_add_f32_e32 v54, v54, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v112
	v_cvt_f32_i32_e32 v12, v114
	v_cvt_f32_i32_e32 v89, v116
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[187:190], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[143:146], v[203:206], v[127:134] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v53, v53, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v49, v49, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v117
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v55, v55, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v115
	v_cvt_f32_i32_e32 v89, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v119
	v_wmma_i32_16x16x16_iu8 v[135:142], v[155:158], v[191:194], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[159:162], v[187:190], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[175:178], v[211:214], v[127:134] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v52, v11
	v_add_f32_e32 v50, v50, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v118
	v_cvt_f32_i32_e32 v88, v120
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v48, v48, v1
	v_add_f32_e32 v46, v46, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v122
	v_cvt_f32_i32_e32 v12, v124
	v_wmma_i32_16x16x16_iu8 v[135:142], v[147:150], v[199:202], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[151:154], v[191:194], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v45, v45, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v125
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v47, v47, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v123
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v41, v41, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v129
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v127
	v_wmma_i32_16x16x16_iu8 v[135:142], v[179:182], v[207:210], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[143:146], v[199:202], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v44, v44, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v126
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v42, v11
	v_add_f32_e32 v40, v40, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v128
	v_cvt_f32_i32_e32 v88, v130
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v132
	v_wmma_i32_16x16x16_iu8 v[3:10], v[175:178], v[207:210], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v133
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v12
	v_add_f32_e32 v34, v34, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v134
	v_cvt_f32_i32_e32 v89, v136
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v11
	v_add_f32_e32 v30, v30, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v138
	v_cvt_f32_i32_e32 v88, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v142
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v29, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v31, v31, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v139
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v27, v27, v11 :: v_dual_add_f32 v20, v20, v5
	v_dual_add_f32 v25, v25, v88 :: v_dual_add_f32 v22, v22, v3
	v_add_f32_e32 v21, v21, v4
	v_add_f32_e32 v19, v19, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v8
	v_cvt_f32_i32_e32 v4, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v5, v10
	v_cvt_f32_i32_e32 v6, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v12
	v_add_f32_e32 v24, v24, v89
	v_dual_add_f32 v18, v18, v1 :: v_dual_add_f32 v17, v17, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v70, v70, v6
	v_dual_add_f32 v16, v16, v4 :: v_dual_add_f32 v15, v15, v5
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v139, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, s0, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s1, v86
	v_add_nc_u32_e32 v3, s1, v84
	v_add_nc_u32_e32 v5, s1, v83
	ds_load_b128 v[135:138], v1 offset:8192
	ds_load_b128 v[139:142], v1
	ds_load_b128 v[143:146], v3 offset:8192
	ds_load_b128 v[147:150], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s0, v79
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v4, s1, v85
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v12, s0, v82
	v_add_nc_u32_e32 v119, s0, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v86, s11
	v_mov_b32_e32 v82, s7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[151:154], v5 offset:8192
	ds_load_b128 v[155:158], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v80, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[111:114], v1 offset:1024
	ds_load_b128 v[95:98], v1
	ds_load_b128 v[159:162], v11 offset:1024
	ds_load_b128 v[103:106], v11
	ds_load_b128 v[163:166], v119 offset:1024
	ds_load_b128 v[107:110], v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v85, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v4 offset:8192
	ds_load_b128 v[171:174], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v84, s9 :: v_dual_mov_b32 v83, s8
	v_mov_b32_e32 v81, s6
	v_mov_b32_e32 v79, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[175:178], v12 offset:1024
	ds_load_b128 v[115:118], v12
	ds_load_b128 v[179:182], v1 offset:3072
	ds_load_b128 v[127:130], v1 offset:2048
	ds_load_b128 v[183:186], v119 offset:3072
	ds_load_b128 v[187:190], v119 offset:2048
	ds_load_b128 v[191:194], v11 offset:3072
	ds_load_b128 v[195:198], v11 offset:2048
	ds_load_b128 v[199:202], v12 offset:3072
	ds_load_b128 v[203:206], v12 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[155:158], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[151:154], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[111:114], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[147:150], v[107:110], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[143:146], v[107:110], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[147:150], v[163:166], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[151:154], v[127:130], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[139:142], v[103:106], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[135:138], v[103:106], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[151:154], v[111:114], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[143:146], v[187:190], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[171:174], v[115:118], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[167:170], v[115:118], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[155:158], v[127:130], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[155:158], v[179:182], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[151:154], v[179:182], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[143:146], v[163:166], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[147:150], v[187:190], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[147:150], v[183:186], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[139:142], v[159:162], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[143:146], v[183:186], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[135:138], v[159:162], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[139:142], v[195:198], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[135:138], v[195:198], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[139:142], v[191:194], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[135:138], v[191:194], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[171:174], v[175:178], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[175:178], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[171:174], v[203:206], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[203:206], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[171:174], v[199:202], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[167:170], v[199:202], v[79:86] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v3
	v_cvt_f32_i32_e32 v3, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v87
	v_cvt_f32_i32_e32 v11, v88
	v_cvt_f32_i32_e32 v12, v89
	v_cvt_f32_i32_e32 v87, v90
	v_cvt_f32_i32_e32 v88, v91
	v_cvt_f32_i32_e32 v89, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v91, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v96, v99
	v_cvt_f32_i32_e32 v97, v100
	v_cvt_f32_i32_e32 v98, v101
	v_cvt_f32_i32_e32 v99, v102
	v_cvt_f32_i32_e32 v100, v103
	v_cvt_f32_i32_e32 v101, v104
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v107, v110
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v109, v112
	v_cvt_f32_i32_e32 v110, v113
	v_cvt_f32_i32_e32 v111, v114
	v_cvt_f32_i32_e32 v112, v115
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v114, v117
	v_cvt_f32_i32_e32 v115, v118
	v_cvt_f32_i32_e32 v116, v119
	v_cvt_f32_i32_e32 v117, v120
	v_cvt_f32_i32_e32 v118, v121
	v_cvt_f32_i32_e32 v119, v122
	v_cvt_f32_i32_e32 v120, v123
	v_cvt_f32_i32_e32 v121, v124
	v_cvt_f32_i32_e32 v122, v125
	v_cvt_f32_i32_e32 v123, v126
	v_cvt_f32_i32_e32 v124, v127
	v_cvt_f32_i32_e32 v125, v128
	v_cvt_f32_i32_e32 v126, v129
	v_cvt_f32_i32_e32 v127, v130
	v_cvt_f32_i32_e32 v128, v131
	v_cvt_f32_i32_e32 v129, v132
	v_cvt_f32_i32_e32 v130, v133
	v_cvt_f32_i32_e32 v131, v134
	v_cvt_f32_i32_e32 v132, v79
	v_cvt_f32_i32_e32 v133, v80
	v_cvt_f32_i32_e32 v134, v81
	v_cvt_f32_i32_e32 v135, v82
	v_cvt_f32_i32_e32 v136, v83
	v_cvt_f32_i32_e32 v137, v84
	v_cvt_f32_i32_e32 v138, v85
	v_cvt_f32_i32_e32 v139, v86
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v79, s22, v13
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v80, s3, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v77, v4 :: v_dual_lshlrev_b32 v79, 1, v79
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s24, s12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v85, v70, v1 :: v_dual_lshlrev_b32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v81, 32, v79
	v_or_b32_e32 v82, 64, v79
	v_or_b32_e32 v83, 0x60, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v78, v3 :: v_dual_and_b32 v84, 0xf0, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x3
	buffer_load_u16 v79, v79, s[24:27], 0 offen
	buffer_load_u16 v81, v81, s[24:27], 0 offen
	buffer_load_u16 v82, v82, s[24:27], 0 offen
	buffer_load_u16 v83, v83, s[24:27], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v86, v67, v87 :: v_dual_add_f32 v87, v66, v88
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v80, v80, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v88, v65, v89 :: v_dual_add_f32 v89, v64, v90
	v_dual_add_f32 v90, v63, v91 :: v_dual_add_f32 v91, v62, v92
	v_dual_add_f32 v92, v61, v93 :: v_dual_add_f32 v93, v60, v94
	v_dual_add_f32 v94, v59, v95 :: v_dual_add_f32 v95, v58, v96
	v_dual_add_f32 v96, v57, v97 :: v_dual_add_f32 v97, v56, v98
	v_dual_add_f32 v98, v55, v99 :: v_dual_add_f32 v99, v54, v100
	v_dual_add_f32 v100, v53, v101 :: v_dual_add_f32 v101, v52, v102
	v_dual_add_f32 v102, v51, v103 :: v_dual_add_f32 v103, v50, v104
	v_dual_add_f32 v104, v49, v105 :: v_dual_add_f32 v105, v48, v106
	v_dual_add_f32 v106, v47, v107 :: v_dual_add_f32 v107, v46, v108
	v_dual_add_f32 v108, v45, v109 :: v_dual_add_f32 v109, v44, v110
	v_dual_add_f32 v110, v43, v111 :: v_dual_add_f32 v111, v42, v112
	v_dual_add_f32 v112, v41, v113 :: v_dual_add_f32 v113, v40, v114
	v_dual_add_f32 v114, v39, v115 :: v_dual_add_f32 v115, v38, v116
	v_dual_add_f32 v116, v37, v117 :: v_dual_add_f32 v117, v36, v118
	v_dual_add_f32 v118, v35, v119 :: v_dual_add_f32 v119, v34, v120
	v_dual_add_f32 v120, v33, v121 :: v_dual_add_f32 v121, v32, v122
	v_dual_add_f32 v122, v31, v123 :: v_dual_add_f32 v123, v30, v124
	v_dual_add_f32 v124, v29, v125 :: v_dual_add_f32 v125, v28, v126
	v_dual_add_f32 v126, v27, v127 :: v_dual_add_f32 v127, v26, v128
	v_dual_add_f32 v128, v25, v129 :: v_dual_add_f32 v129, v24, v130
	v_dual_add_f32 v130, v23, v131 :: v_dual_add_f32 v131, v22, v132
	v_dual_add_f32 v132, v21, v133 :: v_dual_add_f32 v133, v20, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v3, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v3, v84, 2, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v74, v7 :: v_dual_add_f32 v8, v73, v8
	v_dual_add_f32 v9, v72, v9 :: v_dual_add_f32 v10, v71, v10
	v_dual_add_f32 v11, v69, v11 :: v_dual_add_f32 v12, v68, v12
	v_dual_add_f32 v134, v19, v135 :: v_dual_add_f32 v135, v18, v136
	v_dual_add_f32 v136, v17, v137 :: v_dual_add_f32 v137, v16, v138
	v_add_f32_e32 v138, v15, v139
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s23, v13
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v139, 1, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v85, s2
	v_cndmask_b32_e64 v74, v74, v7, s2
	v_cndmask_b32_e64 v73, v73, v8, s2
	v_cndmask_b32_e64 v72, v72, v9, s2
	v_cndmask_b32_e64 v71, v71, v10, s2
	v_cndmask_b32_e64 v69, v69, v11, s2
	v_cndmask_b32_e64 v68, v68, v12, s2
	v_cndmask_b32_e64 v67, v67, v86, s2
	v_cndmask_b32_e64 v66, v66, v87, s2
	v_cndmask_b32_e64 v65, v65, v88, s2
	v_cndmask_b32_e64 v64, v64, v89, s2
	v_cndmask_b32_e64 v63, v63, v90, s2
	v_cndmask_b32_e64 v85, v22, v131, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v19, v134, s2
	v_cndmask_b32_e64 v87, v18, v135, s2
	v_cndmask_b32_e64 v88, v17, v136, s2
	v_cndmask_b32_e64 v89, v16, v137, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s22, s22, s23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v76, v5 :: v_dual_add_f32 v6, v75, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v4, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s22, s3, v139
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v91, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v76, v76, v5, s2
	v_cndmask_b32_e64 v75, v75, v6, s2
	v_cndmask_b32_e64 v61, v61, v92, s2
	v_cndmask_b32_e64 v60, v60, v93, s2
	v_cndmask_b32_e64 v59, v59, v94, s2
	v_cndmask_b32_e64 v58, v58, v95, s2
	v_cndmask_b32_e64 v57, v57, v96, s2
	v_cndmask_b32_e64 v56, v56, v97, s2
	v_cndmask_b32_e64 v55, v55, v98, s2
	v_cndmask_b32_e64 v54, v54, v99, s2
	v_cndmask_b32_e64 v53, v53, v100, s2
	v_cndmask_b32_e64 v52, v52, v101, s2
	v_cndmask_b32_e64 v51, v51, v102, s2
	v_cndmask_b32_e64 v50, v50, v103, s2
	v_cndmask_b32_e64 v49, v49, v104, s2
	v_cndmask_b32_e64 v48, v48, v105, s2
	v_cndmask_b32_e64 v47, v47, v106, s2
	v_cndmask_b32_e64 v46, v46, v107, s2
	v_cndmask_b32_e64 v45, v45, v108, s2
	v_cndmask_b32_e64 v44, v44, v109, s2
	v_cndmask_b32_e64 v43, v43, v110, s2
	v_cndmask_b32_e64 v42, v42, v111, s2
	v_cndmask_b32_e64 v41, v41, v112, s2
	v_cndmask_b32_e64 v40, v40, v113, s2
	v_cndmask_b32_e64 v39, v39, v114, s2
	v_cndmask_b32_e64 v38, v38, v115, s2
	v_cndmask_b32_e64 v37, v37, v116, s2
	v_cndmask_b32_e64 v36, v36, v117, s2
	v_cndmask_b32_e64 v35, v35, v118, s2
	v_cndmask_b32_e64 v34, v34, v119, s2
	v_cndmask_b32_e64 v33, v33, v120, s2
	v_cndmask_b32_e64 v32, v32, v121, s2
	v_cndmask_b32_e64 v31, v31, v122, s2
	v_cndmask_b32_e64 v30, v30, v123, s2
	v_cndmask_b32_e64 v29, v29, v124, s2
	v_cndmask_b32_e64 v28, v28, v125, s2
	v_cndmask_b32_e64 v27, v27, v126, s2
	v_cndmask_b32_e64 v26, v26, v127, s2
	v_cndmask_b32_e64 v25, v25, v128, s2
	v_cndmask_b32_e64 v24, v24, v129, s2
	v_cndmask_b32_e64 v23, v23, v130, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v6, s23, 4, v1
	v_lshl_add_u32 v5, s23, 5, v1
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s26
	v_and_b32_e32 v0, 16, v0
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v14, 28, v14
	v_and_b32_e32 v2, 32, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v3, v2, v14
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v21, v132, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v21, v84, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v20, v133, s2
	v_cndmask_b32_e64 v90, v15, v138, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v21
	ds_load_b128 v[11:14], v21 offset:16
	ds_load_b128 v[15:18], v21 offset:512
	ds_load_b128 v[19:22], v21 offset:528
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[2:3], null, s23, 48, v[1:2]
	v_add_lshl_u32 v1, v4, v1, 1
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s23, s27
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v106, v7, v81 :: v_dual_add_nc_u32 v3, 0x80, v4
	v_mul_f32_e32 v92, v8, v79
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v95, v11, v79 :: v_dual_lshlrev_b32 v82, 16, v82
	v_mul_f32_e32 v91, v7, v79
	v_mul_f32_e32 v93, v9, v79
	v_mul_f32_e32 v94, v10, v79
	v_dual_mul_f32 v108, v9, v81 :: v_dual_lshlrev_b32 v83, 16, v83
	v_dual_mul_f32 v96, v12, v79 :: v_dual_mul_f32 v109, v10, v81
	v_dual_mul_f32 v97, v13, v79 :: v_dual_mul_f32 v110, v11, v81
	v_dual_mul_f32 v98, v14, v79 :: v_dual_mul_f32 v107, v8, v81
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v99, v15, v79 :: v_dual_mul_f32 v112, v13, v81
	v_dual_mul_f32 v100, v16, v79 :: v_dual_mul_f32 v113, v14, v81
	v_dual_mul_f32 v101, v17, v79 :: v_dual_mul_f32 v114, v15, v81
	v_dual_mul_f32 v102, v18, v79 :: v_dual_mul_f32 v111, v12, v81
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v103, v19, v79 :: v_dual_mul_f32 v116, v17, v81
	v_dual_mul_f32 v104, v20, v79 :: v_dual_mul_f32 v117, v18, v81
	v_dual_mul_f32 v105, v21, v79 :: v_dual_mul_f32 v118, v19, v81
	v_dual_mul_f32 v79, v22, v79 :: v_dual_mul_f32 v120, v21, v81
	v_dual_mul_f32 v115, v16, v81 :: v_dual_mul_f32 v124, v10, v82
	v_dual_mul_f32 v119, v20, v81 :: v_dual_mul_f32 v128, v14, v82
	v_dual_mul_f32 v81, v22, v81 :: v_dual_mul_f32 v122, v8, v82
	v_dual_mul_f32 v121, v7, v82 :: v_dual_mul_f32 v8, v8, v83
	v_dual_mul_f32 v123, v9, v82 :: v_dual_mul_f32 v10, v10, v83
	v_mul_f32_e32 v125, v11, v82
	v_dual_mul_f32 v126, v12, v82 :: v_dual_mul_f32 v7, v7, v83
	v_dual_mul_f32 v127, v13, v82 :: v_dual_mul_f32 v14, v14, v83
	v_mul_f32_e32 v129, v15, v82
	v_dual_mul_f32 v130, v16, v82 :: v_dual_mul_f32 v9, v9, v83
	v_mul_f32_e32 v131, v17, v82
	v_dual_mul_f32 v132, v18, v82 :: v_dual_mul_f32 v11, v11, v83
	v_mul_f32_e32 v133, v19, v82
	v_dual_mul_f32 v134, v20, v82 :: v_dual_mul_f32 v13, v13, v83
	v_mul_f32_e32 v135, v21, v82
	v_dual_mul_f32 v82, v22, v82 :: v_dual_mul_f32 v15, v15, v83
	v_mul_f32_e32 v12, v12, v83
	v_dual_mul_f32 v17, v17, v83 :: v_dual_mul_f32 v78, v78, v92
	v_mul_f32_e32 v18, v18, v83
	v_dual_mul_f32 v19, v19, v83 :: v_dual_mul_f32 v76, v76, v94
	v_dual_mul_f32 v21, v21, v83 :: v_dual_mul_f32 v74, v74, v96
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v70, v70, v91 :: v_dual_mul_f32 v77, v77, v93
	v_dual_mul_f32 v75, v75, v95 :: v_dual_mul_f32 v72, v72, v98
	v_dual_mul_f32 v71, v71, v99 :: v_dual_mul_f32 v68, v68, v101
	v_dual_mul_f32 v69, v69, v100 :: v_dual_mul_f32 v64, v64, v105
	v_dual_mul_f32 v67, v67, v102 :: v_dual_mul_f32 v60, v60, v108
	v_dual_mul_f32 v63, v63, v79 :: v_dual_mul_f32 v58, v58, v110
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v20, v83
	v_dual_mul_f32 v22, v22, v83 :: v_dual_mul_f32 v47, v47, v81
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v40, v40, v127 :: v_dual_mul_f32 v35, v35, v132
	v_mul_f32_e32 v18, v86, v18
	v_dual_mul_f32 v31, v31, v82 :: v_dual_mul_f32 v8, v29, v8
	v_dual_mul_f32 v7, v30, v7 :: v_dual_mul_f32 v10, v27, v10
	v_dual_mul_f32 v9, v28, v9 :: v_dual_mul_f32 v12, v25, v12
	v_dual_mul_f32 v11, v26, v11 :: v_dual_mul_f32 v14, v23, v14
	v_dual_mul_f32 v13, v24, v13 :: v_dual_mul_f32 v22, v90, v22
	v_dual_mul_f32 v15, v85, v15 :: v_dual_mul_f32 v20, v88, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_bfe_u32 v23, v70, 16, 1
	v_bfe_u32 v24, v78, 16, 1
	v_bfe_u32 v25, v77, 16, 1
	v_bfe_u32 v26, v76, 16, 1
	v_bfe_u32 v28, v74, 16, 1
	v_bfe_u32 v30, v72, 16, 1
	v_bfe_u32 v81, v68, 16, 1
	v_bfe_u32 v82, v67, 16, 1
	v_bfe_u32 v85, v64, 16, 1
	v_bfe_u32 v86, v63, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v73, v73, v97 :: v_dual_mul_f32 v66, v66, v103
	v_dual_mul_f32 v59, v59, v109 :: v_dual_mul_f32 v54, v54, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cmp_o_f32_e64 s0, v78, v78
	v_cmp_o_f32_e64 s1, v77, v77
	v_cmp_o_f32_e64 s2, v76, v76
	v_cmp_o_f32_e64 s4, v74, v74
	v_cmp_o_f32_e64 s6, v72, v72
	v_cmp_o_f32_e64 s9, v68, v68
	v_cmp_o_f32_e64 s10, v67, v67
	v_cmp_o_f32_e64 s13, v64, v64
	v_cmp_o_f32_e64 s14, v63, v63
	v_add3_u32 v23, v70, v23, 0x7fff
	v_add3_u32 v24, v78, v24, 0x7fff
	v_add3_u32 v25, v77, v25, 0x7fff
	v_add3_u32 v26, v76, v26, 0x7fff
	v_add3_u32 v28, v74, v28, 0x7fff
	v_add3_u32 v30, v72, v30, 0x7fff
	v_add3_u32 v68, v68, v81, 0x7fff
	v_add3_u32 v67, v67, v82, 0x7fff
	v_add3_u32 v64, v64, v85, 0x7fff
	v_add3_u32 v63, v63, v86, 0x7fff
	v_bfe_u32 v29, v73, 16, 1
	v_bfe_u32 v90, v59, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s2
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s4
	v_cndmask_b16 v26.h, 0x7fff, v30.h, s6
	v_cndmask_b16 v28.l, 0x7fff, v68.h, s9
	v_cndmask_b16 v28.h, 0x7fff, v67.h, s10
	v_cndmask_b16 v30.l, 0x7fff, v64.h, s13
	v_cndmask_b16 v30.h, 0x7fff, v63.h, s14
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v21, v89, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v89, v60, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v65, v65, v104 :: v_dual_mul_f32 v62, v62, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v73, v73
	v_add3_u32 v29, v73, v29, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v61, v61, v107 :: v_dual_mul_f32 v56, v56, v112
	v_dual_mul_f32 v57, v57, v111 :: v_dual_mul_f32 v52, v52, v116
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v79, v71, 16, 1
	v_cmp_o_f32_e64 s17, v60, v60
	v_cmp_o_f32_e64 s18, v59, v59
	v_bfe_u32 v91, v58, 16, 1
	v_add3_u32 v60, v60, v89, 0x7fff
	v_add3_u32 v59, v59, v90, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v55, v55, v113 :: v_dual_mul_f32 v50, v50, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s5
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v19, v87, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v87, v62, 16, 1
	v_cmp_o_f32_e64 s7, v71, v71
	v_add3_u32 v70, v71, v79, 0x7fff
	v_add3_u32 v71, v58, v91, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s17
	v_bfe_u32 v60, v57, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v59.h, s18
	v_bfe_u32 v59, v56, 16, 1
	v_cmp_o_f32_e64 s15, v62, v62
	v_add3_u32 v62, v62, v87, 0x7fff
	v_bfe_u32 v63, v55, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v53, v53, v115 :: v_dual_mul_f32 v48, v48, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.l, 0x7fff, v71.h, vcc_lo
	v_add3_u32 v60, v57, v60, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_add3_u32 v57, v56, v59, 0x7fff
	v_cmp_o_f32_e64 s0, v56, v56
	v_bfe_u32 v88, v61, 16, 1
	v_add3_u32 v56, v55, v63, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_bfe_u32 v55, v54, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s0
	v_bfe_u32 v57, v53, 16, 1
	v_cmp_o_f32_e64 s16, v61, v61
	v_add3_u32 v61, v61, v88, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v51, v51, v117 :: v_dual_mul_f32 v44, v44, v123
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s15
	v_cndmask_b16 v62.h, 0x7fff, v60.h, vcc_lo
	v_bfe_u32 v59, v52, 16, 1
	v_add3_u32 v55, v54, v55, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v54, v53, v57, 0x7fff
	v_cmp_o_f32_e64 s0, v53, v53
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v49, v49, v119 :: v_dual_mul_f32 v46, v46, v121
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s1
	v_add3_u32 v53, v52, v59, 0x7fff
	v_cmp_o_f32_e64 s1, v52, v52
	v_cndmask_b16 v52.l, 0x7fff, v55.h, vcc_lo
	v_bfe_u32 v55, v51, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s0
	v_bfe_u32 v54, v50, 16, 1
	v_bfe_u32 v57, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_add3_u32 v55, v51, v55, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_add3_u32 v51, v50, v54, 0x7fff
	v_add3_u32 v50, v49, v57, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s1
	v_cmp_o_f32_e64 s1, v49, v49
	v_bfe_u32 v49, v48, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s0
	v_bfe_u32 v51, v47, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v45, v45, v122 :: v_dual_mul_f32 v42, v42, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v53.h, 0x7fff, v55.h, vcc_lo
	v_bfe_u32 v54, v46, 16, 1
	v_add3_u32 v49, v48, v49, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_add3_u32 v48, v47, v51, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v16, v16, v83 :: v_dual_mul_f32 v43, v43, v124
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v38, v38, v129
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s1
	v_add3_u32 v47, v46, v54, 0x7fff
	v_cmp_o_f32_e64 s1, v46, v46
	v_cndmask_b16 v46.l, 0x7fff, v49.h, vcc_lo
	v_bfe_u32 v49, v45, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s0
	v_bfe_u32 v48, v44, 16, 1
	v_bfe_u32 v51, v43, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v41, v41, v126 :: v_dual_mul_f32 v36, v36, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v49, v45, v49, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v45, v44, v48, 0x7fff
	v_cmp_o_f32_e64 s0, v44, v44
	v_add3_u32 v44, v43, v51, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s1
	v_cmp_o_f32_e64 s1, v43, v43
	v_bfe_u32 v43, v42, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s0
	v_bfe_u32 v45, v41, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v39, v39, v128 :: v_dual_mul_f32 v34, v34, v133
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v47.h, 0x7fff, v49.h, vcc_lo
	v_bfe_u32 v48, v40, 16, 1
	v_add3_u32 v43, v42, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v42, v41, v45, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v37, v37, v130 :: v_dual_mul_f32 v32, v32, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s1
	v_add3_u32 v41, v40, v48, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_cndmask_b16 v40.l, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v39, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s0
	v_bfe_u32 v42, v38, 16, 1
	v_bfe_u32 v45, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v43, v39, v43, 0x7fff
	v_cmp_o_f32_e64 s0, v38, v38
	v_add3_u32 v39, v38, v42, 0x7fff
	v_add3_u32 v38, v37, v45, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s1
	v_cmp_o_f32_e64 s1, v37, v37
	v_bfe_u32 v37, v36, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s0
	v_bfe_u32 v39, v35, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v33, v33, v134 :: v_dual_mul_f32 v16, v80, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v42, v34, 16, 1
	v_add3_u32 v37, v36, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_add3_u32 v36, v35, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s1
	v_add3_u32 v35, v34, v42, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_cndmask_b16 v34.l, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v37, v33, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v32, 16, 1
	v_bfe_u32 v39, v31, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v37, v33, v37, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_add3_u32 v33, v32, v36, 0x7fff
	v_add3_u32 v32, v31, v39, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	v_cmp_o_f32_e64 s1, v31, v31
	v_bfe_u32 v31, v7, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s0
	v_bfe_u32 v33, v8, 16, 1
	v_bfe_u32 v36, v9, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s1
	v_add3_u32 v31, v7, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v7, v8, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v8, v9, v36, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_bfe_u32 v9, v10, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v31.h, vcc_lo
	v_bfe_u32 v31, v11, 16, 1
	v_bfe_u32 v33, v12, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v10, v11, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v11, v11
	v_add3_u32 v11, v12, v33, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_cndmask_b16 v8.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v13, 16, 1
	v_bfe_u32 v12, v14, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v17, v84, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
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
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_add3_u32 v12, v17, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v17, v17
	v_add3_u32 v14, v18, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_bfe_u32 v15, v19, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v20, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s1
	v_add3_u32 v14, v19, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v13, v20, v13, 0x7fff
	v_bfe_u32 v27, v75, 16, 1
	v_cmp_o_f32_e64 s3, v75, v75
	v_bfe_u32 v80, v69, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_bfe_u32 v83, v66, 16, 1
	v_bfe_u32 v84, v65, 16, 1
	v_add3_u32 v27, v75, v27, 0x7fff
	v_bfe_u32 v16, v22, 16, 1
	v_cmp_o_f32_e64 s0, v20, v20
	v_cndmask_b32_e32 v20, v30, v28, vcc_lo
	v_bfe_u32 v15, v21, 16, 1
	v_cmp_o_f32_e64 s8, v69, v69
	v_cmp_o_f32_e64 s11, v66, v66
	v_cmp_o_f32_e64 s12, v65, v65
	v_add3_u32 v69, v69, v80, 0x7fff
	v_add3_u32 v66, v66, v83, 0x7fff
	v_add3_u32 v65, v65, v84, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v27.h, s3
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v21, v21
	v_add3_u32 v16, v22, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v22, v22
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_cndmask_b16 v27.l, 0x7fff, v70.h, s7
	v_cndmask_b16 v27.h, 0x7fff, v69.h, s8
	v_cndmask_b16 v29.l, 0x7fff, v66.h, s11
	v_cndmask_b16 v29.h, 0x7fff, v65.h, s12
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s16
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v16.h, s2
	v_dual_cndmask_b32 v14, v25, v23 :: v_dual_cndmask_b32 v15, v23, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v21, v28, v30 :: v_dual_cndmask_b32 v22, v62, v61
	v_dual_cndmask_b32 v25, v58, v56 :: v_dual_cndmask_b32 v30, v40, v47
	v_cndmask_b32_e32 v31, v47, v40, vcc_lo
	v_cndmask_b32_e32 v33, v41, v44, vcc_lo
	v_cndmask_b32_e32 v37, v35, v38, vcc_lo
	v_dual_cndmask_b32 v35, v38, v35 :: v_dual_cndmask_b32 v38, v32, v34
	v_cndmask_b32_e32 v32, v34, v32, vcc_lo
	v_dual_cndmask_b32 v34, v10, v7 :: v_dual_cndmask_b32 v7, v7, v10
	v_cndmask_b32_e32 v40, v13, v11, vcc_lo
	v_dual_cndmask_b32 v39, v9, v8 :: v_dual_mov_b32 v10, 0x5410
	v_cndmask_b32_e32 v8, v8, v9, vcc_lo
	v_cndmask_b32_e32 v9, v11, v13, vcc_lo
	v_mov_b32_e32 v11, 0x7632
	v_dual_cndmask_b32 v17, v24, v26 :: v_dual_cndmask_b32 v18, v29, v27
	v_cndmask_b32_e32 v19, v27, v29, vcc_lo
	v_dual_cndmask_b32 v29, v53, v46 :: v_dual_cndmask_b32 v36, v44, v41
	v_dual_cndmask_b32 v41, v0, v12 :: v_dual_cndmask_b32 v10, 0x1054, v10
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_cndmask_b32_e32 v23, v61, v62, vcc_lo
	v_dual_cndmask_b32 v27, v52, v50 :: v_dual_cndmask_b32 v28, v46, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v11, v11, 8, v11
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v0, v12, v0, vcc_lo
	v_cndmask_b32_e32 v16, v26, v24, vcc_lo
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v11, 0x760076, v11
	v_permlanex16_b32 v12, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v24, v56, v58, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	v_permlanex16_b32 v15, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v26, v50, v52, vcc_lo
	v_and_b32_e32 v42, 0x5040504, v10
	v_and_b32_e32 v43, 0x7060706, v11
	v_permlanex16_b32 v19, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v12, v14, v42
	v_perm_b32 v8, v12, v14, v43
	v_perm_b32 v9, v13, v16, v42
	v_perm_b32 v10, v13, v16, v43
	v_perm_b32 v11, v15, v18, v42
	v_perm_b32 v12, v15, v18, v43
	v_perm_b32 v13, v17, v20, v42
	v_perm_b32 v14, v17, v20, v43
	v_perm_b32 v15, v19, v22, v42
	v_perm_b32 v16, v19, v22, v43
	v_perm_b32 v17, v21, v24, v42
	v_perm_b32 v18, v21, v24, v43
	v_perm_b32 v19, v23, v26, v42
	v_perm_b32 v20, v23, v26, v43
	v_perm_b32 v21, v25, v28, v42
	v_perm_b32 v22, v25, v28, v43
	v_perm_b32 v23, v27, v30, v42
	v_perm_b32 v24, v27, v30, v43
	v_perm_b32 v25, v29, v33, v42
	v_perm_b32 v26, v29, v33, v43
	v_perm_b32 v27, v31, v37, v42
	v_perm_b32 v28, v31, v37, v43
	v_perm_b32 v29, v32, v38, v42
	v_perm_b32 v30, v32, v38, v43
	v_perm_b32 v31, v35, v34, v42
	v_perm_b32 v32, v35, v34, v43
	v_perm_b32 v33, v36, v39, v42
	v_perm_b32 v34, v36, v39, v43
	v_add_lshl_u32 v39, v4, v6, 1
	v_perm_b32 v37, v0, v41, v42
	v_perm_b32 v38, v0, v41, v43
	v_add_lshl_u32 v0, v3, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v1, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v1, s[20:23], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v1, v4, v5, 1
	v_add_lshl_u32 v5, v3, v5, 1
	v_add_lshl_u32 v4, v4, v2, 1
	v_perm_b32 v35, v44, v40, v42
	v_perm_b32 v36, v44, v40, v43
	v_add_lshl_u32 v2, v3, v2, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v1, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v2, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 215
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10348
; TotalNumSgprs: 34
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     215
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
