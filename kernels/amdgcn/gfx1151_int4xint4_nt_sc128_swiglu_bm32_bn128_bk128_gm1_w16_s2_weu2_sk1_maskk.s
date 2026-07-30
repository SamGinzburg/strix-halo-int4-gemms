	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v9, 15, v0
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v16, 3, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v34, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v2, 56, v16
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v5, 64, v4
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
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
	s_sub_i32 s19, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s6, s6, s19
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s19, s5
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s20, s6, 1
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s6, s20
	s_abs_i32 s17, s2
	s_cvt_f32_u32 s16, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	v_readfirstlane_b32 s16, v1
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v1, 2, v9
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s31, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s20
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s6
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s30, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s21, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s21, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s17, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s18, s5, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s17
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s18, s16
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s6, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s17, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s20, s5, s20
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v12, s6, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[6:7], null, s17, v3, v[1:2]
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s20
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v13, s6, v2
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s22, s21, s3
.Ltmp19:
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[10:11], null, s17, v5, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s19
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v12
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 64, v12
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s33, s22, 7
.Ltmp21:
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_add_i32 s22, s26, s7
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s27, s2, 5
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s17, v13
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 64, v13
	.loc	1 191 34 is_stmt 1              ; generate_amdgcn.py:191:34
	s_mul_i32 s20, s26, s17
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_mul_i32 s19, s22, s17
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s22, s27, s17
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	s_add_i32 s20, s20, s6
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_add_i32 s19, s19, s6
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v6, s6, s22, v6
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s23, s3, vcc_lo
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v11, s20, v10
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	v_add_nc_u32_e32 v10, s19, v10
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s5, s4, s5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s23
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v17, 0x80000000, v10, vcc_lo
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[7:8], null, s17, v4, v[2:3]
	.loc	1 191 26 is_stmt 0              ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v12, 0x80000000, v11, vcc_lo
	s_mov_b32 s5, -1
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s21, 0xff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v8, s20, v7
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	v_add_nc_u32_e32 v7, s19, v7
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_b32 v20, v6, s[8:11], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x3
	buffer_load_b64 v[10:11], v8, s[28:31], 0 offen
	buffer_load_b64 v[12:13], v12, s[28:31], 0 offen
	buffer_load_b64 v[14:15], v7, s[28:31], 0 offen
	buffer_load_b64 v[18:19], v17, s[28:31], 0 offen
	v_lshrrev_b32_e32 v17, 1, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshlrev_b32_e32 v6, 2, v0
	v_lshrrev_b32_e32 v7, 2, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v8, 56, v17
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v7, v6, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v8, v16, v8
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v45, 0, v7
	v_lshlrev_b32_e32 v7, 6, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v46, 0, v8
	v_lshlrev_b32_e32 v8, 5, v34
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(4)
	ds_store_b32 v45, v20 offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v46, v[10:11], v[12:13] offset1:8
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v46, v[14:15], v[18:19] offset0:16 offset1:24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v13, 56, v6
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_or_b32 v10, 0x438, v6, v7
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_or3_b32 v36, v8, v13, v7
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v11, 8, v10
	v_xor_b32_e32 v12, 16, v10
	v_xor_b32_e32 v14, 24, v10
	v_xor_b32_e32 v13, 32, v10
	v_xor_b32_e32 v15, 40, v10
	v_xor_b32_e32 v16, 48, v10
	v_xor_b32_e32 v41, 56, v10
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v37, 8, v36
	v_xor_b32_e32 v38, 16, v36
	v_xor_b32_e32 v39, 24, v36
	v_xor_b32_e32 v40, 32, v36
	v_xor_b32_e32 v42, 40, v36
	v_xor_b32_e32 v43, 48, v36
	v_xor_b32_e32 v44, 56, v36
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
.LBB0_3:                                ; %Flow175
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v47, 16, v3
	v_bfe_u32 v35, v0, 4, 1
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v31, 0
	s_lshl_b32 s1, s7, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s33, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v10, 0x438, v6, v7
	v_and_b32_e32 v6, 56, v6
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_lshl_or_b32 v20, s18, 8, v34
	s_lshl_b32 s18, s18, 7
	s_lshl_b32 s20, s16, 8
	s_add_i32 s21, s7, s18
	v_or3_b32 v36, v8, v6, v7
	v_add_nc_u32_e32 v6, s1, v20
	v_add_nc_u32_e32 v7, s21, v4
	v_add_nc_u32_e32 v8, s21, v5
	s_lshl_b32 s16, s16, 7
	v_or_b32_e32 v18, s18, v5
	v_subrev_nc_u32_e32 v51, s20, v6
	v_add3_u32 v6, s27, v47, v9
	v_subrev_nc_u32_e32 v8, s16, v8
	s_max_i32 s19, s0, 1
	v_subrev_nc_u32_e32 v52, s20, v20
	s_lshl_b32 s34, s19, 6
	v_mul_lo_u32 v21, s33, v6
	v_subrev_nc_u32_e32 v6, s16, v7
	v_or_b32_e32 v7, s18, v4
	v_xor_b32_e32 v42, 40, v36
	v_xor_b32_e32 v43, 48, v36
	v_xor_b32_e32 v44, 56, v36
	v_mad_u64_u32 v[4:5], null, s17, v6, s[6:7]
	v_subrev_nc_u32_e32 v7, s16, v7
	v_mad_u64_u32 v[5:6], null, s17, v8, s[6:7]
	v_subrev_nc_u32_e32 v8, s16, v18
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[6:7], null, s17, v7, s[6:7]
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v3, s27, v3
	v_mad_u64_u32 v[7:8], null, s17, v8, s[6:7]
	v_sub_nc_u32_e32 v48, s17, v1
	v_sub_nc_u32_e32 v49, s17, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[18:19], null, s17, v3, s[6:7]
	s_mov_b32 s17, s16
	v_lshlrev_b32_e32 v50, 1, v35
	v_add3_u32 v54, v4, v2, 64
	v_add3_u32 v55, v5, v2, 64
	v_add3_u32 v56, v6, v2, 64
	v_add3_u32 v57, v7, v2, 64
	v_add3_u32 v58, v18, v1, 64
	v_mov_b32_e32 v1, s16
	v_xor_b32_e32 v11, 8, v10
	v_xor_b32_e32 v12, 16, v10
	v_xor_b32_e32 v14, 24, v10
	v_xor_b32_e32 v13, 32, v10
	v_xor_b32_e32 v15, 40, v10
	v_xor_b32_e32 v16, 48, v10
	v_xor_b32_e32 v41, 56, v10
	v_xor_b32_e32 v37, 8, v36
	v_xor_b32_e32 v38, 16, v36
	v_xor_b32_e32 v39, 24, v36
	v_xor_b32_e32 v40, 32, v36
	v_dual_mov_b32 v4, s19 :: v_dual_lshlrev_b32 v53, 1, v21
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v59, 0, v42
	v_mov_b32_e32 v6, s21
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v60, 0, v43
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v61, 0, v44
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v5, s20
	v_mov_b32_e32 v7, s22
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s5, s7, 2
	s_add_i32 s6, s6, 64
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v92, v53, s[44:47], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_add_i32 s12, s6, s16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v62, s16, v58
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v48
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_add_nc_u32 v97, v50, v52
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v49
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v52, s5, v52
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_b32 v104, v62, s[8:11], 0 offen
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s4
	v_add_nc_u32_e32 v63, 0, v36
	v_add_nc_u32_e32 v64, 0, v10
	v_add_nc_u32_e32 v65, 0, v11
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v107, v97, s[40:43], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v92, 16, v92
	v_add_nc_u32_e32 v66, 0, v37
	v_add_nc_u32_e32 v67, 0, v12
	v_add_nc_u32_e32 v68, 0, v14
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[76:79], v63 offset1:16
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	ds_load_b64 v[84:85], v64 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[80:83], v66 offset1:16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[86:87], v65 offset:16384
	ds_load_b64 v[88:89], v67 offset:16384
	ds_load_b64 v[90:91], v68 offset:16384
	v_add_nc_u32_e32 v99, 0, v38
	v_add_nc_u32_e32 v100, 0, v39
	v_add_nc_u32_e32 v101, 0, v40
	v_add_nc_u32_e32 v102, 0, v13
	v_add_nc_u32_e32 v103, 0, v15
	v_add_nc_u32_e32 v105, 0, v16
	v_add_nc_u32_e32 v106, 0, v41
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[76:77], v[84:85], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[78:79], v[84:85], v[1:8] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[80:81], v[86:87], v[62:69] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[78:81], v99 offset1:16
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[82:83], v[86:87], v[70:77] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[78:79], v[88:89], v[62:69] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[88:89], v[70:77] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[78:81], v100 offset1:16
	ds_load_2addr_stride64_b64 v[82:85], v101 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[78:79], v[90:91], v[62:69] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[90:91], v[70:77] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[78:79], v102 offset:16384
	ds_load_b64 v[86:87], v103 offset:16384
	ds_load_b64 v[88:89], v105 offset:16384
	ds_load_b64 v[90:91], v106 offset:16384
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[82:83], v[78:79], v[62:69] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[78:79], v[70:77] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[78:81], v59 offset1:16
	ds_load_2addr_stride64_b64 v[82:85], v60 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[78:79], v[86:87], v[62:69] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[86:87], v[70:77] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[78:81], v61 offset1:16
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v86, v97, s[40:43], 0 offen offset:4
	buffer_load_u16 v87, v97, s[40:43], 0 offen offset:8
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[82:83], v[88:89], v[62:69] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[88:89], v[70:77] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[78:79], v[90:91], v[62:69] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[90:91], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v78, v62
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v93, s16, v56
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v80, v64
	v_cvt_f32_i32_e32 v79, v63
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v94, s16, v57
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v64, v92, v78
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_add_nc_u32 v98, v50, v51
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0xc
	buffer_load_u16 v82, v97, s[40:43], 0 offen offset:12
	buffer_load_u16 v83, v97, s[40:43], 0 offen offset:16
	buffer_load_u16 v84, v97, s[40:43], 0 offen offset:20
	buffer_load_u16 v85, v97, s[40:43], 0 offen offset:24
	buffer_load_u16 v88, v97, s[40:43], 0 offen offset:28
	buffer_load_u16 v89, v98, s[40:43], 0 offen
	buffer_load_u16 v97, v98, s[40:43], 0 offen offset:4
	buffer_load_u16 v99, v98, s[40:43], 0 offen offset:8
	buffer_load_u16 v100, v98, s[40:43], 0 offen offset:12
	buffer_load_u16 v101, v98, s[40:43], 0 offen offset:16
	buffer_load_u16 v102, v98, s[40:43], 0 offen offset:20
	buffer_load_u16 v103, v98, s[40:43], 0 offen offset:24
	buffer_load_u16 v98, v98, s[40:43], 0 offen offset:28
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b64 v[62:63], v93, s[28:31], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v78, v92, v79 :: v_dual_add_nc_u32 v95, s16, v54
	v_mul_f32_e32 v79, v92, v80
	v_cvt_f32_i32_e32 v81, v65
	v_cvt_f32_i32_e32 v90, v66
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v91, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v88, 16, v88
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v84, 16, v84
	v_lshlrev_b32_e32 v87, 16, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v29, v79, v87
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_add_nc_u32_e32 v96, s16, v55
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v76, v92, v76 :: v_dual_lshlrev_b32 v65, 16, v107
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v80, v92, v81
	v_dual_mul_f32 v81, v92, v90 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v33, v64, v65
	.loc	1 191 26 is_stmt 1              ; generate_amdgcn.py:191:26
	s_clause 0x1
	buffer_load_b64 v[64:65], v94, s[28:31], 0 offen
	buffer_load_b64 v[66:67], v95, s[28:31], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v90, v92, v91
	v_mul_f32_e32 v91, v92, v69
	v_mul_f32_e32 v93, v92, v68
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	buffer_load_b64 v[68:69], v96, s[28:31], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v71, v92, v71
	v_mul_f32_e32 v70, v92, v70
	v_mul_f32_e32 v73, v92, v73
	v_mul_f32_e32 v72, v92, v72
	v_mul_f32_e32 v75, v92, v75
	v_mul_f32_e32 v74, v92, v74
	v_mul_f32_e32 v77, v92, v77
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v95, 16, v99
	v_lshlrev_b32_e32 v92, 16, v97
	v_lshlrev_b32_e32 v97, 16, v101
	v_lshlrev_b32_e32 v94, 16, v100
	v_lshlrev_b32_e32 v99, 16, v103
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v19, v91, v88 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v23, v74, v97
	v_dual_fmac_f32 v28, v73, v94 :: v_dual_lshlrev_b32 v89, 16, v89
	v_fmac_f32_e32 v20, v76, v99
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v22, v93, v85 :: v_dual_lshlrev_b32 v83, 16, v83
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v86, 16, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v18, v70, v89 :: v_dual_fmac_f32 v27, v72, v95
	v_dual_fmac_f32 v31, v71, v92 :: v_dual_lshlrev_b32 v96, 16, v102
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v30, v80, v82 :: v_dual_add_nc_u32 v53, 2, v53
	v_fmac_f32_e32 v25, v81, v83
	v_dual_fmac_f32 v32, v78, v86 :: v_dual_add_nc_u32 v51, s5, v51
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v24, v75, v96 :: v_dual_fmac_f32 v21, v77, v98
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v26, v90, v84
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s16, s16, 64
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s34, s16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_barrier
	ds_store_b32 v45, v104 offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v46, v[62:63], v[64:65] offset1:8
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v46, v[66:67], v[68:69] offset0:16 offset1:24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v52, v47, v9
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s4, s27, s33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s3, s0, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v2, 0, v11
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s4, s4, s3
	v_mul_lo_u32 v1, s33, v52
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v3, 0, v12
	v_add_nc_u32_e32 v7, 0, v14
	v_add_nc_u32_e32 v57, 0, v40
	v_add_nc_u32_e32 v59, 0, v38
	v_add_nc_u32_e32 v61, 0, v36
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v38, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s4, v1, 1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v8, 0, v15
	v_add_nc_u32_e32 v11, 0, v16
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v54, 0, v44
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v55, 0, v43
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v56, 0, v42
	v_mov_b32_e32 v44, 0
	buffer_load_u16 v53, v1, s[36:39], 0 offen
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v1, 0, v10
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[9:10], v1 offset:16384
	ds_load_b64 v[5:6], v2 offset:16384
	ds_load_b64 v[3:4], v3 offset:16384
	ds_load_b64 v[1:2], v7 offset:16384
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v7, 0, v13
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v45, 0, 1, s2
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[15:16], v7 offset:16384
	ds_load_b64 v[13:14], v8 offset:16384
	ds_load_b64 v[11:12], v11 offset:16384
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_b64 v[7:8], v41 offset:16384
	v_mov_b32_e32 v41, 0
	v_cmp_ne_u32_e64 s0, 1, v45
	v_add_nc_u32_e32 v58, 0, v39
	v_add_nc_u32_e32 v60, 0, v37
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v39, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[36:37], v61
	ds_load_b64 v[62:63], v58
	ds_load_b64 v[38:39], v60
	ds_load_b64 v[50:51], v59
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v42, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v44, v42
	v_mov_b32_e32 v45, v42
	v_mov_b32_e32 v46, v42
	v_mov_b32_e32 v47, v42
	v_mov_b32_e32 v48, v42
	v_mov_b32_e32 v49, v42
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[36:37], v[9:10], v[42:49] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[36:37], v57
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[38:39], v[5:6], v[42:49] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[38:39], v56
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[50:51], v[3:4], v[42:49] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[50:51], v55
	ds_load_b64 v[64:65], v54
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[42:49], v[62:63], v[1:2], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[36:37], v[15:16], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[38:39], v[13:14], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[50:51], v[11:12], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[64:65], v[7:8], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v40, v42
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v36, v46
	v_cvt_f32_i32_e32 v38, v47
	v_cvt_f32_i32_e32 v37, v48
	v_cvt_f32_i32_e32 v39, v49
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v51, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[45:46], v61 offset:8192
	ds_load_b64 v[47:48], v60 offset:8192
	ds_load_b64 v[49:50], v59 offset:8192
	ds_load_b64 v[58:59], v58 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_mov_b32_e32 v61, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v62, v61
	v_mov_b32_e32 v63, v61
	v_mov_b32_e32 v64, v61
	v_mov_b32_e32 v65, v61
	v_mov_b32_e32 v66, v61
	v_mov_b32_e32 v67, v61
	v_mov_b32_e32 v68, v61
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[45:46], v[9:10], v[61:68] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[9:10], v57 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[47:48], v[5:6], v[61:68] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[5:6], v56 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[49:50], v[3:4], v[61:68] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[3:4], v55 offset:8192
	ds_load_b64 v[45:46], v54 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[58:59], v[1:2], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[9:10], v[15:16], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[5:6], v[13:14], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[3:4], v[11:12], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[45:46], v[7:8], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v41, v61
	v_cvt_f32_i32_e32 v50, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v63
	v_cvt_f32_i32_e32 v51, v64
	v_cvt_f32_i32_e32 v45, v65
	v_cvt_f32_i32_e32 v47, v66
	v_cvt_f32_i32_e32 v46, v67
	v_cvt_f32_i32_e32 v48, v68
