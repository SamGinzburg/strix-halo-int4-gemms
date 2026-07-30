	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 31, v0
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v11, 0x100, v0
	v_and_b32_e32 v30, 15, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v9, 0xe0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s13, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s13
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
	s_xor_b32 s8, s2, s13
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s17, s14, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s14, s14, s13
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s17
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s14
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s15, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s16, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s7, 0, s15
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s6, s16
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s14, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s15
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s14, s15
	s_cmp_ge_u32 s14, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s14, s15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s26, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cselect_b32 s14, s19, s16
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s16, s12, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s14, s14, s13
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s15, s3, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s19, s12, 31
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s12, s12, s16
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s22, s14, s13
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v6, s15, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s16, s12, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s12, s22, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v6
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 16, v6
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s17
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	s_mul_i32 s20, s34, s15
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s33, s22, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s23, s18, 5
.Ltmp21:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s2, 6
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s21, s35, s15
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s19, 31
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_add3_u32 v4, s20, s22, v4
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v5, s21, s33, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s12, s3, vcc_lo
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s12
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s27, s7
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_u16 v6, v4, s[4:7], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b32 v5, v5, s[24:27], 0 offen
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_lshlrev_b32_e32 v4, 1, v0
	s_mov_b32 s12, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s19, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_add_nc_u32_e32 v32, 0, v4
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v33, v32, v4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 4, v11
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v32, v6 offset:2048
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_mov_b64 s[30:31], s[6:7]
	s_mov_b32 s12, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow126
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v31, v4, v30
	v_lshrrev_b32_e32 v27, 1, v9
	v_bfe_u32 v28, v0, 4, 1
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v29, 0, v31
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_add_i32 s0, s23, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s12, 0
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_add_i32 s1, s15, 16
	v_sub_nc_u32_e32 v34, s16, v3
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v6, s1, v3
	v_lshl_or_b32 v3, s14, 8, v9
	s_lshl_b32 s14, s14, 7
	v_add3_u32 v4, s22, v4, v30
	s_lshl_b32 s15, s13, 8
	v_mul_lo_u32 v8, s35, v6
	s_lshl_b32 s13, s13, 7
	v_subrev_nc_u32_e32 v36, s15, v3
	s_mov_b32 s15, s12
	v_mul_lo_u32 v3, s34, v6
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v5, 0, v30
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_add3_u32 v2, v8, s14, v2
	s_mov_b32 s14, s12
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_add3_u32 v40, v3, s22, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v39, s13, v2
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v7, 32, v4
	v_mul_lo_u32 v4, s23, v4
	v_add_nc_u32_e32 v41, v5, v27
	v_lshlrev_b32_e32 v35, 1, v28
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_mul_lo_u32 v7, s23, v7
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_lshlrev_b32 v38, 1, v4
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_lshlrev_b32 v37, 1, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v13, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[8:9]
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s44, s0, 1
	s_lshl_b32 s45, s35, 1
	s_lshl_b32 s46, s35, 4
	s_lshl_b32 s34, s34, 4
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v42, v38, s[40:43], 0 offen
	buffer_load_u16 v43, v37, s[40:43], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v34
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v38, 2, v38
	s_add_i32 s44, s44, -1
	s_add_i32 s1, s1, 16
	v_add_nc_u32_e32 v37, 2, v37
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s44, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v65, 16, v43
	v_lshlrev_b32_e32 v64, 16, v42
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_cndmask_b32_e32 v42, 0x80000000, v40, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v40, s34, v40
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_u16 v66, v42, s[4:7], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v42, 0x80000000, v39, vcc_lo
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b32 v67, v42, s[24:27], 0 offen
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v42, v29 offset:2368
	ds_load_u8 v43, v29 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v29 offset:2496
	ds_load_u8 v44, v29 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v43, 16, v42
	ds_load_u8 v42, v29 offset:2112
	ds_load_u8 v43, v29 offset:2048
	ds_load_u8 v52, v29 offset:2080
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v29 offset:2240
	ds_load_u8 v44, v29 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v43, 16, v42
	ds_load_u8 v42, v41 offset:640
	ds_load_u8 v43, v41 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v41 offset:896
	ds_load_u8 v44, v41 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v43, 16, v42
	ds_load_u8 v42, v41 offset:128
	ds_load_u8 v43, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v41 offset:384
	ds_load_u8 v44, v41 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v43, 16, v42
	v_wmma_i32_16x16x16_iu4 v[42:49], v[58:59], v[50:51], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v50, v29 offset:2880
	ds_load_u8 v51, v29 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v29 offset:3008
	ds_load_u8 v53, v29 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v53, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v51, 16, v50
	ds_load_u8 v50, v29 offset:2624
	ds_load_u8 v53, v29 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v53, v50, 0xc0c0004
	ds_load_u8 v53, v29 offset:2752
	ds_load_u8 v54, v29 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v53, 16, v50
	ds_load_u8 v53, v41 offset:1664
	ds_load_u8 v54, v41 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v41 offset:1920
	ds_load_u8 v55, v41 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v54, 16, v53
	ds_load_u8 v53, v41 offset:1152
	ds_load_u8 v54, v41 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v41 offset:1408
	ds_load_u8 v55, v41 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v54, 16, v53
	v_wmma_i32_16x16x16_iu4 v[42:49], v[60:61], v[50:51], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v50, v29 offset:2400
	ds_load_u8 v51, v29 offset:2336
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v29 offset:2528
	ds_load_u8 v53, v29 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v53, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v51, 16, v50
	ds_load_u8 v50, v29 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	ds_load_u8 v51, v29 offset:2272
	ds_load_u8 v52, v29 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v51, 16, v50
	v_wmma_i32_16x16x16_iu4 v[50:57], v[58:59], v[62:63], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v58, v29 offset:2912
	ds_load_u8 v59, v29 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v29 offset:3040
	ds_load_u8 v62, v29 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v62, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v58, v29 offset:2656
	ds_load_u8 v62, v29 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	ds_load_u8 v62, v29 offset:2784
	ds_load_u8 v63, v29 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v62, 16, v58
	v_wmma_i32_16x16x16_iu4 v[50:57], v[60:61], v[58:59], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_dual_mul_f32 v51, v65, v51 :: v_dual_add_nc_u32 v58, v35, v36
	v_mul_f32_e32 v43, v64, v43
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v59, v58, s[36:39], 0 offen
	buffer_load_u16 v60, v58, s[36:39], 0 offen offset:4
	buffer_load_u16 v61, v58, s[36:39], 0 offen offset:8
	buffer_load_u16 v62, v58, s[36:39], 0 offen offset:12
	buffer_load_u16 v63, v58, s[36:39], 0 offen offset:16
	buffer_load_u16 v68, v58, s[36:39], 0 offen offset:20
	buffer_load_u16 v69, v58, s[36:39], 0 offen offset:24
	buffer_load_u16 v58, v58, s[36:39], 0 offen offset:28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_mul_f32_e32 v47, v64, v47
	v_mul_f32_e32 v49, v64, v49
	v_mul_f32_e32 v42, v64, v42
	v_mul_f32_e32 v44, v64, v44
	v_mul_f32_e32 v45, v64, v45
	v_mul_f32_e32 v46, v64, v46
	v_dual_mul_f32 v48, v64, v48 :: v_dual_mul_f32 v55, v65, v55
	v_dual_mul_f32 v53, v65, v53 :: v_dual_add_nc_u32 v36, s45, v36
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b16 v32, v66 offset:2048
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(8)
	ds_store_b32 v33, v67
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v59, 16, v59
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v63, 16, v63
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v54, v65, v54 :: v_dual_lshlrev_b32 v69, 16, v69
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v50, v65, v50 :: v_dual_fmac_f32 v25, v43, v60
	v_dual_mul_f32 v57, v65, v57 :: v_dual_fmac_f32 v10, v42, v59
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v21, v47, v68
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v52, v65, v52 :: v_dual_fmac_f32 v15, v54, v63
	v_mul_f32_e32 v56, v65, v56
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v24, v44, v61 :: v_dual_fmac_f32 v23, v45, v62
	v_dual_fmac_f32 v22, v46, v63 :: v_dual_fmac_f32 v19, v49, v58
	v_fmac_f32_e32 v20, v48, v69
	v_dual_fmac_f32 v18, v51, v60 :: v_dual_fmac_f32 v17, v52, v61
	v_dual_fmac_f32 v26, v50, v59 :: v_dual_fmac_f32 v13, v56, v69
	v_fmac_f32_e32 v16, v53, v62
	v_fmac_f32_e32 v14, v55, v68
	v_fmac_f32_e32 v12, v57, v58
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, 32, v31
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v2, s23, v31
	s_mul_i32 s1, s22, s23
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s23, v1
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_add_lshl_u32 v1, s1, v1, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v3, 0x80000000, v1, s2
	s_clause 0x1
	buffer_load_u16 v1, v2, s[28:31], 0 offen
	buffer_load_u16 v2, v3, s[28:31], 0 offen
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	s_mov_b32 s12, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add3_u32 v7, 0, v30, v27
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v3, v29 offset:2368
	ds_load_u8 v4, v29 offset:2304
	ds_load_u8 v5, v29 offset:2496
	ds_load_u8 v6, v29 offset:2432
	ds_load_u8 v8, v29 offset:2112
	ds_load_u8 v30, v29 offset:2048
	ds_load_u8 v31, v29 offset:2240
	ds_load_u8 v32, v29 offset:2176
	ds_load_u8 v33, v7 offset:640
	ds_load_u8 v34, v7 offset:768
	ds_load_u8 v35, v7 offset:512
	ds_load_u8 v36, v7 offset:896
	ds_load_u8 v37, v7 offset:128
	ds_load_u8 v38, v7 offset:384
	ds_load_u8 v39, v7 offset:256
	ds_load_u8 v40, v7
	ds_load_u8 v49, v29 offset:2528
	ds_load_u8 v50, v29 offset:2464
	ds_load_u8 v51, v29 offset:2400
	ds_load_u8 v52, v29 offset:2336
	ds_load_u8 v53, v29 offset:2272
	ds_load_u8 v54, v29 offset:2208
	ds_load_u8 v55, v29 offset:2144
	ds_load_u8 v56, v29 offset:2080
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v67, v29 offset:2784
	ds_load_u8 v68, v29 offset:2720
	ds_load_u8 v69, v29 offset:2656
	ds_load_u8 v70, v29 offset:2592
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v30, v8, 0xc0c0004
	s_mov_b32 s13, s12
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v6, v32, v31, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v32, v29 offset:3008
	ds_load_u8 v41, v29 offset:2944
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v8, v35, v33, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v30, v34, v36, 0xc0c0004
	v_lshl_or_b32 v3, v6, 16, v5
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v40, v37, 0xc0c0004
	v_lshl_or_b32 v6, v30, 16, v8
	ds_load_u8 v30, v29 offset:2880
	ds_load_u8 v31, v29 offset:2816
	v_perm_b32 v8, v39, v38, 0xc0c0004
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v40, s19 :: v_dual_mov_b32 v39, s18
	v_lshl_or_b32 v5, v8, 16, v5
	ds_load_u8 v8, v29 offset:2624
	ds_load_u8 v42, v29 offset:2560
	ds_load_u8 v43, v29 offset:2752
	ds_load_u8 v44, v29 offset:2688
	ds_load_u8 v57, v7 offset:1664
	ds_load_u8 v58, v7 offset:1920
	ds_load_u8 v59, v7 offset:1792
	ds_load_u8 v60, v7 offset:1536
	ds_load_u8 v61, v29 offset:3040
	ds_load_u8 v62, v29 offset:2976
	ds_load_u8 v63, v29 offset:2912
	ds_load_u8 v64, v29 offset:2848
	v_dual_mov_b32 v38, s17 :: v_dual_mov_b32 v37, s16
	v_dual_mov_b32 v36, s15 :: v_dual_mov_b32 v35, s14
	v_dual_mov_b32 v34, s13 :: v_dual_mov_b32 v33, s12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v32, v41, v32, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v42, v8, 0xc0c0004
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v7 offset:1152
	ds_load_u8 v65, v7 offset:1408
	ds_load_u8 v66, v7 offset:1280
	ds_load_u8 v7, v7 offset:1024
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[5:6], v[3:4], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v32, 16, v30
	v_perm_b32 v30, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v29, 16, v8
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v60, v57, 0xc0c0004
	v_perm_b32 v29, v59, v58, 0xc0c0004
	v_perm_b32 v32, v50, v49, 0xc0c0004
	v_perm_b32 v49, v56, v55, 0xc0c0004
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_perm_b32 v51, v68, v67, 0xc0c0004
	v_lshl_or_b32 v8, v29, 16, v8
	v_lshl_or_b32 v30, v32, 16, v30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v64, v63, 0xc0c0004
	v_lshl_or_b32 v29, v50, 16, v49
	v_perm_b32 v49, v62, v61, 0xc0c0004
	v_perm_b32 v50, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v31, 0xc0c0004
	v_perm_b32 v31, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[5:6], v[29:30], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v49, 16, v32
	v_lshl_or_b32 v5, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v7, v31, 16, v7
	v_wmma_i32_16x16x16_iu4 v[41:48], v[7:8], v[3:4], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[7:8], v[5:6], v[33:40] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v3, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v42
	v_cvt_f32_i32_e32 v5, v43
	v_cvt_f32_i32_e32 v6, v44
	v_cvt_f32_i32_e32 v7, v45
	v_cvt_f32_i32_e32 v8, v46
	v_cvt_f32_i32_e32 v31, v47
	v_cvt_f32_i32_e32 v32, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
