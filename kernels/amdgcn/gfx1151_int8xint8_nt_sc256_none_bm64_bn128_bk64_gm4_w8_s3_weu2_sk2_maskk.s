	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s30, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v9, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v11, 0x60, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
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
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s16, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s6, s8, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 321 20 is_stmt 0              ; generate_amdgcn.py:321:20
	s_min_i32 s17, s6, 4
	.loc	1 322 29 is_stmt 1              ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s6, s17
	s_xor_b32 s5, s2, s17
	s_cvt_f32_u32 s7, s6
	s_ashr_i32 s5, s5, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_sub_i32 s10, 0, s6
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v1, 48, v9
	s_mov_b32 s11, 0x31027000
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s39, s11
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[3:4], null, s30, v2, v[1:2]
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s4, s7, s10
	s_abs_i32 s10, s2
	s_add_i32 s7, s7, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s7
	s_mul_i32 s7, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s10, s7
	s_add_i32 s10, s4, 1
	s_sub_i32 s18, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s7, s18, s7
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s7, s6
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s18, s4
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s31, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s7, s4, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s18, s30, 0xff
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s4, s7, s5
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v4, s31, v1
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s17, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s6, s30, 0x7f
.Ltmp19:
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s26, s4, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s18, s18, s3
.Ltmp21:
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v4
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s27, s2, 6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_mul_i32 s2, s26, s30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[4:5], null, s27, s30, v[3:4]
	.loc	1 374 22 is_stmt 0              ; generate_amdgcn.py:374:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 376 30 is_stmt 1              ; generate_amdgcn.py:376:30
	s_lshl_b32 s4, s30, 6
	s_add_i32 s2, s2, s31
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s6, 0xff
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v5, s2, v3
	v_add3_u32 v3, s2, s4, v3
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s17, s31, 0x80
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v6, s31, v4
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v7, s17, v1
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v4, s17, v4
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v8, 0x80, v5
	v_add_nc_u32_e32 v10, 0x80, v3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e64 s4, s30, v7
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_mov_b32 s38, s10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[27:30], v6, s[8:11], 0 offen
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s16, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_dual_cndmask_b32 v6, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v10
	s_clause 0x1
	buffer_load_b128 v[31:34], v5, s[36:39], 0 offen
	buffer_load_b128 v[35:38], v3, s[36:39], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[39:42], v4, s[8:11], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x1
	buffer_load_b128 v[43:46], v6, s[36:39], 0 offen
	buffer_load_b128 v[47:50], v7, s[36:39], 0 offen
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v10, 0x80, v0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v3, 15, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v4, 4, v0
	v_lshrrev_b32_e32 v8, 1, v11
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v7, 3, v10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v6, 48, v6
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s6, 0x17f
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v13, v7, v3
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_or_b32 v7, v4, 1, v8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v70, v9, v6
	v_lshlrev_b32_e32 v3, 6, v3
	v_lshlrev_b32_e32 v4, 5, v11
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v26, 32, v13
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v14, 2, v7
	v_or_b32_e32 v15, 4, v7
	v_or_b32_e32 v16, 6, v7
	v_or_b32_e32 v17, 8, v7
	v_or_b32_e32 v18, 10, v7
	v_or_b32_e32 v19, 12, v7
	v_or_b32_e32 v20, 14, v7
	v_or_b32_e32 v21, 64, v7
	v_or_b32_e32 v22, 0x42, v7
	v_or_b32_e32 v23, 0x44, v7
	v_or_b32_e32 v24, 0x46, v7
	v_or_b32_e32 v25, 0x48, v7
	v_or_b32_e32 v6, 0x4a, v7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v51, 0, v70
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v8, 0x4c, v7
	v_or_b32_e32 v12, 0x4e, v7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v51, v[27:30] offset:16384
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v51, v[31:34]
	s_waitcnt vmcnt(3)
	ds_store_b128 v51, v[35:38] offset:4096
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v51, v[39:42] offset:20480
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v51, v[43:46] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v51, v[47:50] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_b32_e32 v27, 48, v5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_or_b32 v62, 0x430, v5, v3
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_or3_b32 v66, v4, v27, v3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_xor_b32_e32 v64, 48, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v67, 16, v66
	v_xor_b32_e32 v68, 32, v66
	v_xor_b32_e32 v69, 48, v66
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
.LBB0_3:                                ; %Flow45
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v13, s27, v13
	v_or_b32_e32 v26, s27, v26
	s_ashr_i32 s1, s18, 8
	v_or_b32_e32 v59, s26, v7
	v_or_b32_e32 v58, s26, v14
	v_mul_lo_u32 v60, v13, s1
	v_mul_lo_u32 v61, v26, s1
	v_or_b32_e32 v57, s26, v15
	v_or_b32_e32 v56, s26, v16
	v_or_b32_e32 v55, s26, v17
	v_or_b32_e32 v54, s26, v18
	v_or_b32_e32 v53, s26, v19
	v_or_b32_e32 v52, s26, v20
	v_or_b32_e32 v51, s26, v21
	v_or_b32_e32 v50, s26, v22
	v_or_b32_e32 v49, s26, v23
	v_or_b32_e32 v47, s26, v24
	v_or_b32_e32 v45, s26, v25
	v_or_b32_e32 v48, s26, v6
	v_or_b32_e32 v46, s26, v8
	v_or_b32_e32 v44, s26, v12
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v62, 0x430, v5, v3
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v6, 48, v5
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	v_lshl_or_b32 v5, s7, 7, v2
	s_lshl_b32 s4, s5, 7
	v_add_nc_u32_e32 v2, s27, v2
	v_or_b32_e32 v74, 0x100, v1
	v_or3_b32 v66, v4, v6, v3
	v_subrev_nc_u32_e32 v3, s4, v5
	v_mov_b32_e32 v12, 0
	v_mul_lo_u32 v2, s30, v2
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_or_b32_e32 v4, 64, v3
	v_mul_lo_u32 v3, s30, v3
	v_xor_b32_e32 v64, 48, v62
	v_xor_b32_e32 v67, 16, v66
	v_xor_b32_e32 v68, 32, v66
	v_mul_lo_u32 v4, s30, v4
	v_add3_u32 v73, v2, v1, 0x100
	v_xor_b32_e32 v69, 48, v66
	v_mov_b32_e32 v13, 0
	v_add3_u32 v72, v3, v1, 0x100
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v15, 0
	v_add3_u32 v71, v4, v1, 0x100
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_mov_b32_e32 v7, s22
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v36, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s0, s6, 7
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
.Ltmp23:
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s15, s0, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s33, 0, 0x5000
	s_add_i32 s34, 0, 0x2000
	s_mov_b32 s44, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s31
	.loc	1 388 29 is_stmt 1              ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s31, 31
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_add_nc_u32_e32 v75, s17, v74
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v76, s17, v73
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s18, s16
	s_add_i32 s0, s31, s0
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v75
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 8
	s_mov_b32 s16, s34
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v77, v61, s0, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v75, 0x80000000, v76, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v76, v60, s0, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s0, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 392 22 is_stmt 0              ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v78, v58, s0, 1
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b128 v[107:110], v75, s[8:11], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v75, v59, s0, 1
	v_add_lshl_u32 v79, v57, s0, 1
	v_add_lshl_u32 v80, v56, s0, 1
	v_add_lshl_u32 v81, v55, s0, 1
	v_add_lshl_u32 v82, v54, s0, 1
	v_add_lshl_u32 v83, v53, s0, 1
	v_add_lshl_u32 v84, v52, s0, 1
	v_add_lshl_u32 v85, v51, s0, 1
	v_add_lshl_u32 v86, v50, s0, 1
	v_add_lshl_u32 v87, v49, s0, 1
	v_add_lshl_u32 v88, v47, s0, 1
	v_add_lshl_u32 v89, v45, s0, 1
	v_add_lshl_u32 v90, v48, s0, 1
	v_add_lshl_u32 v91, v46, s0, 1
	v_add_lshl_u32 v92, v44, s0, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s0, -1, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e64 v76, 0x80000000, v76, s0
	v_cndmask_b32_e64 v77, 0x80000000, v77, s0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	v_cndmask_b32_e64 v78, 0x80000000, v78, s0
	v_cndmask_b32_e64 v79, 0x80000000, v79, s0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_barrier
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e64 v80, 0x80000000, v80, s0
	v_cndmask_b32_e64 v81, 0x80000000, v81, s0
	v_cndmask_b32_e64 v82, 0x80000000, v82, s0
	v_cndmask_b32_e64 v83, 0x80000000, v83, s0
	v_cndmask_b32_e64 v84, 0x80000000, v84, s0
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	v_cndmask_b32_e64 v88, 0x80000000, v88, s0
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	v_cndmask_b32_e64 v90, 0x80000000, v90, s0
	v_cndmask_b32_e64 v91, 0x80000000, v91, s0
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x1
	buffer_load_u16 v175, v76, s[4:7], 0 offen
	buffer_load_u16 v176, v77, s[4:7], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_clause 0xf
	buffer_load_u16 v177, v75, s[40:43], 0 offen
	buffer_load_u16 v178, v78, s[40:43], 0 offen
	buffer_load_u16 v179, v79, s[40:43], 0 offen
	buffer_load_u16 v180, v80, s[40:43], 0 offen
	buffer_load_u16 v181, v81, s[40:43], 0 offen
	buffer_load_u16 v182, v82, s[40:43], 0 offen
	buffer_load_u16 v183, v83, s[40:43], 0 offen
	buffer_load_u16 v184, v84, s[40:43], 0 offen
	buffer_load_u16 v185, v85, s[40:43], 0 offen
	buffer_load_u16 v186, v86, s[40:43], 0 offen
	buffer_load_u16 v187, v87, s[40:43], 0 offen
	buffer_load_u16 v188, v88, s[40:43], 0 offen
	buffer_load_u16 v189, v89, s[40:43], 0 offen
	buffer_load_u16 v190, v90, s[40:43], 0 offen
	buffer_load_u16 v191, v91, s[40:43], 0 offen
	buffer_load_u16 v192, v92, s[40:43], 0 offen
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v75, s17, v72
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v76, s17, v71
	s_mov_b32 s0, s14
	v_add_nc_u32_e32 v79, s18, v66
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v77, s0, v65
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	s_clause 0x1
	buffer_load_b128 v[111:114], v75, s[36:39], 0 offen
	buffer_load_b128 v[115:118], v76, s[36:39], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v75, s0, v62
	v_add_nc_u32_e32 v76, s0, v63
	v_add_nc_u32_e32 v78, s0, v64
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v80, s18, v67
	v_add_nc_u32_e32 v81, s18, v68
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[91:94], v75
	ds_load_b128 v[119:122], v75 offset:2048
	ds_load_b128 v[123:126], v76
	ds_load_b128 v[127:130], v76 offset:2048
	ds_load_b128 v[131:134], v77
	ds_load_b128 v[135:138], v77 offset:2048
	ds_load_b128 v[139:142], v78
	ds_load_b128 v[143:146], v78 offset:2048
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[99:102], v79
	ds_load_b128 v[147:150], v79 offset:4096
	ds_load_b128 v[151:154], v80
	ds_load_b128 v[155:158], v80 offset:4096
	ds_load_b128 v[159:162], v81
	ds_load_b128 v[163:166], v81 offset:4096
	v_add_nc_u32_e32 v82, s18, v69
	ds_load_b128 v[167:170], v82
	ds_load_b128 v[171:174], v82 offset:4096
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s0, s44, 1
	s_mov_b32 s14, s33
	s_cmp_lt_i32 s0, 2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s44, s0, 0
	s_add_i32 s15, s15, -1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s0, s44, 12
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_addk_i32 s31, 0x80
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[147:150], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[119:122], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[151:154], v[123:126], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[147:150], v[119:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[151:154], v[127:130], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[155:158], v[123:126], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[159:162], v[131:134], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[155:158], v[127:130], v[99:106] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s18, s0, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[91:98], v[159:162], v[135:138], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[163:166], v[131:134], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[167:170], v[139:142], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[163:166], v[135:138], v[99:106] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_add_i32 s34, s18, s0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[91:98], v[167:170], v[143:146], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[171:174], v[139:142], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v77, v77
	v_wmma_i32_16x16x16_iu8 v[99:106], v[171:174], v[143:146], v[99:106] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
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
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s33, s18, 0x4000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s15, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_barrier
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v122, 16, v178
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v135, 16, v191
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v120, 16, v176
	v_lshlrev_b32_e32 v119, 16, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v138, v119, v122
	v_dual_mul_f32 v122, v120, v122 :: v_dual_mul_f32 v151, v119, v135
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v136, 16, v192
	v_lshlrev_b32_e32 v126, 16, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v26, v151, v89 :: v_dual_lshlrev_b32 v123, 16, v179
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v142, v119, v126
	v_mul_f32_e32 v126, v120, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v139, v119, v123 :: v_dual_lshlrev_b32 v128, 16, v184
	v_mul_f32_e32 v123, v120, v123
	v_dual_mul_f32 v144, v119, v128 :: v_dual_lshlrev_b32 v125, 16, v181
	v_mul_f32_e32 v128, v120, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v141, v119, v125 :: v_dual_lshlrev_b32 v130, 16, v186
	v_mul_f32_e32 v125, v120, v125
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v14, v139, v77 :: v_dual_lshlrev_b32 v127, 16, v183
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v146, v119, v130
	v_mul_f32_e32 v130, v120, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v143, v119, v127 :: v_dual_lshlrev_b32 v132, 16, v188
	v_mul_f32_e32 v127, v120, v127
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v129, 16, v185
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v135, v120, v135 :: v_dual_mul_f32 v148, v119, v132
	v_mul_f32_e32 v132, v120, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v145, v119, v129 :: v_dual_lshlrev_b32 v134, 16, v190
	v_mul_f32_e32 v129, v120, v129
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v131, 16, v187
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v150, v119, v134 :: v_dual_lshlrev_b32 v121, 16, v177
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v124, 16, v180
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v134, v120, v134 :: v_dual_mul_f32 v147, v119, v131
	v_mul_f32_e32 v131, v120, v131
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v133, 16, v189
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v137, v119, v121 :: v_dual_add_nc_u32 v194, s34, v70
	v_mul_f32_e32 v121, v120, v121
	v_dual_mul_f32 v140, v119, v124 :: v_dual_add_nc_u32 v193, s18, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v149, v119, v133
	v_mul_f32_e32 v119, v119, v136
	v_mul_f32_e32 v124, v120, v124
	v_dual_mul_f32 v133, v120, v133 :: v_dual_fmac_f32 v12, v137, v75
	v_mul_f32_e32 v120, v120, v136
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v13, v138, v76 :: v_dual_fmac_f32 v16, v141, v79
	v_dual_fmac_f32 v15, v140, v78 :: v_dual_fmac_f32 v20, v145, v83
	v_dual_fmac_f32 v17, v142, v80 :: v_dual_fmac_f32 v22, v147, v85
	v_dual_fmac_f32 v18, v143, v81 :: v_dual_fmac_f32 v19, v144, v82
	v_dual_fmac_f32 v24, v149, v87 :: v_dual_fmac_f32 v21, v146, v84
	v_dual_fmac_f32 v23, v148, v86 :: v_dual_fmac_f32 v28, v121, v91
	v_dual_fmac_f32 v25, v150, v88 :: v_dual_fmac_f32 v30, v123, v93
	v_dual_fmac_f32 v27, v119, v90 :: v_dual_fmac_f32 v32, v125, v95
	v_dual_fmac_f32 v29, v122, v92 :: v_dual_fmac_f32 v34, v127, v97
	v_dual_fmac_f32 v31, v124, v94 :: v_dual_fmac_f32 v38, v130, v100
	v_dual_fmac_f32 v33, v126, v96 :: v_dual_fmac_f32 v40, v132, v102
	v_dual_fmac_f32 v35, v128, v98 :: v_dual_fmac_f32 v42, v134, v104
	v_dual_fmac_f32 v37, v129, v99 :: v_dual_fmac_f32 v36, v120, v106
	v_fmac_f32_e32 v39, v131, v101
	v_fmac_f32_e32 v41, v133, v103
	v_fmac_f32_e32 v43, v135, v105
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_store_b128 v193, v[107:110] offset:16384
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v194, v[111:114]
	s_waitcnt vmcnt(0)
	ds_store_b128 v194, v[115:118] offset:4096
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_addk_i32 s17, 0x100
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
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
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s33, 0, 0x5000
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v94, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v6, s16, v68
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v94, s11 :: v_dual_add_nc_u32 v7, s16, v67
	v_dual_mov_b32 v89, s6 :: v_dual_add_nc_u32 v70, s16, v66
	v_mov_b32_e32 v93, s10
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[81:84], v6
	ds_load_b128 v[111:114], v7 offset:4096
	ds_load_b128 v[115:118], v7
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v87, s4 :: v_dual_add_nc_u32 v6, s14, v62
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[119:122], v70 offset:4096
	ds_load_b128 v[123:126], v70
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v70, s14, v63
	ds_load_b128 v[127:130], v6 offset:2048
	ds_load_b128 v[103:106], v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v92, s9 :: v_dual_add_nc_u32 v7, s14, v65
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[139:142], v70 offset:2048
	ds_load_b128 v[143:146], v70
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v91, s8 :: v_dual_add_nc_u32 v8, s16, v69
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v6, s14, v64
	ds_load_b128 v[131:134], v7 offset:2048
	ds_load_b128 v[135:138], v7
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v90, s7
	v_mov_b32_e32 v88, s5
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[151:154], v8
	ds_load_b128 v[155:158], v8 offset:4096
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[159:162], v6 offset:2048
	ds_load_b128 v[147:150], v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[123:126], v[103:106], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[119:122], v[103:106], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[123:126], v[127:130], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[119:122], v[127:130], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[115:118], v[143:146], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[111:114], v[143:146], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[115:118], v[139:142], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[111:114], v[139:142], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[135:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[2:5], v[135:138], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[81:84], v[131:134], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[2:5], v[131:134], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[151:154], v[147:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[147:150], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[151:154], v[159:162], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[155:158], v[159:162], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v74
	v_cvt_f32_i32_e32 v3, v75
	v_cvt_f32_i32_e32 v4, v76
	v_cvt_f32_i32_e32 v5, v77
	v_cvt_f32_i32_e32 v6, v78
	v_cvt_f32_i32_e32 v7, v79
	v_cvt_f32_i32_e32 v8, v80
	v_cvt_f32_i32_e32 v70, v95
	v_cvt_f32_i32_e32 v71, v96
	v_cvt_f32_i32_e32 v72, v97
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
	v_cvt_f32_i32_e32 v86, v110
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v73, v73
.LBB0_10:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s31, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s31, s0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 8
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v95, v60, s0, 1
	v_add_lshl_u32 v96, v61, s0, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s4, -1, 0
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s0, s35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v97, v59, s0, 1
	v_add_lshl_u32 v98, v58, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x1
	buffer_load_u16 v95, v95, s[12:15], 0 offen
	buffer_load_u16 v127, v96, s[12:15], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v96, v57, s0, 1
	v_add_lshl_u32 v99, v56, s0, 1
	v_add_lshl_u32 v100, v55, s0, 1
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_add_lshl_u32 v101, v54, s0, 1
	v_add_lshl_u32 v102, v53, s0, 1
	v_add_lshl_u32 v103, v52, s0, 1
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_add_lshl_u32 v104, v51, s0, 1
	s_and_b32 s29, s29, 0xffff
	v_add_lshl_u32 v105, v50, s0, 1
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_add_lshl_u32 v106, v49, s0, 1
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v128, v97, s[28:31], 0 offen
	buffer_load_u16 v129, v98, s[28:31], 0 offen
	buffer_load_u16 v130, v96, s[28:31], 0 offen
	buffer_load_u16 v131, v99, s[28:31], 0 offen
	buffer_load_u16 v132, v100, s[28:31], 0 offen
	buffer_load_u16 v133, v101, s[28:31], 0 offen
	buffer_load_u16 v134, v102, s[28:31], 0 offen
	buffer_load_u16 v135, v103, s[28:31], 0 offen
	v_add_lshl_u32 v99, v47, s0, 1
	v_add_lshl_u32 v100, v45, s0, 1
	v_dual_cndmask_b32 v96, 0x80000000, v104 :: v_dual_cndmask_b32 v97, 0x80000000, v105
	v_add_lshl_u32 v101, v48, s0, 1
	v_add_lshl_u32 v102, v46, s0, 1
	v_add_lshl_u32 v103, v44, s0, 1
	v_dual_cndmask_b32 v98, 0x80000000, v106 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v136, v96, s[28:31], 0 offen
	buffer_load_u16 v137, v97, s[28:31], 0 offen
	buffer_load_u16 v138, v98, s[28:31], 0 offen
	buffer_load_u16 v139, v99, s[28:31], 0 offen
	buffer_load_u16 v140, v100, s[28:31], 0 offen
	buffer_load_u16 v141, v101, s[28:31], 0 offen
	buffer_load_u16 v142, v102, s[28:31], 0 offen
	buffer_load_u16 v143, v103, s[28:31], 0 offen
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
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v126, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v1, s34, v68
	v_add_nc_u32_e32 v66, s34, v66
	ds_load_b128 v[120:123], v1 offset:4096
	ds_load_b128 v[144:147], v1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s33, v62
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v67, s34, v67
	ds_load_b128 v[148:151], v66 offset:4096
	ds_load_b128 v[152:155], v66
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v62, s33, v65
	v_add_nc_u32_e32 v63, s33, v63
	ds_load_b128 v[156:159], v1 offset:2048
	ds_load_b128 v[112:115], v1
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[160:163], v67 offset:4096
	ds_load_b128 v[164:167], v67
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[168:171], v62 offset:2048
	ds_load_b128 v[172:175], v62
	ds_load_b128 v[176:179], v63 offset:2048
	ds_load_b128 v[180:183], v63
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v96, s34, v69
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s33, v64
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v69, s11 :: v_dual_mov_b32 v68, s10
	v_dual_mov_b32 v67, s9 :: v_dual_mov_b32 v66, s8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[184:187], v1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v65, s7 :: v_dual_mov_b32 v64, s6
	v_dual_mov_b32 v63, s5 :: v_dual_mov_b32 v62, s4
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[188:191], v96
	ds_load_b128 v[192:195], v96 offset:4096
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[196:199], v1 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[152:155], v[112:115], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[148:151], v[112:115], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[152:155], v[156:159], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[148:151], v[156:159], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[164:167], v[180:183], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[160:163], v[180:183], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[164:167], v[176:179], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[160:163], v[176:179], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[144:147], v[172:175], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[120:123], v[172:175], v[104:111] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[144:147], v[168:171], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[120:123], v[168:171], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[188:191], v[184:187], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[192:195], v[184:187], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[188:191], v[196:199], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[192:195], v[196:199], v[62:69] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v119, v62
	v_cvt_f32_i32_e32 v120, v63
	v_cvt_f32_i32_e32 v121, v64
	v_cvt_f32_i32_e32 v122, v65
	v_cvt_f32_i32_e32 v123, v66
	v_cvt_f32_i32_e32 v124, v67
	v_cvt_f32_i32_e32 v125, v68
	v_cvt_f32_i32_e32 v126, v69
.LBB0_12:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s17, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s0, s0, 24
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s17, s0
	v_mov_b16_e32 v62.l, 0
	s_ashr_i32 s0, s0, 8
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v62.h, v127.l
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v60, v60, s0, 1
	v_add_lshl_u32 v61, v61, s0, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s0, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s1, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v59, v59, s0, 1
	v_add_lshl_u32 v58, v58, s0, 1
	v_add_lshl_u32 v57, v57, s0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_add_lshl_u32 v52, v52, s0, 1
	v_add_lshl_u32 v50, v50, s0, 1
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	v_add_lshl_u32 v49, v49, s0, 1
	v_add_lshl_u32 v47, v47, s0, 1
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_add_lshl_u32 v45, v45, s0, 1
	v_add_lshl_u32 v48, v48, s0, 1
	v_add_lshl_u32 v46, v46, s0, 1
	v_add_lshl_u32 v44, v44, s0, 1
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	s_clause 0x7
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	buffer_load_u16 v57, v57, s[28:31], 0 offen
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	buffer_load_u16 v54, v54, s[28:31], 0 offen
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	s_clause 0x7
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v45, v45, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x1
	buffer_load_u16 v60, v60, s[12:15], 0 offen
	buffer_load_u16 v61, v61, s[12:15], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v63.h, v143.l
	v_mov_b16_e64 v64.h, v142.l
	v_mov_b16_e64 v65.h, v141.l
	v_mov_b16_e64 v66.h, v140.l
	v_mov_b16_e64 v67.h, v139.l
	v_mov_b16_e64 v68.h, v138.l
	v_mov_b16_e64 v69.h, v137.l
	v_mov_b16_e64 v127.h, v136.l
	v_mov_b16_e64 v128.h, v135.l
	v_mov_b16_e64 v129.h, v134.l
	v_mov_b16_e64 v130.h, v133.l
	v_mov_b16_e64 v131.h, v132.l
	v_mov_b16_e64 v132.h, v131.l
	v_mov_b16_e64 v133.h, v130.l
	v_mov_b16_e64 v134.h, v129.l
	v_mov_b16_e64 v135.h, v128.l
	v_mov_b16_e32 v63.l, v62.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v139, 2, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v64.l, v62.l
	v_mov_b16_e32 v65.l, v62.l
	v_mov_b16_e32 v66.l, v62.l
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v136, 0x7f, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v67.l, v62.l
	v_mov_b16_e32 v68.l, v62.l
	v_mov_b16_e32 v69.l, v62.l
	v_mov_b16_e32 v127.l, v62.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v138, 14, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e64 v128.l, v62.l
	v_mov_b16_e64 v129.l, v62.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v140, 1, v0
	v_bfe_i32 v0, v0, 0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e64 v130.l, v62.l
	v_mov_b16_e64 v131.l, v62.l
	v_mov_b16_e64 v132.l, v62.l
	v_mov_b16_e64 v133.l, v62.l
	v_mov_b16_e64 v134.l, v62.l
	v_mov_b16_e64 v135.l, v62.l
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v153, v62, v131 :: v_dual_and_b32 v0, 0x840, v0
	v_mul_f32_e32 v142, v62, v63
	v_dual_mul_f32 v148, v62, v69 :: v_dual_and_b32 v139, 0x78, v139
	v_mul_f32_e32 v143, v62, v64
	v_mul_f32_e32 v144, v62, v65
	v_mul_f32_e32 v145, v62, v66
	v_mul_f32_e32 v146, v62, v67
	v_mul_f32_e32 v147, v62, v68
	v_mul_f32_e32 v149, v62, v127
	v_dual_mul_f32 v150, v62, v128 :: v_dual_lshlrev_b32 v141, 11, v138
	v_mul_f32_e32 v151, v62, v129
	v_mul_f32_e32 v152, v62, v130
	v_mul_f32_e32 v154, v62, v132
	v_mul_f32_e32 v155, v62, v133
	v_mul_f32_e32 v156, v62, v134
	v_mul_f32_e32 v157, v62, v135
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v62.h, v95.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v11, v11, 3, v139
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v87, v149, v87, v37
	v_fma_f32 v80, v156, v80, v29
	v_fma_f32 v88, v148, v88, v38
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v133, v62, v133
	v_mul_f32_e32 v130, v62, v130
	v_mul_f32_e32 v128, v62, v128
	v_mul_f32_e32 v63, v62, v63
	v_mul_f32_e32 v64, v62, v64
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v3, v133, v3, v14
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v65, v62, v65
	v_mul_f32_e32 v66, v62, v66
	v_mul_f32_e32 v67, v62, v67
	v_mul_f32_e32 v68, v62, v68
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v3, v14, v3, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v69, v62, v69
	v_mul_f32_e32 v127, v62, v127
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v0, v11, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v80, v29, v80, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v29, v64, v77, v26
	v_fma_f32 v85, v151, v85, v34
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v37, v37, v87, s3
	v_cndmask_b32_e64 v38, v38, v88, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v94, v142, v94, v36
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v26, v26, v29, s3
	v_cndmask_b32_e64 v34, v34, v85, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v91, v145, v91, v41
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v36, v36, v94, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v83, v153, v83, v32
	v_fma_f32 v92, v144, v92, v42
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v41, v41, v91, s3
	v_cndmask_b32_e64 v32, v32, v83, s3
	v_cndmask_b32_e64 v42, v42, v92, s3
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v137, 7, v10
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s38, s27, s35
	s_lshl_b32 s27, s35, 1
	s_add_i32 s38, s38, s26
	s_lshl_b32 s37, s35, 2
	v_mul_lo_u32 v137, s35, v137
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s14
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s31, s35, 6
	s_lshl_b32 s36, s35, 3
	s_mul_i32 s30, s35, 10
	s_mul_i32 s29, s35, 12
	s_mul_i32 s28, s35, 14
	v_add3_u32 v95, s38, v136, v137
	s_lshl_b32 s34, s35, 4
	s_mul_i32 s23, s35, 18
	s_mul_i32 s22, s35, 20
	s_mul_i32 s21, s35, 22
	s_mul_i32 s20, s35, 24
	s_mul_i32 s19, s35, 26
	s_mul_i32 s18, s35, 28
	s_mul_i32 s17, s35, 30
	s_lshl_b32 s33, s35, 5
	s_mul_i32 s16, s35, 34
	s_mul_i32 s13, s35, 36
	s_mul_i32 s12, s35, 38
	s_mul_i32 s11, s35, 40
	s_mul_i32 s10, s35, 42
	s_mul_i32 s9, s35, 44
	s_mul_i32 s8, s35, 46
	s_mul_i32 s7, s35, 48
	s_mul_i32 s6, s35, 50
	s_mul_i32 s5, s35, 52
	s_mul_i32 s4, s35, 54
	s_mul_i32 s1, s35, 56
	s_mul_i32 s0, s35, 58
	.loc	1 392 22 is_stmt 1              ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v14, 16, v57
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v132, v62, v132
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v79, v157, v79, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v4, v132, v4, v15
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v28, v28, v79, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v6, v130, v6, v17
	v_fma_f32 v8, v128, v8, v19
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v17, v17, v6, s3
	v_cndmask_b32_e64 v6, v15, v4, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v60
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v134, v62, v134 :: v_dual_lshlrev_b32 v15, 16, v56
	v_mul_f32_e32 v129, v62, v129
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v8, v19, v8, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v19, 16, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v2, v134, v2, v13
	v_fma_f32 v82, v154, v82, v31
	v_fma_f32 v7, v129, v7, v18
	v_fma_f32 v84, v152, v84, v33
	v_fma_f32 v81, v155, v81, v30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v13, v2, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v13, 16, v58
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v131, v62, v131
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v82, v31, v82, s3
	v_cndmask_b32_e64 v7, v18, v7, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v18, 16, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v11, v63, v78, v27
	v_fma_f32 v5, v131, v5, v16
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v84, v33, v84, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v33, v66, v75, v24
	v_fma_f32 v63, v67, v74, v23
	v_fma_f32 v66, v127, v70, v20
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v16, v5, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v16, 16, v55
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v62, v62, v135
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v31, v65, v76, v25
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v67, v0, v141, v10
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v65, v69, v71, v21
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v53, v4, v16
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v62, v62, v73, v12
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v29, v25, v31, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v31, 16, v50
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v64, v68, v72, v22
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v68, v27, v11, s3
	v_cndmask_b32_e64 v0, v12, v62, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v61
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v12, 16, v59
	v_lshlrev_b32_e32 v27, 16, v51
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v24, v24, v33, s3
	v_cndmask_b32_e64 v25, v23, v63, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v23, 16, v52
	v_lshlrev_b32_e32 v33, 16, v49
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v89, v147, v89, v39
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v20, v20, v66, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v49, v4, v12
	v_mul_f32_e32 v51, v4, v14
	v_dual_mul_f32 v55, v4, v19 :: v_dual_mul_f32 v12, v11, v12
	v_dual_mul_f32 v57, v4, v27 :: v_dual_mul_f32 v14, v11, v14
	v_mul_f32_e32 v27, v11, v27
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v90, v146, v90, v40
	v_fma_f32 v86, v150, v86, v35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v22, v22, v64, s3
	v_cndmask_b32_e64 v21, v21, v65, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v50, v4, v13
	v_mul_f32_e32 v52, v4, v15
	v_mul_f32_e32 v54, v4, v18
	v_dual_mul_f32 v56, v4, v23 :: v_dual_mul_f32 v13, v11, v13
	v_mul_f32_e32 v58, v4, v31
	v_dual_mul_f32 v59, v4, v33 :: v_dual_mul_f32 v16, v11, v16
	v_dual_mul_f32 v61, v4, v45 :: v_dual_mul_f32 v18, v11, v18
	v_dual_mul_f32 v66, v4, v46 :: v_dual_mul_f32 v15, v11, v15
	v_mul_f32_e32 v31, v11, v31
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v39, v39, v89, s3
	v_cndmask_b32_e64 v30, v30, v81, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v60, v4, v47 :: v_dual_mul_f32 v45, v11, v45
	v_dual_mul_f32 v65, v4, v48 :: v_dual_mul_f32 v46, v11, v46
	v_dual_mul_f32 v4, v4, v44 :: v_dual_mul_f32 v19, v11, v19
	v_mul_f32_e32 v33, v11, v33
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v1, v49, v1, v0
	v_fma_f32 v49, v51, v97, v3
	v_fma_f32 v51, v53, v99, v5
	v_fma_f32 v53, v55, v101, v7
	v_fma_f32 v55, v57, v103, v20
	v_fma_f32 v12, v12, v111, v28
	v_fma_f32 v72, v27, v119, v37
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v40, v40, v90, s3
	v_cndmask_b32_e64 v35, v35, v86, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v23, v11, v23
	v_mul_f32_e32 v47, v11, v47
	v_mul_f32_e32 v48, v11, v48
	v_mul_f32_e32 v11, v11, v44
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v44, v50, v96, v2
	v_fma_f32 v50, v52, v98, v6
	v_fma_f32 v52, v54, v100, v17
	v_fma_f32 v54, v56, v102, v8
	v_fma_f32 v56, v58, v104, v21
	v_fma_f32 v57, v59, v105, v22
	v_fma_f32 v59, v61, v107, v24
	v_fma_f32 v61, v66, v109, v26
	v_fma_f32 v66, v13, v112, v80
	v_fma_f32 v73, v31, v120, v38
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v62, 0, v67
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v14, v14, v113, v30
	v_fma_f32 v70, v19, v117, v34
	v_fma_f32 v74, v33, v121, v39
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v0, v0, v1, s2
	v_cndmask_b32_e64 v19, v20, v55, s2
	v_cndmask_b32_e64 v1, v28, v12, s2
	v_cndmask_b32_e64 v20, v37, v72, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v63, v67, 8, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v58, v60, v106, v25
	v_fma_f32 v60, v65, v108, v29
	v_fma_f32 v65, v4, v110, v68
	v_fma_f32 v69, v15, v114, v82
	v_fma_f32 v71, v23, v118, v35
	v_fma_f32 v47, v47, v122, v40
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v2, v44, s2
	v_cndmask_b32_e64 v4, v3, v49, s2
	v_cndmask_b32_e64 v21, v21, v56, s2
	v_cndmask_b32_e64 v23, v22, v57, s2
	v_cndmask_b32_e64 v3, v80, v66, s2
	v_cndmask_b32_e64 v22, v38, v73, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v93, v143, v93, v43
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v64, v67, 16, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v75, v11, v126, v36
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v11, v5, v51, s2
	v_cndmask_b32_e64 v27, v24, v59, s2
	v_cndmask_b32_e64 v5, v30, v14, s2
	v_cndmask_b32_e64 v24, v39, v74, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v62, v[0:1], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v63, v[2:3], v[21:22] offset1:2
	v_lshlrev_b32_e32 v1, 6, v140
	v_cndmask_b32_e64 v2, 0x840, 0, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v6, v6, v50, s2
	v_cndmask_b32_e64 v15, v7, v53, s2
	v_cndmask_b32_e64 v25, v25, v58, s2
	v_cndmask_b32_e64 v31, v26, v61, s2
	v_cndmask_b32_e64 v7, v82, v69, s2
	v_cndmask_b32_e64 v26, v40, v47, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v0, v67, 24, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v43, v43, v93, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v64, v[4:5], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v0, v[6:7], v[25:26] offset1:2
	v_and_b32_e32 v0, 0x700, v9
	v_lshlrev_b32_e32 v3, 2, v138
	v_xor_b32_e32 v1, v2, v1
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v16, v16, v115, v32
	v_fma_f32 v45, v45, v123, v41
	v_fma_f32 v18, v18, v116, v84
	v_fma_f32 v48, v48, v124, v42
	v_fma_f32 v46, v46, v125, v43
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v19, v0, v3, v1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v12, v32, v16, s2
	v_cndmask_b32_e64 v28, v41, v45, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v2, v67, 32, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v13, v17, v52, s2
	v_cndmask_b32_e64 v29, v29, v60, s2
	v_cndmask_b32_e64 v14, v84, v18, s2
	v_cndmask_b32_e64 v30, v42, v48, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v4, v67, 40, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v16, v34, v70, s2
	v_cndmask_b32_e64 v32, v43, v46, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v5, v67, 48, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v17, v8, v54, s2
	v_cndmask_b32_e64 v33, v68, v65, s2
	v_cndmask_b32_e64 v18, v35, v71, s2
	v_cndmask_b32_e64 v34, v36, v75, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v6, v67, 56, 0
	v_add_nc_u32_e32 v0, 0, v19
	ds_store_2addr_stride64_b64 v2, v[11:12], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v4, v[13:14], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v5, v[15:16], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v6, v[17:18], v[33:34] offset1:2
	v_xad_u32 v4, 0x1008, v19, 0
	s_waitcnt lgkmcnt(0)
	v_xad_u32 v8, 0x2010, v19, 0
	s_barrier
	ds_load_2addr_b64 v[0:3], v0 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	v_xad_u32 v16, 0x4020, v19, 0
	v_xad_u32 v12, 0x3018, v19, 0
	v_xad_u32 v20, 0x5028, v19, 0
	v_xad_u32 v24, 0x6030, v19, 0
	ds_load_2addr_b64 v[8:11], v8 offset1:16
	v_xad_u32 v28, 0x7038, v19, 0
	ds_load_2addr_b64 v[16:19], v16 offset1:16
	ds_load_2addr_b64 v[20:23], v20 offset1:16
	ds_load_2addr_b64 v[24:27], v24 offset1:16
	ds_load_2addr_b64 v[12:15], v12 offset1:16
	v_lshlrev_b32_e32 v32, 2, v95
	v_add_lshl_u32 v33, v95, s27, 2
	ds_load_2addr_b64 v[28:31], v28 offset1:16
	s_mov_b32 s27, s15
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v33, s[24:27], 0 offen
	v_add_lshl_u32 v0, v95, s37, 2
	v_add_lshl_u32 v4, v95, s31, 2
	v_add_lshl_u32 v32, v95, s36, 2
	v_add_lshl_u32 v33, v95, s30, 2
	v_add_lshl_u32 v34, v95, s29, 2
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_atomic_add_f32 v12, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v16, v32, s[24:27], 0 offen
	buffer_atomic_add_f32 v20, v33, s[24:27], 0 offen
	buffer_atomic_add_f32 v24, v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v95, s28, 2
	v_add_lshl_u32 v4, v95, s34, 2
	v_add_lshl_u32 v8, v95, s23, 2
	v_add_lshl_u32 v12, v95, s22, 2
	v_add_lshl_u32 v16, v95, s21, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v12, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v16, s[24:27], 0 offen
	v_add_lshl_u32 v0, v95, s20, 2
	v_add_lshl_u32 v2, v95, s19, 2
	v_add_lshl_u32 v4, v95, s18, 2
	v_add_lshl_u32 v6, v95, s17, 2
	v_add_lshl_u32 v8, v95, s33, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v22, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v26, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v30, v6, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v8, s[24:27], 0 offen
	v_add_lshl_u32 v0, v95, s16, 2
	v_add_lshl_u32 v1, v95, s13, 2
	v_add_lshl_u32 v2, v95, s12, 2
	v_add_lshl_u32 v4, v95, s11, 2
	v_add_lshl_u32 v6, v95, s10, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v6, s[24:27], 0 offen
	v_add_lshl_u32 v0, v95, s9, 2
	v_add_lshl_u32 v1, v95, s8, 2
	v_add_lshl_u32 v2, v95, s7, 2
	v_add_lshl_u32 v4, v95, s6, 2
	v_add_lshl_u32 v5, v95, s5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, v95, s4, 2
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s2, s35, 60
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v95, s1, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s3, s35, 62
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v95, s0, 2
	v_add_lshl_u32 v3, v95, s2, 2
	v_add_lshl_u32 v4, v95, s3, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v19, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v23, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v27, v3, s[24:27], 0 offen
	buffer_atomic_add_f32 v31, v4, s[24:27], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 200
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8236
; TotalNumSgprs: 47
; NumVgprs: 200
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	387                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     200
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