.LBB0_10:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b32_e32 v1, 1, v34
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s3, s3, s1
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s26, s3
	s_mov_b32 s11, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_or_b32_e32 v1, v35, v1
	.loc	1 208 35                        ; generate_amdgcn.py:208:35
	s_add_i32 s1, s0, s7
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s8, s14
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v35.l, 0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v8, 14, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v9, s0, v1, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v10, s0, v2, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v11, s0, v3, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v3, s1, v3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v12, s0, v4, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v13, s0, v5, 1
	v_add_lshl_u32 v14, s0, v6, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v34, v1, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_add_lshl_u32 v4, s1, v5, 1
	v_add_lshl_u32 v5, s1, v6, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x2
	buffer_load_u16 v6, v1, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_add_lshl_u32 v16, s0, v8, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, s0, v7, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v1, s1, v7, 1
	v_add_lshl_u32 v7, s1, v8, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x5
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v16, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x5
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v16, v1, s[8:11], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v35.h, v53.l
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_or_b32_e32 v1, s27, v52
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	v_mov_b32_e32 v52, 0x5410
	v_mov_b16_e32 v54.h, v35.l
	v_mov_b16_e32 v57.h, v35.l
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v41, v41, v35
	v_mul_f32_e32 v50, v50, v35
	v_mul_f32_e32 v49, v49, v35
	v_mul_f32_e32 v45, v45, v35
	v_mul_f32_e32 v46, v46, v35
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v37, v37, v35
	v_mul_f32_e32 v39, v39, v35
	v_mul_f32_e32 v44, v44, v35
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v47, v47, v35
	v_mul_f32_e32 v51, v51, v35
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v43, v43, v35
	v_mul_f32_e32 v40, v40, v35
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_dual_mov_b32 v53, 0x7632 :: v_dual_and_b32 v0, 16, v0
	v_mov_b16_e32 v55.h, v35.l
	v_mov_b16_e32 v58.h, v35.l
	v_mov_b16_e32 v59.h, v35.l
	v_mov_b16_e32 v56.h, v35.l
	v_mov_b16_e32 v60.h, v35.l
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v34, v41, v34, v18
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v18, v34, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v2, v49, v2, v27
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v42, v42, v35 :: v_dual_lshlrev_b32 v9, 16, v9
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v6, v50, v6, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v27, v2, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v36, v36, v35
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v31, v6, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, 0xbfb8aa3b, v18 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v4, v45, v4, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v38, v38, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v16, v46, v16, v20
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v23, v4, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v48, v48, v35 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v20, v16, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v23, 0xbfb8aa3b, v4
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v8, v39, v8, v19
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v5, v47, v5, v24
	v_fma_f32 v3, v51, v3, v28
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v40, v9, v33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v20, v20
	v_mul_f32_e32 v19, 0xbfb8aa3b, v6
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v38, v14, v26
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v24, v5, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v11
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v43, v10, v32
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v26, v14, s2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v44, v12, v30
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v28, v3, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v20, v20, v27
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v15, v37, v15, v22
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v5
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v42, v11, v29
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v7, v48, v7, v21
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v33, v9, s2
	v_cndmask_b32_e64 v10, v32, v10, s2
	v_cndmask_b32_e64 v12, v30, v12, s2
	v_cndmask_b32_e64 v7, v21, v7, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v36, v13, v25
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v29, v11, s2
	v_cndmask_b32_e64 v15, v22, v15, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v25, v13, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_mul_f32_e32 v22, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cndmask_b32_e64 v24, 0, 0x42800000, s2
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v2
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_mul_f32_e32 v26, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_exp_f32_e32 v21, v21
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v26
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v26, 0, 0x42800000, s4
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v5
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s4
	v_ldexp_f32 v21, v21, v30
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v3
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_ldexp_f32 v25, v25, v33
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v7
	v_exp_f32_e32 v23, v23
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v22, v22
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_ldexp_f32 v19, v19, v28
	v_ldexp_f32 v24, v24, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v34, null, v21, v21, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v23, v23, v32
	v_ldexp_f32 v22, v22, v29
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v26, v26, v27
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v27, null, v20, v20, v18
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v23, 1.0, v23
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v31, v27
	v_div_scale_f32 v29, null, v19, v19, v6
	v_div_scale_f32 v32, null, v22, v22, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v37, null, v24, v24, v5
	v_div_scale_f32 v39, null, v23, v23, v4
	v_div_scale_f32 v43, null, v25, v25, v16
	v_fma_f32 v50, -v27, v31, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v44, v29
	v_rcp_f32_e32 v45, v32
	v_rcp_f32_e32 v46, v34
	v_fmac_f32_e32 v31, v50, v31
	v_div_scale_f32 v41, null, v26, v26, v7
	v_rcp_f32_e32 v47, v37
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v51, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v62, -v29, v44, 1.0
	v_div_scale_f32 v28, s0, v18, v20, v18
	v_div_scale_f32 v30, vcc_lo, v6, v19, v6
	v_fma_f32 v50, -v32, v45, 1.0
	v_fma_f32 v63, -v34, v46, 1.0
	v_fma_f32 v64, -v37, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v65, -v39, v48, 1.0
	v_fma_f32 v66, -v41, v49, 1.0
	v_fma_f32 v67, -v43, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v44, v62, v44 :: v_dual_fmac_f32 v47, v64, v47
	v_div_scale_f32 v33, s1, v3, v22, v3
	v_div_scale_f32 v36, s2, v2, v21, v2
	v_div_scale_f32 v40, s4, v4, v23, v4
	v_div_scale_f32 v42, s5, v7, v26, v7
	v_div_scale_f32 v61, s6, v16, v25, v16
	v_dual_mul_f32 v62, v28, v31 :: v_dual_fmac_f32 v45, v50, v45
	v_dual_fmac_f32 v46, v63, v46 :: v_dual_fmac_f32 v49, v66, v49
	v_dual_fmac_f32 v48, v65, v48 :: v_dual_fmac_f32 v51, v67, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v30, v44 :: v_dual_mul_f32 v65, v36, v46
	v_fma_f32 v63, -v27, v62, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v64, v33, v45 :: v_dual_mul_f32 v67, v40, v48
	v_dual_mul_f32 v68, v42, v49 :: v_dual_mul_f32 v69, v61, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v29, v50, v30
	v_div_scale_f32 v38, s3, v5, v24, v5
	v_fma_f32 v73, -v39, v67, v40
	v_fmac_f32_e32 v62, v63, v31
	v_fma_f32 v75, -v43, v69, v61
	v_fmac_f32_e32 v50, v70, v44
	v_fma_f32 v63, -v32, v64, v33
	v_fmac_f32_e32 v67, v73, v48
	v_fma_f32 v27, -v27, v62, v28
	v_fmac_f32_e32 v69, v75, v51
	v_fma_f32 v28, -v29, v50, v30
	v_fma_f32 v71, -v34, v65, v36
	v_mul_f32_e32 v66, v38, v47
	v_fma_f32 v74, -v41, v68, v42
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v35.h, v35.l
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v28, v28, v44, v50
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v65, v71, v46
	v_div_fmas_f32 v27, v27, v31, v62
	v_fma_f32 v72, -v37, v66, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v6, v28, v19, v6
	v_fma_f32 v30, -v34, v65, v36
	v_div_fixup_f32 v18, v27, v20, v18
	v_fmac_f32_e32 v64, v63, v45
	v_fmac_f32_e32 v66, v72, v47
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v10, v6
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v36, -v43, v69, v61
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v9, v18
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v29, -v32, v64, v33
	v_fma_f32 v32, -v37, v66, v38
	v_fma_f32 v33, -v39, v67, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v55.l, v9.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v45, v64
	s_mov_b32 vcc_lo, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v19, v30, v46, v65
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v3, v29, v22, v3
	v_fmac_f32_e32 v68, v74, v49
	v_div_fmas_f32 v20, v32, v47, v66
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v2, v19, v21, v2
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v3, v12, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v34, -v41, v68, v42
	v_div_fmas_f32 v10, v33, v48, v67
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v20, v24, v5
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v2, v11, v2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v18, v34, v49, v68
	v_div_fixup_f32 v4, v10, v23, v4
	s_mov_b32 vcc_lo, s6
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v5, v14, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v12, v36, v51, v69
	v_div_fixup_f32 v7, v18, v26, v7
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v4, v13, v4
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v56.l, v3.h
	v_mov_b16_e32 v58.l, v5.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v10, v12, v25, v16
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v7, v8, v7
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v54.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v59.l, v4.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v10, v15, v10
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v57.l, v2.h
	v_and_b32_e32 v11, 1, v54
	v_cmp_o_f32_e64 s3, v5, v5
	v_and_b32_e32 v13, 1, v59
	v_cmp_o_f32_e64 s4, v4, v4
	v_mov_b16_e32 v35.l, v7.h
	v_add3_u32 v6, v6, v11, 0x7fff
	v_and_b32_e32 v11, 1, v57
	v_add3_u32 v4, v4, v13, 0x7fff
	v_mov_b16_e32 v60.l, v10.h
	v_cmp_o_f32_e64 s1, v3, v3
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v12, 1, v55
	v_cmp_o_f32_e64 s2, v2, v2
	v_add3_u32 v0, v2, v11, 0x7fff
	v_and_b32_e32 v2, 1, v35
	v_and_b32_e32 v11, 1, v60
	v_add3_u32 v9, v9, v12, 0x7fff
	v_and_b32_e32 v12, 1, v58
	v_cmp_o_f32_e64 s5, v7, v7
	v_add3_u32 v2, v7, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v6.l, 0x7fff, v9.h, s0
	v_add3_u32 v5, v5, v12, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s4
	v_cndmask_b32_e32 v9, 0x3276, v53, vcc_lo
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_and_b32_e32 v8, 1, v56
	v_cndmask_b32_e32 v4, v5, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v3, v8, 0x7fff
	v_cndmask_b32_e32 v8, 0x1054, v52, vcc_lo
	v_cndmask_b16 v3.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v8, 8, v8
	v_lshl_or_b32 v8, v9, 8, v9
	v_add3_u32 v9, v10, v11, 0x7fff
	v_and_b32_e32 v2, 0x540054, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 0x760076, v8
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s0
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v8, v1, s7
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e32 v1, v6, v5, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v5, v7, 4, v7
	v_dual_cndmask_b32 v6, v3, v0 :: v_dual_cndmask_b32 v3, v0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v5, 0x7060706, v5
	v_permlanex16_b32 v6, v6, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_and_or_b32 v7, 0x78, v17, s26
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s26, s10
	v_perm_b32 v0, v1, v4, v2
	v_perm_b32 v1, v1, v4, v5
	v_perm_b32 v2, v6, v3, v2
	v_perm_b32 v3, v6, v3, v5
	v_add_lshl_u32 v4, v7, v8, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 108
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
		.amdhsa_inst_pref_size 48
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 108
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6104
; TotalNumSgprs: 50
; NumVgprs: 108
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 108
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     108
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
