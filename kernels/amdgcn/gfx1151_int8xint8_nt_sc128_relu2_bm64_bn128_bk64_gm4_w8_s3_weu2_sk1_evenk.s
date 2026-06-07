	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v10, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 48, v10
	v_xor_b32_e32 v69, v6, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v48, 0, v69
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s17, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s17
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s15, s16
	s_xor_b32 s14, s2, s16
	s_cvt_f32_u32 s4, s15
	s_sub_i32 s19, 0, s15
	s_ashr_i32 s14, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s4, 0x4f7ffffe
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[3:4], null, s13, v2, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s12, s18, s19
	s_abs_i32 s19, s2
	s_add_i32 s18, s18, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s19, s18
	s_mul_i32 s18, s12, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s18, s19, s18
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s18, s15
	s_cmp_ge_u32 s18, s15
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_cselect_b32 s6, s19, s12
	s_cselect_b32 s7, s20, s18
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s7, s15
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s12, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s6, s14
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s12, s15, s14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s12, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s12, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s13, 0x7f
.Ltmp15:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s2, s17, 31
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[4:5], null, s34, s13, v[3:4]
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s2, 25
.Ltmp19:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s17, s2
.Ltmp21:
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s2, s33, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s2, s22
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_lshl_b32 s12, s13, 6
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s22, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, s2, v3
	v_add3_u32 v3, s2, s12, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s28, s22, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s28, v4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v8, 0x80000000, v7, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, 64, v7
	v_add_nc_u32_e32 v9, 64, v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_b128 v[24:27], v5, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v5, 0x80000000, v7, s2
	v_cndmask_b32_e64 v7, 0x80000000, v9, s2
	s_clause 0x1
	buffer_load_b128 v[28:31], v8, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v3, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[36:39], v4, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[40:43], v5, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v7, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v4, 0x60, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 15, v0
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshrrev_b32_e32 v11, 1, v4
	v_lshlrev_b32_e32 v4, 5, v4
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v9, v7, 16, v3
	v_lshlrev_b32_e32 v3, 6, v3
	s_mov_b32 s12, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v8, 1, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0xbf
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v10, 32, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v48, v[24:27] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v48, v[28:31]
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[32:35] offset:4096
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v12, 2, v7
	v_or_b32_e32 v13, 4, v7
	v_or_b32_e32 v14, 6, v7
	v_or_b32_e32 v15, 8, v7
	v_or_b32_e32 v16, 10, v7
	v_or_b32_e32 v17, 12, v7
	v_or_b32_e32 v18, 14, v7
	v_or_b32_e32 v19, 64, v7
	v_or_b32_e32 v20, 0x42, v7
	v_or_b32_e32 v21, 0x44, v7
	v_or_b32_e32 v22, 0x46, v7
	v_or_b32_e32 v23, 0x48, v7
	v_or_b32_e32 v6, 0x4a, v7
	v_or_b32_e32 v8, 0x4c, v7
	v_or_b32_e32 v11, 0x4e, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v48, v[36:39] offset:20480
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[40:43] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[44:47] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v24, 48, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v61, 0x430, v5, v3
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v65, v4, v24, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v62, 16, v61
	v_xor_b32_e32 v64, 32, v61
	v_xor_b32_e32 v63, 48, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v66, 16, v65
	v_xor_b32_e32 v67, 32, v65
	v_xor_b32_e32 v68, 48, v65
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
.LBB0_3:                                ; %Flow45
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v25, s34, v9
	v_or_b32_e32 v26, s34, v10
	s_ashr_i32 s40, s17, 7
	v_or_b32_e32 v58, s33, v7
	v_or_b32_e32 v57, s33, v12
	v_mul_lo_u32 v59, v25, s40
	v_mul_lo_u32 v60, v26, s40
	v_or_b32_e32 v55, s33, v13
	v_or_b32_e32 v47, s33, v14
	v_or_b32_e32 v44, s33, v15
	v_or_b32_e32 v41, s33, v16
	v_or_b32_e32 v38, s33, v17
	v_or_b32_e32 v35, s33, v18
	v_or_b32_e32 v34, s33, v19
	v_or_b32_e32 v33, s33, v20
	v_or_b32_e32 v32, s33, v21
	v_or_b32_e32 v24, s33, v22
	v_or_b32_e32 v20, s33, v23
	v_or_b32_e32 v26, s33, v6
	v_or_b32_e32 v22, s33, v8
	v_or_b32_e32 v18, s33, v11
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v6, 48, v5
	v_and_or_b32 v61, 0x430, v5, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v5, s15, 7, v2
	s_lshl_b32 s11, s14, 7
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v65, v4, v6, v3
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s10, s16, 6
	s_mov_b32 s14, s12
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v3, s11, v5
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_or_b32_e32 v4, 64, v3
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v2, s34, v2
	v_mul_lo_u32 v3, s13, v3
	v_xor_b32_e32 v62, 16, v61
	v_mul_lo_u32 v4, s13, v4
	v_xor_b32_e32 v64, 32, v61
	v_mul_lo_u32 v2, s13, v2
	s_mov_b32 s13, s12
	v_xor_b32_e32 v63, 48, v61
	v_xor_b32_e32 v66, 16, v65
	v_add3_u32 v71, v3, v1, 0x80
	v_xor_b32_e32 v67, 32, v65
	v_add3_u32 v70, v4, v1, 0x80
	v_xor_b32_e32 v68, 48, v65
	v_add3_u32 v72, v2, v1, 0x80
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v53, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s11, s10, -2
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s41, 0, 0x5000
	s_add_i32 s42, 0, 0x2000
	s_mov_b32 s23, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s22, 31
	s_mov_b32 s13, s22
	s_lshr_b32 s14, s14, 25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v73, s13, v72
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s14, s22, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s14, s14, 7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[105:108], v73, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v73, v59, s14, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v74, v60, s14, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v75, v58, s15, 1
	v_add_lshl_u32 v76, v57, s15, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v77, v55, s15, 1
	v_add_lshl_u32 v78, v47, s15, 1
	v_add_lshl_u32 v79, v44, s15, 1
	v_add_lshl_u32 v80, v41, s15, 1
	v_add_lshl_u32 v81, v38, s15, 1
	v_add_lshl_u32 v82, v35, s15, 1
	v_add_lshl_u32 v83, v34, s15, 1
	v_add_lshl_u32 v84, v33, s15, 1
	v_add_lshl_u32 v85, v32, s15, 1
	v_add_lshl_u32 v86, v24, s15, 1
	v_add_lshl_u32 v87, v20, s15, 1
	v_add_lshl_u32 v88, v26, s15, 1
	v_add_lshl_u32 v89, v22, s15, 1
	v_add_lshl_u32 v90, v18, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v78, 0x80000000, v78
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v79, 0x80000000, v79 :: v_dual_cndmask_b32 v80, 0x80000000, v80
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	v_dual_cndmask_b32 v83, 0x80000000, v83 :: v_dual_cndmask_b32 v84, 0x80000000, v84
	v_dual_cndmask_b32 v85, 0x80000000, v85 :: v_dual_cndmask_b32 v86, 0x80000000, v86
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v88, 0x80000000, v88
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v173, v73, s[28:31], 0 offen
	buffer_load_u16 v174, v74, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v175, v75, s[36:39], 0 offen
	buffer_load_u16 v176, v76, s[36:39], 0 offen
	buffer_load_u16 v177, v77, s[36:39], 0 offen
	buffer_load_u16 v178, v78, s[36:39], 0 offen
	buffer_load_u16 v179, v79, s[36:39], 0 offen
	buffer_load_u16 v180, v80, s[36:39], 0 offen
	buffer_load_u16 v181, v81, s[36:39], 0 offen
	buffer_load_u16 v182, v82, s[36:39], 0 offen
	buffer_load_u16 v183, v83, s[36:39], 0 offen
	buffer_load_u16 v184, v84, s[36:39], 0 offen
	buffer_load_u16 v185, v85, s[36:39], 0 offen
	buffer_load_u16 v186, v86, s[36:39], 0 offen
	buffer_load_u16 v187, v87, s[36:39], 0 offen
	buffer_load_u16 v188, v88, s[36:39], 0 offen
	buffer_load_u16 v189, v89, s[36:39], 0 offen
	buffer_load_u16 v190, v90, s[36:39], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v73, s13, v71
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v74, s13, v70
	s_clause 0x1
	buffer_load_b128 v[109:112], v73, s[24:27], 0 offen
	buffer_load_b128 v[113:116], v74, s[24:27], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s15, s12
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v73, s14, v61
	v_add_nc_u32_e32 v74, s14, v62
	v_add_nc_u32_e32 v75, s14, v64
	v_add_nc_u32_e32 v76, s14, v63
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v77, s15, v65
	v_add_nc_u32_e32 v78, s15, v66
	v_add_nc_u32_e32 v79, s15, v67
	v_add_nc_u32_e32 v80, s15, v68
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[89:92], v73
	ds_load_b128 v[117:120], v73 offset:2048
	ds_load_b128 v[121:124], v74
	ds_load_b128 v[125:128], v74 offset:2048
	ds_load_b128 v[129:132], v75
	ds_load_b128 v[133:136], v75 offset:2048
	ds_load_b128 v[137:140], v76
	ds_load_b128 v[141:144], v76 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[97:100], v77
	ds_load_b128 v[145:148], v77 offset:4096
	ds_load_b128 v[149:152], v78
	ds_load_b128 v[153:156], v78 offset:4096
	ds_load_b128 v[157:160], v79
	ds_load_b128 v[161:164], v79 offset:4096
	ds_load_b128 v[165:168], v80
	ds_load_b128 v[169:172], v80 offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s23, 1
	s_mov_b32 s12, s42
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s10, s41
	s_cselect_b32 s23, s14, 0
	s_add_i32 s11, s11, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s14, s23, 12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s22, s22, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s15, s14, 0
	s_waitcnt lgkmcnt(0)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s42, s15, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s41, s15, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[97:100], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[145:148], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[117:120], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[149:152], v[121:124], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[145:148], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[153:156], v[121:124], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[149:152], v[125:128], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[157:160], v[129:132], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[153:156], v[125:128], v[97:104] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s11, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[81:88], v[161:164], v[129:132], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[157:160], v[133:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[165:168], v[137:140], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[161:164], v[133:136], v[97:104] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[81:88], v[169:172], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[165:168], v[141:144], v[89:96] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v74, v74
	v_wmma_i32_16x16x16_iu8 v[97:104], v[169:172], v[141:144], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v132, 16, v188
	v_lshlrev_b32_e32 v129, 16, v185
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v118, 16, v174
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v133, 16, v189
	v_lshlrev_b32_e32 v120, 16, v176
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v117, 16, v173
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v134, 16, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v136, v117, v120
	v_mul_f32_e32 v120, v118, v120
	v_dual_mul_f32 v145, v117, v129 :: v_dual_lshlrev_b32 v124, 16, v180
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v121, 16, v177
	v_lshlrev_b32_e32 v122, 16, v178
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v140, v117, v124 :: v_dual_lshlrev_b32 v119, 16, v175
	v_mul_f32_e32 v124, v118, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v137, v117, v121 :: v_dual_lshlrev_b32 v126, 16, v182
	v_mul_f32_e32 v121, v118, v121
	v_dual_mul_f32 v138, v117, v122 :: v_dual_lshlrev_b32 v123, 16, v179
	v_mul_f32_e32 v142, v117, v126
	v_mul_f32_e32 v126, v118, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v139, v117, v123 :: v_dual_lshlrev_b32 v128, 16, v184
	v_mul_f32_e32 v123, v118, v123
	v_dual_mul_f32 v122, v118, v122 :: v_dual_lshlrev_b32 v125, 16, v181
	v_mul_f32_e32 v144, v117, v128
	v_mul_f32_e32 v128, v118, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v141, v117, v125 :: v_dual_lshlrev_b32 v130, 16, v186
	v_mul_f32_e32 v125, v118, v125
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v127, 16, v183
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v135, v117, v119
	v_mul_f32_e32 v146, v117, v130
	v_mul_f32_e32 v130, v118, v130
	v_mul_f32_e32 v119, v118, v119
	v_mul_f32_e32 v143, v117, v127
	v_mul_f32_e32 v127, v118, v127
	v_dual_mul_f32 v148, v117, v132 :: v_dual_add_nc_u32 v191, s15, v69
	v_mul_f32_e32 v132, v118, v132
	v_mul_f32_e32 v129, v118, v129
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v131, 16, v187
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v192, s42, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v12, v136, v74 :: v_dual_mul_f32 v149, v117, v133
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v133, v118, v133
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v147, v117, v131
	v_mul_f32_e32 v117, v117, v134
	v_dual_mul_f32 v131, v118, v131 :: v_dual_fmac_f32 v16, v140, v78
	v_dual_mul_f32 v118, v118, v134 :: v_dual_fmac_f32 v11, v135, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v14, v138, v76 :: v_dual_fmac_f32 v13, v137, v75
	v_fmac_f32_e32 v28, v147, v85
	v_dual_fmac_f32 v15, v139, v77 :: v_dual_fmac_f32 v40, v122, v92
	v_dual_fmac_f32 v17, v141, v79 :: v_dual_fmac_f32 v36, v119, v89
	v_dual_fmac_f32 v19, v142, v80 :: v_dual_fmac_f32 v42, v123, v93
	v_dual_fmac_f32 v21, v143, v81 :: v_dual_fmac_f32 v46, v126, v96
	v_dual_fmac_f32 v23, v144, v82 :: v_dual_fmac_f32 v52, v130, v100
	v_dual_fmac_f32 v25, v145, v83 :: v_dual_fmac_f32 v50, v128, v98
	v_dual_fmac_f32 v27, v146, v84 :: v_dual_fmac_f32 v54, v132, v102
	v_dual_fmac_f32 v30, v149, v87 :: v_dual_fmac_f32 v29, v148, v86
	v_fmac_f32_e32 v56, v133, v103
	v_fmac_f32_e32 v31, v117, v88
	v_dual_fmac_f32 v37, v120, v90 :: v_dual_fmac_f32 v48, v118, v104
	v_fmac_f32_e32 v39, v121, v91
	v_fmac_f32_e32 v43, v124, v94
	v_fmac_f32_e32 v45, v125, v95
	v_fmac_f32_e32 v49, v127, v97
	v_fmac_f32_e32 v51, v129, v99
	v_fmac_f32_e32 v53, v131, v101
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v191, v[105:108] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v192, v[109:112]
	s_waitcnt vmcnt(0)
	ds_store_b128 v192, v[113:116] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s28, s13, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v11, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s41, 0, 0x5000
	s_add_i32 s42, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v93, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, s12, v67
	v_add_nc_u32_e32 v7, s12, v66
	v_add_nc_u32_e32 v8, s12, v68
	v_add_nc_u32_e32 v69, s12, v65
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s19, s12
	s_mov_b32 s18, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_dual_mov_b32 v93, s19 :: v_dual_mov_b32 v92, s18
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[80:83], v6
	ds_load_b128 v[110:113], v7 offset:4096
	ds_load_b128 v[114:117], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v89, s15 :: v_dual_add_nc_u32 v6, s10, v61
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v6 offset:2048
	ds_load_b128 v[102:105], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v90, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[118:121], v69 offset:4096
	ds_load_b128 v[122:125], v69
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v86, s12 :: v_dual_add_nc_u32 v69, s10, v62
	v_dual_mov_b32 v88, s14 :: v_dual_add_nc_u32 v7, s10, v64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[138:141], v69 offset:2048
	ds_load_b128 v[142:145], v69
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v87, s13 :: v_dual_add_nc_u32 v6, s10, v63
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[130:133], v7 offset:2048
	ds_load_b128 v[134:137], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v91, s17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[150:153], v8
	ds_load_b128 v[154:157], v8 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[158:161], v6 offset:2048
	ds_load_b128 v[146:149], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[118:121], v[102:105], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[122:125], v[102:105], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[122:125], v[126:129], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[118:121], v[126:129], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[114:117], v[142:145], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[110:113], v[142:145], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[114:117], v[138:141], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[110:113], v[138:141], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[80:83], v[134:137], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[2:5], v[134:137], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[80:83], v[130:133], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[2:5], v[130:133], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[150:153], v[146:149], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[154:157], v[146:149], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[150:153], v[158:161], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[154:157], v[158:161], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v73
	v_cvt_f32_i32_e32 v3, v74
	v_cvt_f32_i32_e32 v4, v75
	v_cvt_f32_i32_e32 v5, v76
	v_cvt_f32_i32_e32 v6, v77
	v_cvt_f32_i32_e32 v7, v78
	v_cvt_f32_i32_e32 v8, v79
	v_cvt_f32_i32_e32 v69, v94
	v_cvt_f32_i32_e32 v70, v95
	v_cvt_f32_i32_e32 v71, v96
	v_cvt_f32_i32_e32 v73, v97
	v_cvt_f32_i32_e32 v74, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v107
	v_cvt_f32_i32_e32 v84, v108
	v_cvt_f32_i32_e32 v85, v109
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v72, v72
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v94, v59, s4, 1
	v_add_lshl_u32 v95, v60, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v96, v58, s4, 1
	v_add_lshl_u32 v97, v57, s4, 1
	v_add_lshl_u32 v98, v55, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v99, v47, s4, 1
	v_add_lshl_u32 v100, v44, s4, 1
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_add_lshl_u32 v101, v41, s4, 1
	v_add_lshl_u32 v102, v38, s4, 1
	v_add_lshl_u32 v103, v35, s4, 1
	v_dual_cndmask_b32 v98, 0x80000000, v98 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_add_lshl_u32 v104, v34, s4, 1
	s_and_b32 s21, s21, 0xffff
	v_add_lshl_u32 v105, v33, s4, 1
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_add_lshl_u32 v106, v32, s4, 1
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v123, v96, s[20:23], 0 offen
	buffer_load_u16 v126, v97, s[20:23], 0 offen
	buffer_load_u16 v129, v98, s[20:23], 0 offen
	buffer_load_u16 v130, v99, s[20:23], 0 offen
	buffer_load_u16 v131, v100, s[20:23], 0 offen
	buffer_load_u16 v132, v101, s[20:23], 0 offen
	buffer_load_u16 v133, v102, s[20:23], 0 offen
	buffer_load_u16 v134, v103, s[20:23], 0 offen
	v_add_lshl_u32 v99, v24, s4, 1
	v_add_lshl_u32 v100, v20, s4, 1
	v_dual_cndmask_b32 v96, 0x80000000, v104 :: v_dual_cndmask_b32 v97, 0x80000000, v105
	v_add_lshl_u32 v101, v26, s4, 1
	v_add_lshl_u32 v102, v22, s4, 1
	v_add_lshl_u32 v103, v18, s4, 1
	v_dual_cndmask_b32 v98, 0x80000000, v106 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v135, v96, s[20:23], 0 offen
	buffer_load_u16 v136, v97, s[20:23], 0 offen
	buffer_load_u16 v137, v98, s[20:23], 0 offen
	buffer_load_u16 v138, v99, s[20:23], 0 offen
	buffer_load_u16 v139, v100, s[20:23], 0 offen
	buffer_load_u16 v140, v101, s[20:23], 0 offen
	buffer_load_u16 v141, v102, s[20:23], 0 offen
	buffer_load_u16 v142, v103, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v94, v94, s[8:11], 0 offen
	buffer_load_u16 v95, v95, s[8:11], 0 offen
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v128, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s42, v67
	v_add_nc_u32_e32 v65, s42, v65
	ds_load_b128 v[143:146], v1 offset:4096
	ds_load_b128 v[147:150], v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s41, v61
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v66, s42, v66
	ds_load_b128 v[151:154], v65 offset:4096
	ds_load_b128 v[155:158], v65
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v61, s41, v64
	v_add_nc_u32_e32 v62, s41, v62
	ds_load_b128 v[159:162], v1 offset:2048
	ds_load_b128 v[112:115], v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v66 offset:4096
	ds_load_b128 v[167:170], v66
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v61 offset:2048
	ds_load_b128 v[175:178], v61
	ds_load_b128 v[179:182], v62 offset:2048
	ds_load_b128 v[183:186], v62
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v96, s42, v68
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s41, v63
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v68, s19 :: v_dual_mov_b32 v67, s18
	v_dual_mov_b32 v66, s17 :: v_dual_mov_b32 v65, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[187:190], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v64, s15 :: v_dual_mov_b32 v63, s14
	v_dual_mov_b32 v62, s13 :: v_dual_mov_b32 v61, s12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[191:194], v96
	ds_load_b128 v[195:198], v96 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[199:202], v1 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[155:158], v[112:115], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[151:154], v[112:115], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[155:158], v[159:162], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[151:154], v[159:162], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[167:170], v[183:186], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[163:166], v[183:186], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[167:170], v[179:182], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[163:166], v[179:182], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[147:150], v[175:178], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[143:146], v[175:178], v[104:111] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[147:150], v[171:174], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[143:146], v[171:174], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[191:194], v[187:190], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[195:198], v[187:190], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[191:194], v[199:202], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[195:198], v[199:202], v[61:68] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v118
	v_cvt_f32_i32_e32 v118, v119
	v_cvt_f32_i32_e32 v119, v61
	v_cvt_f32_i32_e32 v120, v62
	v_cvt_f32_i32_e32 v121, v63
	v_cvt_f32_i32_e32 v122, v64
	v_cvt_f32_i32_e32 v124, v65
	v_cvt_f32_i32_e32 v125, v66
	v_cvt_f32_i32_e32 v127, v67
	v_cvt_f32_i32_e32 v128, v68
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s28, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v95.h, v135.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s4, s4, 25
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v135, 1, v0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s28, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v59, v59, s4, 1
	v_add_lshl_u32 v60, v60, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v41, v41, s4, 1
	v_add_lshl_u32 v34, v34, s4, 1
	v_add_lshl_u32 v33, v33, s4, 1
	v_add_lshl_u32 v35, v35, s4, 1
	v_add_lshl_u32 v32, v32, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v24, s4, 1
	v_add_lshl_u32 v20, v20, s4, 1
	v_add_lshl_u32 v26, v26, s4, 1
	v_add_lshl_u32 v22, v22, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_add_lshl_u32 v18, v18, s4, 1
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	v_add_lshl_u32 v58, v58, s4, 1
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	v_add_lshl_u32 v57, v57, s4, 1
	v_add_lshl_u32 v55, v55, s4, 1
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_and_b32 v135, 56, v135
	v_mov_b16_e64 v63.h, v141.l
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_mov_b16_e64 v65.h, v139.l
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v47, v47, s4, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	s_clause 0x7
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	buffer_load_u16 v32, v32, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v61, v18, s[20:23], 0 offen
	v_add_lshl_u32 v44, v44, s4, 1
	v_add_lshl_u32 v38, v38, s4, 1
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x7
	buffer_load_u16 v58, v58, s[20:23], 0 offen
	buffer_load_u16 v57, v57, s[20:23], 0 offen
	buffer_load_u16 v55, v55, s[20:23], 0 offen
	buffer_load_u16 v47, v47, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v35, v35, s[20:23], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v18.h, v95.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v62.h, v142.l
	v_mov_b16_e64 v64.h, v140.l
	v_mov_b16_e64 v66.h, v138.l
	v_mov_b16_e64 v67.h, v137.l
	v_mov_b16_e64 v68.h, v136.l
	v_mov_b16_e64 v123.h, v134.l
	v_mov_b16_e64 v126.h, v133.l
	v_mov_b16_e64 v129.h, v132.l
	v_mov_b16_e64 v130.h, v131.l
	v_mov_b16_e64 v131.h, v130.l
	v_mov_b16_e64 v132.h, v129.l
	v_mov_b16_e64 v133.h, v126.l
	v_mov_b16_e64 v134.h, v123.l
	v_mov_b16_e32 v62.l, v18.l
	v_mov_b16_e32 v63.l, v18.l
	v_mov_b16_e32 v64.l, v18.l
	v_mov_b16_e32 v65.l, v18.l
	v_mov_b16_e32 v66.l, v18.l
	v_mov_b16_e32 v67.l, v18.l
	v_mov_b16_e32 v68.l, v18.l
	v_mov_b16_e32 v95.l, v18.l
	v_mov_b16_e32 v123.l, v18.l
	v_mov_b16_e32 v126.l, v18.l
	v_mov_b16_e64 v129.l, v18.l
	v_mov_b16_e64 v130.l, v18.l
	v_mov_b16_e64 v131.l, v18.l
	v_mov_b16_e64 v132.l, v18.l
	v_mov_b16_e64 v133.l, v18.l
	v_mov_b16_e64 v134.l, v18.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v136, v18, v62
	v_mul_f32_e32 v137, v18, v63
	v_mul_f32_e32 v138, v18, v64
	v_mul_f32_e32 v139, v18, v65
	v_mul_f32_e32 v140, v18, v66
	v_mul_f32_e32 v141, v18, v67
	v_mul_f32_e32 v142, v18, v68
	v_mul_f32_e32 v143, v18, v95
	v_mul_f32_e32 v144, v18, v123
	v_mul_f32_e32 v145, v18, v126
	v_mul_f32_e32 v146, v18, v129
	v_mul_f32_e32 v147, v18, v130
	v_mul_f32_e32 v148, v18, v131
	v_mul_f32_e32 v149, v18, v132
	v_mul_f32_e32 v150, v18, v133
	v_mul_f32_e32 v151, v18, v134
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v18.h, v94.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v139, v90, v53
	v_fma_f32 v92, v137, v92, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v18, v65
	v_mul_f32_e32 v63, v18, v63
	v_mul_f32_e32 v67, v18, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v53, v90, s3
	v_cndmask_b32_e64 v56, v56, v92, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v18, v95
	v_mul_f32_e32 v95, v18, v123
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v123, v18, v126 :: v_dual_lshlrev_b32 v20, 16, v20
	v_mul_f32_e32 v126, v18, v129
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v95, v8, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v76, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v71, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v19, v8, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v44
	v_lshlrev_b32_e32 v44, 16, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v123, v7, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v63, s3
	v_cndmask_b32_e64 v25, v25, v67, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v17, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v47
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v129, v18, v130
	v_mul_f32_e32 v130, v18, v131
	v_mul_f32_e32 v131, v18, v132
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v74, v28
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v32, 16, v32
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v131, v3, v13
	v_fma_f32 v85, v144, v85, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v140, v89, v52
	v_fma_f32 v86, v143, v86, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v13, v3, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v132, v18, v133 :: v_dual_lshlrev_b32 v13, 16, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v85, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v142, v87, v50
	v_fma_f32 v83, v146, v83, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v89, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v132, v2, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v86, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v138, v91, v54
	v_fma_f32 v78, v151, v78, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v87, s3
	v_cndmask_b32_e64 v2, v12, v2, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v12, 16, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v18, v68
	v_mul_f32_e32 v133, v18, v134
	v_mul_f32_e32 v64, v18, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v66, v18, v66 :: v_dual_mul_f32 v65, v12, v32
	v_mul_f32_e32 v63, v12, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v94, v69, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v12, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v126, v6, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v12, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v70, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v69, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v12, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v130, v4, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v16, v6, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v55
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v62, v18, v62 :: v_dual_mul_f32 v59, v12, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v14, v4, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v58
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v12, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v129, v5, v15
	v_fma_f32 v84, v145, v84, v45
	v_fma_f32 v82, v147, v82, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v12, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v75, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v15, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v12, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v77, v31
	v_fma_f32 v66, v66, v73, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v84, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v12, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v150, v79, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v62, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v12, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v133, v72, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v82, s3
	v_cndmask_b32_e64 v37, v37, v79, s3
	v_cndmask_b32_e64 v29, v29, v64, s3
	v_cndmask_b32_e64 v27, v27, v66, s3
	v_cndmask_b32_e64 v11, v11, v70, s3
	v_cndmask_b32_e64 v23, v23, v68, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v12, v41
	v_dual_mul_f32 v64, v12, v33 :: v_dual_mul_f32 v19, v13, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v47, v1, v11
	v_fma_f32 v47, v57, v97, v3
	v_fma_f32 v57, v59, v99, v5
	v_fma_f32 v59, v61, v101, v7
	v_fma_f32 v61, v63, v103, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v66, v12, v24 :: v_dual_mul_f32 v17, v13, v17
	v_dual_mul_f32 v68, v12, v26 :: v_dual_mul_f32 v41, v13, v41
	v_dual_mul_f32 v12, v12, v44 :: v_dual_mul_f32 v35, v13, v35
	v_mul_f32_e32 v15, v13, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v11, v1, s2
	v_cndmask_b32_e64 v11, v21, v61, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v13, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v110, v31
	v_fma_f32 v15, v15, v112, v37
	v_fma_f32 v19, v19, v115, v42
	v_fma_f32 v35, v35, v118, v46
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, v11, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v117, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v13, v34
	v_mul_f32_e32 v33, v13, v33
	v_mul_f32_e32 v32, v13, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v65, v105, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v47, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v13, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v59, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v13, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v31, v12, s2
	v_cndmask_b32_e64 v15, v37, v15, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v24, v13, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v42, v19, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v13, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v45, v38, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v13, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v46, v35, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v13, v22
	v_mul_f32_e32 v13, v13, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v55, v96, v2
	v_fma_f32 v55, v58, v98, v4
	v_fma_f32 v58, v60, v100, v6
	v_fma_f32 v60, v62, v102, v8
	v_fma_f32 v62, v64, v104, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v44, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v93, v136, v93, v48
	v_fma_f32 v88, v141, v88, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v83, s3
	v_cndmask_b32_e64 v21, v23, v62, s2
	v_cndmask_b32_e64 v23, v25, v63, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v66, v106, v27
	v_fma_f32 v65, v67, v107, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v57, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v23, v23, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v34, v119, v49
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v15, v15, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v122, v52
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v19, v19, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v124, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v93, s3
	v_cndmask_b32_e64 v54, v54, v91, s3
	v_cndmask_b32_e64 v51, v51, v88, s3
	v_cndmask_b32_e64 v36, v36, v78, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v68, v108, v29
	v_fma_f32 v67, v69, v109, v30
	v_fma_f32 v41, v41, v116, v43
	v_fma_f32 v33, v33, v120, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v55, s2
	v_cndmask_b32_e64 v6, v6, v58, s2
	v_cndmask_b32_e64 v8, v8, v60, s2
	v_cndmask_b32_e64 v25, v27, v64, s2
	v_cndmask_b32_e64 v27, v28, v65, s2
	v_cndmask_b32_e64 v34, v49, v34, s2
	v_cndmask_b32_e64 v24, v52, v24, s2
	v_cndmask_b32_e64 v20, v53, v20, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v8, v8, v8
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v35, v35, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v127, v56
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v2, 0, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v29, v66, s2
	v_cndmask_b32_e64 v29, v30, v67, s2
	v_cndmask_b32_e64 v30, v43, v41, s2
	v_cndmask_b32_e64 v33, v50, v33, s2
	v_cndmask_b32_e64 v22, v56, v22, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v111, v36
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v6, v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v128, v48
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v27, v27, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v121, v51
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v31, v31, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v125, v54
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v7, 0, v7
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v148, v81, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v36, v14, s2
	v_cndmask_b32_e64 v32, v51, v32, s2
	v_cndmask_b32_e64 v26, v54, v26, s2
	v_cndmask_b32_e64 v13, v48, v13, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v33, v33, v33
	v_max_f32_e32 v22, v22, v22
	v_dual_max_f32 v20, 0, v20 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v36, s35, v9
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b16_e32 v9.h, v18.l
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v81, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, 0, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v9
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v37, s35, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v18.l
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v114, v40
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v26, 0, v26 :: v_dual_mul_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v2, v2, v9, 0x7fff
	v_mov_b16_e32 v9.h, v18.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v40, v17, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v12, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v3.h
	v_mov_b16_e32 v40.h, v18.l
	v_add3_u32 v1, v1, v10, 0x7fff
	v_mov_b16_e32 v9.l, v4.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v28, 0, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v40
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_and_b32 v1, 1, v9
	v_max_f32_e32 v23, 0, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v10, 0x7fff
	v_mov_b16_e32 v9.l, v6.h
	v_mov_b16_e32 v10.l, v5.h
	v_mov_b16_e32 v10.h, v18.l
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v7, 1, v9
	v_and_b32_e32 v3, 1, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v149, v80, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v4.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_max_f32 v29, v29, v29
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.h, v18.l
	v_and_b32_e32 v7, 1, v9
	v_mov_b16_e32 v6.l, v8.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v80, s3
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v9, v21, v21 :: v_dual_mul_f32 v10, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v113, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v6.l, v9.h
	v_mov_b16_e32 v7.l, v10.h
	v_mov_b16_e32 v7.h, v18.l
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v39, v16, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v14, 0, v14
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v4, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v21, v27, v27 :: v_dual_and_b32 v6, 1, v6
	v_dual_mul_f32 v7, v25, v25 :: v_dual_max_f32 v16, v16, v16
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v18.l
	v_add3_u32 v4, v10, v4, 0x7fff
	v_add3_u32 v6, v9, v6, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v18.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v34, 0, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v11, v28, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v4, 1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v9.l, v11.h
	v_mov_b16_e32 v10.l, v21.h
	v_mov_b16_e32 v10.h, v18.l
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v8.h
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v8, 1, v10
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v7.h
	v_mov_b16_e32 v12.h, v18.l
	v_add3_u32 v9, v11, v9, 0x7fff
	v_add3_u32 v8, v21, v8, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v18.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_and_b32 v12, 1, v12
	v_max_f32_e32 v32, 0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v8.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 1, v11
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.h, v18.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v15.h
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v30, 0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v14.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v16, v16 :: v_dual_and_b32 v11, 1, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v7.h
	v_mov_b16_e32 v16.h, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 1, v12
	v_mov_b16_e32 v16.l, v10.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v15, v11, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v13, 0, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v14, v7, 0x7fff
	v_mov_b16_e32 v14.h, v18.l
	v_and_b32_e32 v15, 1, v16
	v_mov_b16_e32 v14.l, v12.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v30, v30 :: v_dual_mul_f32 v21, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v19, v19 :: v_dual_and_b32 v14, 1, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v10, v15, 0x7fff
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e32 v15.h, v18.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v7.h
	v_mov_b16_e32 v17.h, v18.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v12, v14, 0x7fff
	v_and_b32_e32 v14, 1, v15
	v_mov_b16_e32 v23.l, v21.h
	v_and_b32_e32 v15, 1, v17
	v_mov_b16_e32 v17.l, v19.h
	v_mov_b16_e32 v23.h, v18.l
	v_mov_b16_e32 v12.l, v10.h
	v_add3_u32 v10, v16, v14, 0x7fff
	v_add3_u32 v7, v7, v15, 0x7fff
	v_and_b32_e32 v15, 1, v17
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v16, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v23
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v23, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v15, v19, v15, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v10.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.h, v18.l
	v_mov_b16_e32 v24.l, v19.h
	v_add3_u32 v14, v21, v14, 0x7fff
	v_mov_b16_e32 v25.l, v23.h
	v_mov_b16_e32 v25.h, v18.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v21.l, v7.h
	v_mov_b16_e32 v21.h, v18.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v13, v13, v13 :: v_dual_and_b32 v24, 1, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v14.h
	v_add3_u32 v14, v16, v17, 0x7fff
	v_and_b32_e32 v16, 1, v25
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v17, v19, v24, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v20, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.h, v18.l
	v_add3_u32 v16, v23, v16, 0x7fff
	v_add3_u32 v7, v7, v21, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v22, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v18.l
	v_mov_b16_e32 v22.h, v18.l
	v_mov_b16_e32 v23.l, v13.h
	v_mov_b16_e32 v22.l, v17.h
	v_mov_b16_e32 v23.h, v18.l
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v14.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v22
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s2, s34, s35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v19, v19, v21, 0x7fff
	v_and_b32_e32 v21, 1, v23
	v_mov_b16_e32 v20.l, v7.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s2, s2, s33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s3, s11
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v38, s2, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v13, v21, 0x7fff
	v_dual_cndmask_b32 v13, v5, v2 :: v_dual_cndmask_b32 v2, v2, v5
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_add3_u32 v17, v17, v18, 0x7fff
	v_dual_cndmask_b32 v1, v1, v3 :: v_dual_and_b32 v20, 1, v20
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v3, v6, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v0.l, v17.h
	v_dual_cndmask_b32 v17, v9, v6 :: v_dual_mov_b32 v6, 0x5410
	v_add3_u32 v7, v7, v20, 0x7fff
	v_mov_b16_e32 v7.l, v19.h
	v_cndmask_b32_e32 v19, v10, v11, vcc_lo
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v39, s2, v135, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	s_mov_b32 s2, 0x76543210
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 8, v6
	v_cndmask_b32_e32 v9, v8, v4, vcc_lo
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v18 :: v_dual_cndmask_b32 v11, v15, v12
	v_dual_cndmask_b32 v12, v12, v15 :: v_dual_cndmask_b32 v15, v7, v14
	v_and_b32_e32 v6, 0x540054, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v7, v14, v7, vcc_lo
	v_permlanex16_b32 v14, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v18, v0, v16, vcc_lo
	v_lshl_or_b32 v1, v6, 4, v6
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v16, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_lshl_or_b32 v6, v10, 4, v10
	v_permlanex16_b32 v10, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x7060706, v6
	v_perm_b32 v0, v2, v13, v21
	v_perm_b32 v6, v16, v9, v21
	v_perm_b32 v4, v10, v17, v21
	v_perm_b32 v8, v20, v19, v21
	v_perm_b32 v1, v2, v13, v22
	v_perm_b32 v2, v14, v5, v21
	v_perm_b32 v3, v14, v5, v22
	v_perm_b32 v7, v16, v9, v22
	v_add_lshl_u32 v16, v38, v36, 1
	v_perm_b32 v5, v10, v17, v22
	v_add_lshl_u32 v17, v39, v36, 1
	v_perm_b32 v9, v20, v19, v22
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v22
	v_perm_b32 v12, v23, v15, v21
	v_perm_b32 v13, v23, v15, v22
	v_perm_b32 v14, v24, v18, v21
	v_perm_b32 v15, v24, v18, v22
	v_add_lshl_u32 v18, v38, v37, 1
	s_mov_b32 s2, s10
	v_add_lshl_u32 v19, v39, v37, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v17, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v18, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v19, s[0:3], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 203
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8740
; TotalNumSgprs: 45
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
