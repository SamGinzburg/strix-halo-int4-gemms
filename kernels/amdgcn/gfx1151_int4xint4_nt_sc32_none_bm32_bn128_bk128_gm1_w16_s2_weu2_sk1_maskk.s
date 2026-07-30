	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s10, s2
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v3, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v11, 4, v0
	v_and_b32_e32 v9, 15, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v12, 2, v0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_bfe_i32 v7, v0, 5, 1
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v10, 12, v3
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v8, 0x17f, v0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v3, 0x77c, v3
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v38, 0xe0, v0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v7, 0x88, v7
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_bfe_u32 v39, v0, 4, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v41, 16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v3, v7, v3
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v7, 1, v38
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v31, v41, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v37, 0, v3
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v14, v39, v7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	v_rcp_iflag_f32_e32 v1, s9
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s9, s11
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s16, s8, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s6, s6, s16
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s16, s5
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s6, s6, 1
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s17, s6
	s_cvt_f32_u32 s8, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_sub_i32 s10, 0, s17
	s_mov_b32 s11, 0x31027000
	s_mul_i32 s10, s10, s18
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s27, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_hi_u32 s5, s18, s10
	s_abs_i32 s10, s2
	s_add_i32 s18, s18, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s18
	s_xor_b32 s18, s2, s6
	s_mul_i32 s20, s5, s17
	s_ashr_i32 s19, s18, 31
	s_sub_i32 s18, s10, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s18, s17
	s_cmp_ge_u32 s18, s17
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s18, s21, s18
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s18, s17
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s26, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cselect_b32 s5, s20, s5
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s23, s3, 4
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s33, s5, s19
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s17, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s3, s33, s19
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s34, s4, 31
.Ltmp13:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s6, s3, s6
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s17
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s6
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s18, s4, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v5, s23, v9
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s2, 5
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[1:2], null, s18, v12, v[10:11]
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_or_b32_e32 v6, s6, v11
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v4, s23, v10
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s5, s34, 31
.Ltmp15:
	.loc	1 171 51                        ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s2, s5, 27