.LBB0_8:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v27, v28, v27
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s35
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v1.h, v1.l
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s33, s0
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s11, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v27, s0, v27, 1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s4, s10
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_bfe_i32 v50, v0, 0, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 4, v27
	v_add_nc_u32_e32 v30, 8, v27
	v_add_nc_u32_e32 v41, 12, v27
	v_add_nc_u32_e32 v42, 16, v27
	v_add_nc_u32_e32 v43, 20, v27
	v_add_nc_u32_e32 v44, 24, v27
	v_cndmask_b32_e64 v28, 0x80000000, v27, s2
	v_add_nc_u32_e32 v27, 28, v27
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_clause 0x7
	buffer_load_u16 v45, v28, s[4:7], 0 offen
	buffer_load_u16 v46, v29, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v47, v27, s[4:7], 0 offen
	v_mov_b16_e32 v27.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v27.h, v2.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v2, 0x7f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v28, 7, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_and_b32_e32 v29, 14, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v35, v35, v27 :: v_dual_lshlrev_b32 v48, 2, v0
	v_dual_mul_f32 v36, v36, v27 :: v_dual_and_b32 v49, 1, v0
	v_dual_mul_f32 v37, v37, v27 :: v_dual_lshlrev_b32 v52, 4, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_bfe_i32 v0, v0, 7, 1
	v_lshlrev_b32_e32 v49, 6, v49
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v39, v39, v27 :: v_dual_and_b32 v48, 0x78, v48
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v0, 0x840, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v34, v34, v27
	v_dual_mul_f32 v38, v38, v27 :: v_dual_lshlrev_b32 v61, 11, v29
	v_dual_mul_f32 v40, v40, v27 :: v_dual_lshlrev_b32 v29, 2, v29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_and_b32_e32 v52, 0x700, v52
	v_xor_b32_e32 v0, v0, v49
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v1.l, v27.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_and_b32_e32 v50, 0x840, v50
	v_lshl_or_b32 v9, v9, 3, v48
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s0, s22, s35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshrrev_b32_e32 v51, 1, v11
	v_cndmask_b32_e64 v11, 0x1008, 0, vcc_lo
	v_or3_b32 v0, v52, v29, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v33, v33, v27
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_add3_u32 v27, s0, s33, v2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v2, v3, v1
	v_mul_f32_e32 v3, v4, v1
	v_mul_f32_e32 v4, v5, v1
	v_mul_f32_e32 v5, v6, v1
	v_mul_f32_e32 v6, v7, v1
	v_mul_f32_e32 v7, v8, v1
	v_mul_f32_e32 v8, v31, v1
	v_mul_f32_e32 v1, v32, v1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v9, v9, v50
	v_xor_b32_e32 v0, v0, v11
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v56, 36, v28
	v_or_b32_e32 v57, 28, v28
	v_or_b32_e32 v58, 20, v28
	v_or_b32_e32 v59, 12, v28
	v_or_b32_e32 v60, 4, v28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_or3_b32 v9, v61, v51, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v53, 60, v28
	v_or_b32_e32 v54, 52, v28
	v_or_b32_e32 v55, 44, v28
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[28:29], null, s35, v28, v[27:28]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v61, 0, v0
	v_xad_u32 v62, 0x2010, v0, 0
	v_xad_u32 v63, 0x4020, v0, 0
	v_xad_u32 v64, 0x6030, v0, 0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v31, s35, v60
	v_mul_lo_u32 v32, s35, v59
	v_mul_lo_u32 v48, s35, v58
	v_mul_lo_u32 v49, s35, v57
	v_mul_lo_u32 v50, s35, v56
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v29, 0, v9
	v_xad_u32 v51, v9, 8, 0
	v_xad_u32 v52, v9, 16, 0
	v_xad_u32 v56, v9, 24, 0
	v_xad_u32 v57, v9, 32, 0
	v_xad_u32 v58, v9, 40, 0
	v_xad_u32 v59, v9, 48, 0
	v_xad_u32 v60, v9, 56, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v55, s35, v55
	s_lshl_b32 s1, s35, 3
	v_mul_lo_u32 v54, s35, v54
	s_lshl_b32 s3, s35, 4
	s_mul_i32 s4, s35, 24
	s_lshl_b32 s5, s35, 5
	s_mul_i32 s8, s35, 40
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s9, s35, 48
	s_mul_i32 s10, s35, 56
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v45
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v46
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v30
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v30, 16, v41
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v41, 16, v42
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v43
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v44
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v47
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v2, v2, v0, v10
	v_fma_f32 v33, v33, v0, v26
	v_fma_f32 v3, v3, v9, v25
	v_fma_f32 v9, v34, v9, v18
	v_fma_f32 v4, v4, v11, v24
	v_fma_f32 v5, v5, v30, v23
	v_fma_f32 v11, v35, v11, v17
	v_fma_f32 v7, v7, v42, v21
	v_fma_f32 v30, v36, v30, v16
	v_fma_f32 v45, v6, v41, v22
	v_fma_f32 v34, v37, v41, v15
	v_fma_f32 v35, v38, v42, v14
	v_fma_f32 v46, v8, v43, v20
	v_fma_f32 v47, v1, v44, v19
	v_fma_f32 v36, v39, v43, v13
	v_fma_f32 v37, v40, v44, v12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v10, v2, s2
	v_cndmask_b32_e64 v1, v26, v33, s2
	v_cndmask_b32_e64 v2, v25, v3, s2
	v_cndmask_b32_e64 v3, v18, v9, s2
	v_cndmask_b32_e64 v4, v24, v4, s2
	v_cndmask_b32_e64 v6, v23, v5, s2
	v_cndmask_b32_e64 v5, v17, v11, s2
	v_cndmask_b32_e64 v10, v21, v7, s2
	v_cndmask_b32_e64 v7, v16, v30, s2
	v_cndmask_b32_e64 v8, v22, v45, s2
	v_cndmask_b32_e64 v9, v15, v34, s2
	v_cndmask_b32_e64 v11, v14, v35, s2
	v_cndmask_b32_e64 v20, v20, v46, s2
	v_cndmask_b32_e64 v22, v19, v47, s2
	v_cndmask_b32_e64 v21, v13, v36, s2
	v_cndmask_b32_e64 v23, v12, v37, s2
	ds_store_b64 v29, v[0:1]
	ds_store_b64 v51, v[2:3]
	ds_store_b64 v52, v[4:5]
	ds_store_b64 v56, v[6:7]
	ds_store_b64 v57, v[8:9]
	ds_store_b64 v58, v[10:11]
	ds_store_b64 v59, v[20:21]
	ds_store_b64 v60, v[22:23]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v61 offset1:16
	ds_load_2addr_b64 v[4:7], v62 offset1:16
	ds_load_2addr_b64 v[8:11], v63 offset1:16
	ds_load_2addr_b64 v[12:15], v64 offset1:16
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	v_lshlrev_b32_e32 v17, 2, v28
	v_add_lshl_u32 v18, v27, v31, 2
	.loc	1 218 23 is_stmt 0              ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v16, s35, v53
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v19, v28, s1, 2
	v_add_lshl_u32 v20, v27, v32, 2
	v_add_lshl_u32 v21, v28, s3, 2
	v_add_lshl_u32 v22, v27, v48, 2
	v_add_lshl_u32 v23, v28, s4, 2
	v_add_lshl_u32 v24, v27, v49, 2
	v_add_lshl_u32 v25, v28, s5, 2
	v_add_lshl_u32 v26, v27, v50, 2
	v_add_lshl_u32 v29, v28, s8, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v4, v18, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v8, v19, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x7
	buffer_atomic_add_f32 v12, v20, s[20:23], 0 offen
	buffer_atomic_add_f32 v2, v21, s[20:23], 0 offen
	buffer_atomic_add_f32 v6, v22, s[20:23], 0 offen
	buffer_atomic_add_f32 v10, v23, s[20:23], 0 offen
	buffer_atomic_add_f32 v14, v24, s[20:23], 0 offen
	buffer_atomic_add_f32 v1, v25, s[20:23], 0 offen
	buffer_atomic_add_f32 v5, v26, s[20:23], 0 offen
	buffer_atomic_add_f32 v9, v29, s[20:23], 0 offen
	v_add_lshl_u32 v30, v27, v55, 2
	v_add_lshl_u32 v31, v28, s9, 2
	v_add_lshl_u32 v32, v27, v54, 2
	v_add_lshl_u32 v28, v28, s10, 2
	v_add_lshl_u32 v0, v27, v16, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v30, s[20:23], 0 offen
	buffer_atomic_add_f32 v3, v31, s[20:23], 0 offen
	buffer_atomic_add_f32 v7, v32, s[20:23], 0 offen
	buffer_atomic_add_f32 v11, v28, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v0, s[20:23], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 71
		.amdhsa_next_free_sgpr 47
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_vgpr, 71
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5192
; TotalNumSgprs: 49
; NumVgprs: 71
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 71
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     71
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
