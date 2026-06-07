	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v35, 4, v0
	v_and_b32_e32 v33, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v36, 1, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v39, 1, v0
	s_load_b64 s[36:37], s[0:1], 0x20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v13, v0, 7, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v14, v0, 4, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v37, 0x100, v36
	v_bfe_i32 v43, v0, 3, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_lshlrev_b32_e32 v42, 3, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v44, 0x88, v13
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v53, 0x88, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v52, 0xf78, v42
	v_and_b32_e32 v42, 0xf00, v42
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v52, v53, v52
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s23, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s27, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	s_add_i32 s18, s12, 1
	s_sub_i32 s14, s14, s19
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s22, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s18, s12
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s30, s12, s27
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s28, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s30, s27
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s29, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s12, s16
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v3, s29, v35
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v2, s28, v33
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s15
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s12, 9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s24, s2, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s24, s29
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v2
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v48, v3, v33, s2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s26, -1, 0
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mul_lo_u32 v4, s29, v36
	v_mul_lo_u32 v5, s29, v37
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s26, vcc_lo
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v2, s28, v48
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v34, 3, v39
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s2, s3, s29
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_add_i32 s12, s2, s28
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 107 18 is_stmt 1              ; generate_amdgcn.py:107:18
	v_or_b32_e32 v1, s28, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v47, v4, v34, s12
	v_add3_u32 v38, v5, v34, s12
	s_mov_b32 s12, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s26, s2
	s_cmp_lt_i32 s13, 34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_dual_cndmask_b32 v2, 0x80000000, v47 :: v_dual_cndmask_b32 v3, 0x80000000, v38
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v51, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[45:46], v2, s[20:23], 0 offen
	buffer_load_b64 v[49:50], v3, s[20:23], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v16, 0x17f, v0
	v_and_b32_e32 v41, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v40, 4, v0
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v3, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v44, v44, v16
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cmp_eq_u32_e64 s0, 0, v41
	v_and_b32_e32 v41, 0x88, v43
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v43, 0, v44
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v44, 0, v52
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b8 v43, v51 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v44, v[45:46], v[49:50] offset1:8
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v45, s29, v34
	v_sub_nc_u32_e32 v46, s29, v33
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s1, s28, 16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v45
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, s1, v48
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v9, s12 :: v_dual_add_nc_u32 v2, 16, v47
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s1, s1, v46
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v12, s15 :: v_dual_add_nc_u32 v3, 16, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v10, s13
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v14, s17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v38, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[67:68], v2, s[20:23], 0 offen
	buffer_load_b64 v[69:70], v3, s[20:23], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v16, s19 :: v_dual_and_b32 v1, 0x70, v40
	v_mov_b32_e32 v11, s14
	v_mov_b32_e32 v13, s16
	v_mov_b32_e32 v15, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b32_e32 v2, v41, v1
	v_or3_b32 v1, v1, v42, v41
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s29, 15
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp13:
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v3, 0, v2
	v_xor_b32_e32 v2, 8, v2
	v_add_nc_u32_e32 v48, 0, v1
	v_xor_b32_e32 v1, 8, v1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s1, s1, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v47, 0x2000, v3
	v_add_nc_u32_e32 v2, 0, v2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[55:58], v48 offset1:8
	v_add_nc_u32_e32 v50, 0, v1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s1, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[51:54], v47 offset1:32
	v_add_nc_u32_e32 v49, 0x2000, v2
	ds_load_2addr_b64 v[59:62], v49 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[63:66], v50 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v43, v38 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v44, v[67:68], v[69:70] offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[51:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[51:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[59:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[61:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_lshl_b32 s2, s30, 9
	v_add_nc_u32_e32 v38, s24, v35
	v_or_b32_e32 v36, s2, v36
	v_or_b32_e32 v37, s2, v37
	s_lshl_b32 s2, s27, 9
	s_add_i32 s12, s1, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v36, s2, v36
	v_subrev_nc_u32_e32 v37, s2, v37
	s_add_i32 s2, s28, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[35:36], null, s29, v36, v[34:35]
	v_mad_u64_u32 v[36:37], null, s29, v37, v[34:35]
	v_mad_u64_u32 v[37:38], null, s29, v38, v[33:34]
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v34, s2, v37
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v38, s2, v35
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v45
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s1, s2, v46
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v51, s2, v36
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s12, s12, -1
	s_add_i32 s2, s2, 16
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s12, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v34, v34, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[67:68], v38, s[20:23], 0 offen
	buffer_load_b64 v[69:70], v51, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[51:54], v47 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[55:58], v48 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[59:62], v49 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[63:66], v50 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v43, v34 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v44, v[67:68], v[69:70] offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[51:52], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[53:54], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[59:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[61:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_and_b32_e32 v34, 0x1f0, v0
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s26
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v35, 0x70, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v36, v41, v35
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or3_b32 v35, v35, v42, v41
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v37, 0, v36
	v_xad_u32 v40, v36, 8, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v38, 0, v35
	v_xad_u32 v44, v35, 8, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v41, 0x2000, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v48, 0x2000, v40
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[35:38], v38 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[40:43], v41 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[44:47], v44 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[48:51], v48 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[40:41], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[42:43], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[42:43], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[46:47], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[50:51], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v35, s24, v33
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v43, v4
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s41, s9, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v4, 0x7632 :: v_dual_lshlrev_b32 v35, 1, v35
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s40, s8
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v36, s3, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v42, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v37, 32, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v3, 0x5410
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v40, v1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	buffer_load_u16 v37, v37, s[40:43], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s41, s11, 0xffff
	s_mov_b32 s40, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v41, v2
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v2, v34, 2, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v51, v12
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v12, v34, 1, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v44, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v5, 0x1054, v3, s0
	v_cndmask_b32_e64 v4, 0x3276, v4, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v45, v6
	v_cvt_f32_i32_e32 v46, v7
	v_cvt_f32_i32_e32 v47, v8
	v_cvt_f32_i32_e32 v48, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v8, v5, 8, v5
	v_lshl_or_b32 v9, v4, 8, v4
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v52, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v38, 1, v34
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v49, v10
	v_cvt_f32_i32_e32 v50, v11
	v_cvt_f32_i32_e32 v53, v14
	v_cvt_f32_i32_e32 v54, v15
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v33, s25, v33
	s_mul_i32 s24, s24, s25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v16, v16
	s_mov_b32 s33, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v0, 1, v0
	v_lshlrev_b32_e32 v1, 5, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v0, 28, v0
	v_add3_u32 v0, v2, v1, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v36
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v36, s24, s3, v38
	v_lshl_add_u32 v38, s25, 4, v33
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v36, v33, 1
	v_add_lshl_u32 v36, v36, v38, 1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v56, v2, v35
	v_dual_mul_f32 v2, v2, v37 :: v_dual_and_b32 v13, 0x540054, v8
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v58, v4, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 0x760076, v9
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_load_b128 v[8:11], v12 offset:1024
	v_mul_f32_e32 v60, v6, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v39, v13, 4, v13
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_load_b128 v[12:15], v12 offset:1040
	v_mul_f32_e32 v55, v1, v35
	v_mul_f32_e32 v57, v3, v35
	v_mul_f32_e32 v59, v5, v35
	v_dual_mul_f32 v1, v1, v37 :: v_dual_and_b32 v38, 0x5040504, v39
	v_mul_f32_e32 v39, v0, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v34, v34, 4, v34
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v61, v7, v35 :: v_dual_mul_f32 v4, v4, v37
	v_mul_f32_e32 v0, v0, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v3, v3, v37 :: v_dual_and_b32 v34, 0x7060706, v34
	v_mul_f32_e32 v5, v5, v37
	v_mul_f32_e32 v6, v6, v37
	v_mul_f32_e32 v7, v7, v37
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v0, v0, v25 :: v_dual_mul_f32 v1, v1, v26
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v62, v8, v35
	v_mul_f32_e32 v63, v9, v35
	v_mul_f32_e32 v64, v10, v35
	v_dual_mul_f32 v65, v11, v35 :: v_dual_mul_f32 v8, v8, v37
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v66, v12, v35
	v_dual_mul_f32 v67, v13, v35 :: v_dual_mul_f32 v10, v10, v37
	v_dual_mul_f32 v68, v14, v35 :: v_dual_mul_f32 v9, v9, v37
	v_dual_mul_f32 v35, v15, v35 :: v_dual_mul_f32 v12, v12, v37
	v_mul_f32_e32 v11, v11, v37
	v_mul_f32_e32 v13, v13, v37
	v_mul_f32_e32 v14, v14, v37
	v_mul_f32_e32 v15, v15, v37
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v37, v39, v40
	v_dual_mul_f32 v39, v55, v41 :: v_dual_mul_f32 v20, v65, v20
	v_dual_mul_f32 v40, v56, v42 :: v_dual_mul_f32 v41, v57, v43
	v_mul_f32_e32 v18, v63, v18
	v_dual_mul_f32 v42, v58, v44 :: v_dual_mul_f32 v43, v59, v45
	v_mul_f32_e32 v2, v2, v27
	v_dual_mul_f32 v44, v60, v46 :: v_dual_mul_f32 v45, v61, v47
	v_dual_mul_f32 v22, v67, v22 :: v_dual_mul_f32 v17, v62, v17
	v_dual_mul_f32 v24, v35, v24 :: v_dual_mul_f32 v19, v64, v19
	v_mul_f32_e32 v10, v10, v50
	v_dual_mul_f32 v21, v66, v21 :: v_dual_mul_f32 v8, v8, v48
	v_dual_mul_f32 v23, v68, v23 :: v_dual_mul_f32 v14, v14, v54
	v_dual_mul_f32 v3, v3, v28 :: v_dual_mul_f32 v4, v4, v29
	v_dual_mul_f32 v5, v5, v30 :: v_dual_mul_f32 v6, v6, v31
	v_mul_f32_e32 v7, v7, v32
	v_dual_mul_f32 v9, v9, v49 :: v_dual_mul_f32 v12, v12, v52
	v_mul_f32_e32 v11, v11, v51
	v_mul_f32_e32 v13, v13, v53
	v_mul_f32_e32 v15, v15, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_bfe_u32 v16, v37, 16, 1
	v_bfe_u32 v25, v39, 16, 1
	v_bfe_u32 v26, v40, 16, 1
	v_bfe_u32 v27, v41, 16, 1
	v_bfe_u32 v28, v42, 16, 1
	v_bfe_u32 v29, v43, 16, 1
	v_bfe_u32 v30, v44, 16, 1
	v_bfe_u32 v31, v45, 16, 1
	v_bfe_u32 v32, v17, 16, 1
	v_bfe_u32 v35, v18, 16, 1
	v_bfe_u32 v46, v19, 16, 1
	v_bfe_u32 v47, v20, 16, 1
	v_bfe_u32 v48, v21, 16, 1
	v_bfe_u32 v49, v22, 16, 1
	v_bfe_u32 v50, v23, 16, 1
	v_bfe_u32 v51, v24, 16, 1
	v_bfe_u32 v52, v0, 16, 1
	v_bfe_u32 v53, v1, 16, 1
	v_bfe_u32 v54, v2, 16, 1
	v_bfe_u32 v55, v3, 16, 1
	v_bfe_u32 v56, v4, 16, 1
	v_bfe_u32 v57, v5, 16, 1
	v_bfe_u32 v58, v6, 16, 1
	v_bfe_u32 v59, v7, 16, 1
	v_bfe_u32 v60, v8, 16, 1
	v_bfe_u32 v61, v9, 16, 1
	v_bfe_u32 v62, v10, 16, 1
	v_bfe_u32 v63, v11, 16, 1
	v_bfe_u32 v64, v12, 16, 1
	v_bfe_u32 v65, v13, 16, 1
	v_bfe_u32 v66, v14, 16, 1
	v_bfe_u32 v67, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cmp_o_f32_e64 s1, v39, v39
	v_cmp_o_f32_e64 s2, v40, v40
	v_cmp_o_f32_e64 s3, v41, v41
	v_cmp_o_f32_e64 s4, v42, v42
	v_cmp_o_f32_e64 s5, v43, v43
	v_cmp_o_f32_e64 s6, v44, v44
	v_cmp_o_f32_e64 s7, v45, v45
	v_add3_u32 v16, v37, v16, 0x7fff
	v_add3_u32 v25, v39, v25, 0x7fff
	v_add3_u32 v26, v40, v26, 0x7fff
	v_add3_u32 v27, v41, v27, 0x7fff
	v_add3_u32 v28, v42, v28, 0x7fff
	v_add3_u32 v29, v43, v29, 0x7fff
	v_add3_u32 v30, v44, v30, 0x7fff
	v_add3_u32 v31, v45, v31, 0x7fff
	v_cmp_o_f32_e64 s8, v17, v17
	v_cmp_o_f32_e64 s9, v18, v18
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s12, v21, v21
	v_cmp_o_f32_e64 s13, v22, v22
	v_cmp_o_f32_e64 s14, v23, v23
	v_cmp_o_f32_e64 s15, v24, v24
	v_add3_u32 v17, v17, v32, 0x7fff
	v_add3_u32 v18, v18, v35, 0x7fff
	v_add3_u32 v19, v19, v46, 0x7fff
	v_add3_u32 v20, v20, v47, 0x7fff
	v_add3_u32 v21, v21, v48, 0x7fff
	v_add3_u32 v22, v22, v49, 0x7fff
	v_add3_u32 v23, v23, v50, 0x7fff
	v_add3_u32 v24, v24, v51, 0x7fff
	v_cmp_o_f32_e64 s16, v0, v0
	v_cmp_o_f32_e64 s17, v1, v1
	v_cmp_o_f32_e64 s18, v2, v2
	v_cmp_o_f32_e64 s19, v3, v3
	v_cmp_o_f32_e64 s20, v4, v4
	v_cmp_o_f32_e64 s21, v5, v5
	v_cmp_o_f32_e64 s22, v6, v6
	v_cmp_o_f32_e64 s23, v7, v7
	v_add3_u32 v0, v0, v52, 0x7fff
	v_add3_u32 v1, v1, v53, 0x7fff
	v_add3_u32 v2, v2, v54, 0x7fff
	v_add3_u32 v3, v3, v55, 0x7fff
	v_add3_u32 v4, v4, v56, 0x7fff
	v_add3_u32 v5, v5, v57, 0x7fff
	v_add3_u32 v6, v6, v58, 0x7fff
	v_add3_u32 v7, v7, v59, 0x7fff
	v_cmp_o_f32_e64 s24, v8, v8
	v_cmp_o_f32_e64 s25, v9, v9
	v_cmp_o_f32_e64 s26, v10, v10
	v_cmp_o_f32_e64 s27, v11, v11
	v_cmp_o_f32_e64 s28, v12, v12
	v_cmp_o_f32_e64 s29, v13, v13
	v_cmp_o_f32_e64 s30, v14, v14
	v_cmp_o_f32_e64 s31, v15, v15
	v_add3_u32 v8, v8, v60, 0x7fff
	v_add3_u32 v9, v9, v61, 0x7fff
	v_add3_u32 v10, v10, v62, 0x7fff
	v_add3_u32 v11, v11, v63, 0x7fff
	v_add3_u32 v12, v12, v64, 0x7fff
	v_add3_u32 v13, v13, v65, 0x7fff
	v_add3_u32 v14, v14, v66, 0x7fff
	v_add3_u32 v15, v15, v67, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s2
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s3
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s4
	v_cndmask_b16 v26.h, 0x7fff, v29.h, s5
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v31.h, s7
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s8
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s9
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s10
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s11
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s12
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s13
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s14
	v_cndmask_b16 v20.h, 0x7fff, v24.h, s15
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s16
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s17
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s18
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s19
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s20
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s21
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s22
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s23
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s24
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s25
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s26
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s27
	v_cndmask_b16 v6.l, 0x7fff, v12.h, s28
	v_cndmask_b16 v6.h, 0x7fff, v13.h, s29
	v_cndmask_b16 v7.l, 0x7fff, v14.h, s30
	v_cndmask_b16 v7.h, 0x7fff, v15.h, s31
	v_cndmask_b32_e64 v9, v16, v26, s0
	v_cndmask_b32_e64 v11, v25, v27, s0
	v_cndmask_b32_e64 v13, v17, v19, s0
	v_cndmask_b32_e64 v15, v18, v20, s0
	v_cndmask_b32_e64 v8, v26, v16, s0
	v_cndmask_b32_e64 v12, v19, v17, s0
	v_cndmask_b32_e64 v16, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b32_e64 v17, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v2, v4, v6, s0
	v_cndmask_b32_e64 v3, v5, v7, s0
	v_cndmask_b32_e64 v10, v27, v25, s0
	v_cndmask_b32_e64 v14, v20, v18, s0
	v_cndmask_b32_e64 v18, v6, v4, s0
	v_cndmask_b32_e64 v19, v7, v5, s0
	v_permlanex16_b32 v4, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v11, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v13, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v0, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v1, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v2, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v3, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v8, v38
	v_perm_b32 v1, v4, v8, v34
	v_perm_b32 v2, v5, v10, v38
	v_perm_b32 v3, v5, v10, v34
	v_perm_b32 v4, v6, v12, v38
	v_perm_b32 v5, v6, v12, v34
	v_perm_b32 v6, v7, v14, v38
	v_perm_b32 v7, v7, v14, v34
	v_perm_b32 v8, v9, v16, v38
	v_perm_b32 v9, v9, v16, v34
	v_perm_b32 v10, v11, v17, v38
	v_perm_b32 v11, v11, v17, v34
	v_perm_b32 v12, v13, v18, v38
	v_perm_b32 v13, v13, v18, v34
	v_perm_b32 v14, v15, v19, v38
	v_perm_b32 v15, v15, v19, v34
	s_clause 0x3
	buffer_store_b128 v[0:3], v33, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v33, s[36:39], 0 offen offset:512
	buffer_store_b128 v[8:11], v36, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v36, s[36:39], 0 offen offset:512
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 71
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4276
; TotalNumSgprs: 46
; NumVgprs: 71
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 46
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
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