.Ltmp17:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mul_lo_u32 v2, v6, s18
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s18, v5
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s22, s3, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s30, s34, s2
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v4
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 16, v4
	.loc	1 191 34 is_stmt 1              ; generate_amdgcn.py:191:34
	s_mul_i32 s2, s22, s18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s34, 31
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add_nc_u32_e32 v4, v2, v5
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add3_u32 v1, s23, s2, v1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s5, s4, s5
	s_and_b32 s16, s3, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v1, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u8 v4, v4, s[8:11], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b32 v5, v5, s[24:27], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_bfe_i32 v6, v0, 7, 1
	s_mov_b32 s5, 0
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s34, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v6, 0x88, v6
	v_xor_b32_e32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v36, 0, v6
	s_waitcnt vmcnt(1)
	ds_store_b8 v36, v4 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v37, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[14:15], s[10:11]
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow58
	s_load_b64 s[20:21], s[0:1], 0x20
	v_bfe_i32 v3, v0, 3, 1
	v_or_b32_e32 v22, 2, v14
	v_or_b32_e32 v21, 4, v14
	v_or_b32_e32 v18, 6, v14
	v_or_b32_e32 v16, 8, v14
	v_or_b32_e32 v20, 10, v14
	v_or_b32_e32 v19, 12, v14
	v_or_b32_e32 v17, 14, v14
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v32, 0x108, v0
	v_or_b32_e32 v15, s6, v31
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v33, 4, v0
	v_dual_mov_b32 v23, 0 :: v_dual_lshlrev_b32 v34, 3, v38
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v35, 0x88, v3
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v29, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_ashr_i32 s1, s30, 5
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	.loc	1 170 22 is_stmt 1              ; generate_amdgcn.py:170:22
	s_add_i32 s0, s23, 16
	v_mul_lo_u32 v3, v15, s1
	v_or_b32_e32 v7, s0, v9
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v1, 16, v1
	v_or_b32_e32 v4, s22, v14
	v_or_b32_e32 v5, s22, v22
	v_or_b32_e32 v6, s22, v21
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v7
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add_nc_u32_e32 v2, v2, v7
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v3, 1, v3
	v_or_b32_e32 v8, s22, v18
	v_or_b32_e32 v23, s22, v16
	v_or_b32_e32 v24, s22, v20
	v_or_b32_e32 v25, s22, v19
	v_or_b32_e32 v7, s22, v17
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v53, v3, s[12:15], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u8 v54, v2, s[8:11], 0 offen
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v2, 1, v4
	v_lshlrev_b32_e32 v3, 1, v5
	v_lshlrev_b32_e32 v4, 1, v6
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	v_lshlrev_b32_e32 v5, 1, v8
	v_lshlrev_b32_e32 v6, 1, v23
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v8, 1, v24
	v_lshlrev_b32_e32 v23, 1, v25
	v_lshlrev_b32_e32 v7, 1, v7
	s_clause 0x7
	buffer_load_u16 v55, v2, s[28:31], 0 offen
	buffer_load_u16 v56, v3, s[28:31], 0 offen
	buffer_load_u16 v57, v4, s[28:31], 0 offen
	buffer_load_u16 v58, v5, s[28:31], 0 offen
	buffer_load_u16 v59, v6, s[28:31], 0 offen
	buffer_load_u16 v60, v8, s[28:31], 0 offen
	buffer_load_u16 v61, v23, s[28:31], 0 offen
	buffer_load_u16 v62, v7, s[28:31], 0 offen
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v2, s0, v10
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v2
	v_lshl_or_b32 v2, v9, 4, v32
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	v_xor_b32_e32 v3, 8, v2
	.loc	1 191 26 is_stmt 1              ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v40, 0, v2
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_lt_u32 s34, 0x60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v43, 0, v3
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b32 v63, v1, s[24:27], 0 offen
	v_and_b32_e32 v1, 0x70, v33
	v_or3_b32 v1, v1, v34, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v4, 8, v1
	v_add_nc_u32_e32 v42, 0, v1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[45:46], v40 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[47:48], v42
	v_add_nc_u32_e32 v44, 0, v4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[49:50], v43 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[51:52], v44
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v1, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b8 v36, v54 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v37, v63
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[23:30], v[47:48], v[45:46], v[1:8] neg_lo:[1,1,0]
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_lshlrev_b32_e32 v45, 16, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v47, 16, v56
	v_lshlrev_b32_e32 v53, 16, v62
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[23:30], v[51:52], v[49:50], v[23:30] neg_lo:[1,1,0]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v49, 16, v58
	v_lshlrev_b32_e32 v50, 16, v59
	v_lshlrev_b32_e32 v51, 16, v60
	v_lshlrev_b32_e32 v52, 16, v61
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v46, 16, v55
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v55, v45, v23 :: v_dual_lshlrev_b32 v48, 16, v57
	v_mul_f32_e32 v23, v45, v24
	v_mul_f32_e32 v25, v45, v25
	v_mul_f32_e32 v26, v45, v26
	v_mul_f32_e32 v56, v45, v27
	v_mul_f32_e32 v57, v45, v28
	v_mul_f32_e32 v58, v45, v29
	v_mul_f32_e32 v29, v45, v30
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v23, v47, 0
	v_fma_f32 v24, v55, v46, 0
	v_fma_f32 v27, v26, v49, 0
	v_fma_f32 v28, v25, v48, 0
	v_fma_f32 v25, v57, v51, 0
	v_fma_f32 v26, v56, v50, 0
	v_fma_f32 v29, v29, v53, 0
	v_fma_f32 v30, v58, v52, 0
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.peel.next
	v_lshl_or_b32 v12, s33, 7, v12
	s_lshl_b32 s0, s33, 8
	s_lshl_b32 s5, s7, 1
	v_add3_u32 v41, s6, v41, v9
	v_add3_u32 v38, s5, s0, v38
	s_lshl_b32 s0, s19, 7
	v_sub_nc_u32_e32 v45, s18, v10
	v_subrev_nc_u32_e32 v12, s0, v12
	v_add_nc_u32_e32 v46, s6, v11
	v_mul_lo_u32 v41, s1, v41
	s_lshl_b32 s0, s19, 8
	v_lshlrev_b32_e32 v39, 1, v39
	v_mad_u64_u32 v[10:11], null, s18, v12, v[10:11]
	v_subrev_nc_u32_e32 v38, s0, v38
	s_add_i32 s19, s23, 32
	s_add_i32 s23, s1, -2
	s_mov_b32 s28, s16
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	s_delay_alu instid0(VALU_DEP_2)
	v_mad_u64_u32 v[11:12], null, s18, v46, v[9:10]
	v_lshl_add_u32 v12, v41, 1, 2
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v41, v12, s[12:15], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s19, v45
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s23, s23, -1
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_add_nc_u32_e32 v46, s19, v9
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v47, s19, v11
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v48, s19, v10
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v49, v39, v38
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s19, s19, 16
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s0, s18, v46
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 s0, s0, s4
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s23, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e64 v46, 0x80000000, v47, s0
	buffer_load_u8 v62, v46, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v46, 0x80000000, v48, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v63, v49, s[28:31], 0 offen
	buffer_load_u16 v64, v49, s[28:31], 0 offen offset:4
	buffer_load_u16 v65, v49, s[28:31], 0 offen offset:8
	buffer_load_u16 v66, v49, s[28:31], 0 offen offset:12
	buffer_load_u16 v67, v49, s[28:31], 0 offen offset:16
	buffer_load_u16 v68, v49, s[28:31], 0 offen offset:20
	buffer_load_u16 v69, v49, s[28:31], 0 offen offset:24
	buffer_load_u16 v70, v49, s[28:31], 0 offen offset:28
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[54:55], v42
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[56:57], v40 offset:2048
	ds_load_b64 v[58:59], v43 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[60:61], v44
	buffer_load_b32 v71, v46, s[24:27], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b8 v36, v62 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v37, v71
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[54:55], v[56:57], v[1:8] neg_lo:[1,1,0]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v55, 16, v65
	v_lshlrev_b32_e32 v54, 16, v64
	v_lshlrev_b32_e32 v56, 16, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[60:61], v[58:59], v[46:53] neg_lo:[1,1,0]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v57, 16, v67
	v_lshlrev_b32_e32 v58, 16, v68
	v_lshlrev_b32_e32 v59, 16, v69
	v_lshlrev_b32_e32 v60, 16, v70
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v52, v52
	v_mul_f32_e32 v48, v41, v48
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v28, v48, v55
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v51, v41, v51 :: v_dual_add_nc_u32 v38, s5, v38
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v12, 2, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v46, v41, v46
	v_mul_f32_e32 v47, v41, v47
	v_mul_f32_e32 v49, v41, v49
	v_mul_f32_e32 v50, v41, v50
	v_mul_f32_e32 v52, v41, v52
	v_mul_f32_e32 v41, v41, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v53, 16, v63
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v47, v54, v23
	v_fma_f32 v27, v49, v56, v27
	v_fma_f32 v25, v51, v58, v25
	v_fmac_f32_e32 v26, v50, v57
	v_fmac_f32_e32 v24, v46, v53
	v_fma_f32 v29, v41, v60, v29
	v_fmac_f32_e32 v30, v52, v59
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b64 s[28:29], s[12:13]
.LBB0_8:                                ; %._crit_edge
	.loc	1 168 26 is_stmt 1              ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s1, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s0, s1, -1
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s1, s6, s1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s0, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_mov_b32 s30, s14
	.loc	1 168 26 is_stmt 0              ; generate_amdgcn.py:168:26
	s_add_i32 s1, s1, s0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_mov_b32 s31, s15
	v_mov_b32_e32 v4, 0
	v_add_lshl_u32 v1, s1, v1, 1
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v5, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v8, v1, s[28:31], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v2, v9, 4, v32
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v31, 0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v1, 0x70, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v4, 0, v2
	v_xad_u32 v7, v2, 8, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v32, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_or3_b32 v1, v1, v34, v35
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v33, v31
	v_mov_b32_e32 v35, v31
	v_mov_b32_e32 v36, v31
	v_mov_b32_e32 v37, v31
	v_dual_mov_b32 v38, v31 :: v_dual_add_nc_u32 v3, 0, v1
	v_mov_b32_e32 v34, v31
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xad_u32 v5, v1, 8, 0
	ds_load_b64 v[1:2], v3
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[3:4], v4 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[5:6], v5
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[9:10], v7 offset:2048
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[1:2], v[3:4], v[31:38] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[5:6], v[9:10], v[31:38] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v13, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v32
	v_cvt_f32_i32_e32 v6, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v34
	v_cvt_f32_i32_e32 v1, v35
	v_cvt_f32_i32_e32 v2, v36
	v_cvt_f32_i32_e32 v3, v37
	v_cvt_f32_i32_e32 v5, v38
.LBB0_10:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s7
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s17, s17, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s22, s0
	s_mov_b32 s19, 0x31027000
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v9, s0, v14, 1
	v_add_lshl_u32 v10, s0, v22, 1
	v_add_lshl_u32 v11, s0, v21, 1
	v_add_lshl_u32 v12, s0, v18, 1
	v_add_lshl_u32 v14, s0, v16, 1
	v_add_lshl_u32 v16, s0, v20, 1
	v_add_lshl_u32 v18, s0, v19, 1
	v_add_lshl_u32 v17, s0, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	buffer_load_u16 v12, v12, s[16:19], 0 offen
	buffer_load_u16 v14, v14, s[16:19], 0 offen
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v19.h, v8.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v8, 1, v0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_dual_mov_b32 v21, 0x7632 :: v_dual_and_b32 v0, 16, v0
	v_mov_b16_e32 v22.h, v19.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v4, v4, v19
	v_mul_f32_e32 v7, v7, v19
	v_dual_mul_f32 v1, v1, v19 :: v_dual_mov_b32 v20, 0x5410
	v_mul_f32_e32 v13, v13, v19
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v32.h, v19.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v3, v3, v19
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v31.h, v19.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v6, v6, v19
	v_mul_f32_e32 v5, v5, v19
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v36.h, v19.l
	v_mov_b16_e32 v33.h, v19.l
	v_mov_b16_e32 v34.h, v19.l
	v_mov_b16_e32 v35.h, v19.l
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v15, v15, s7
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, s19
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v13, v9, v24
	v_fma_f32 v4, v4, v10, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v7, v12, v27
	v_fma_f32 v1, v1, v14, v26
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v24, v9, s2
	v_cndmask_b32_e64 v4, v23, v4, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v27, v7, s2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v5, v17, v29
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v31.l, v9.h
	v_mov_b16_e32 v22.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b16_e32 v32.l, v7.h
	v_cmp_o_f32_e64 s1, v7, v7
	v_cmp_o_f32_e64 s0, v9, v9
	v_and_b32_e32 v10, 1, v22
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v29, v5, s2
	v_cndmask_b32_e64 v1, v26, v1, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v4, v4, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v1.h
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v14, 1, v32
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v13, 1, v35
	v_add3_u32 v7, v7, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v6, v11, v28
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v1, v1, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_and_b32_e32 v11, 1, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v28, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v9, v9, v11, 0x7fff
	v_mov_b16_e32 v33.l, v6.h
	v_cndmask_b32_e32 v11, 0x3276, v21, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v10, 1, v33
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v3, v18, v30
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v30, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v36.l, v3.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v2, v2, v19
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.h, v19.l
	v_mov_b16_e32 v19.l, v5.h
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v2, v2, v16, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 1, v19
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v25, v2, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s2, v6, v6
	v_add3_u32 v6, v6, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v0, v5, v0, 0x7fff
	v_cndmask_b32_e32 v10, 0x1054, v20, vcc_lo
	v_mov_b16_e32 v34.l, v2.h
	v_cmp_o_f32_e64 s3, v2, v2
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_lshl_or_b32 v5, v11, 8, v11
	v_and_b32_e32 v12, 1, v34
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_and_or_b32 v6, 0x78, v8, s22
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s22, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v5, 0x760076, v5
	v_add3_u32 v2, v2, v12, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s4
	v_and_b32_e32 v1, 1, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	v_add3_u32 v1, v3, v1, 0x7fff
	v_lshl_or_b32 v3, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v9, v2, v4, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x540054, v3
	v_dual_cndmask_b32 v1, v4, v2 :: v_dual_cndmask_b32 v4, v7, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v5, 4, v5
	v_cndmask_b32_e32 v5, v0, v7, vcc_lo
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v1, v9, v2
	v_perm_b32 v1, v1, v9, v3
	v_perm_b32 v2, v4, v5, v2
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v6, v15, 1
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 72
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 28
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 72
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3496
; TotalNumSgprs: 37
; NumVgprs: 72
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 72
; Occupancy: 16
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     72
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
