	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v6, 2, v0
	v_lshlrev_b32_e32 v9, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v20, 1, v0
	v_and_b32_e32 v22, 0xe0, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v2, 12, v6
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v6, 0x77c, v6
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v21, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v23, 16, v0
	scratch_store_b32 off, v22, off offset:8 ; 4-byte Folded Spill
	s_load_b32 s26, s[0:1], 0x38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 7
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	s_sub_i32 s12, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_load_b128 s[12:15], s[0:1], 0x0
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s19, s15
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s9, v1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v1, 8, v9
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v9, 0xf78, v9
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
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
	s_ashr_i32 s23, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s26, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s25, s4, s23
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s10, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s26, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s4, s25, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s24, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s4, s7
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v7, s24, v3
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[4:5], null, s24, v20, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s21, s4, 8
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s2, 7
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_add_i32 s20, s21, s11
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s4, s22, s24
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s3, s21, s24
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v7, v7, v2, s4
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_mul_i32 s2, s20, s24
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v5, s10, s3, v4
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add3_u32 v4, s10, s2, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s26, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v11, s10, v7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s3, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v7, s10, 16, v7
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v8, 16, v5
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add_nc_u32_e32 v10, 16, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s26, 33
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s2, -1, 0
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v12, 0x80000000, v7, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v13, 0x80000000, v8, s2
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v14, 0x80000000, v10, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v16, v11, s[12:15], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[7:8], v5, s[16:19], 0 offen
	buffer_load_b64 v[10:11], v4, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v17, v12, s[12:15], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[12:13], v13, s[16:19], 0 offen
	buffer_load_b64 v[14:15], v14, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v4, v0, 5, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_i32 v5, v0, 4, 1
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s26, 0x41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v4, 0x88, v4
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v5, 0x88, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v131, v4, v6
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v132, v5, v9
	v_and_b32_e32 v6, 0x108, v0
	v_lshlrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v9, 8, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v18, 0, v131
	v_lshlrev_b32_e32 v5, 3, v22
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v19, 0, v132
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v18, v16 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v19, v[7:8], v[10:11] offset1:16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v18, v17 offset:18432
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v19, v[12:13], v[14:15] offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshl_or_b32 v210, v21, 4, v6
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v133, 8, v0
	v_and_or_b32 v130, 0x70, v4, v5
	s_mov_b32 s19, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v211, 8, v210
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s19, -1
                                        ; implicit-def: $vgpr210
                                        ; implicit-def: $vgpr211
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr130
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v23
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_mov_b32 s26, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v23, off offset:12
	scratch_store_b32 off, v20, off
	scratch_store_b32 off, v21, off offset:4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s24, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s18, s25, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
	v_and_or_b32 v130, 0x70, v4, v5
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add3_u32 v4, s11, s18, v20
	v_sub_nc_u32_e64 v5, s1, 3 clamp
	v_or_b32_e32 v7, s18, v20
	v_lshl_or_b32 v210, v21, 4, v6
	v_bfe_i32 v6, v0, 3, 1
	s_lshl_b32 s1, s23, 8
	v_readfirstlane_b32 s18, v5
	v_subrev_nc_u32_e32 v4, s1, v4
	v_subrev_nc_u32_e32 v5, s1, v7
	v_and_or_b32 v133, 0x88, v6, v130
	v_mov_b32_e32 v34, 0
	v_add_nc_u32_e32 v6, s22, v3
	v_mad_u64_u32 v[3:4], null, s24, v4, s[10:11]
	v_mad_u64_u32 v[4:5], null, s24, v5, s[10:11]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v35, v34
	v_mad_u64_u32 v[5:6], null, s24, v6, s[10:11]
	v_xor_b32_e32 v211, 8, v210
	v_xor_b32_e32 v134, 8, v133
	v_add3_u32 v135, v3, v1, 32
	v_add3_u32 v136, v4, v1, 32
	v_mov_b32_e32 v36, v34
	v_mov_b32_e32 v37, v34
	v_add3_u32 v137, v5, v2, 32
	v_mov_b32_e32 v38, v34
	v_mov_b32_e32 v39, v34
	v_mov_b32_e32 v40, v34
	v_mov_b32_e32 v41, v34
	v_mov_b32_e32 v58, v34
	v_mov_b32_e32 v59, v34
	v_mov_b32_e32 v60, v34
	v_mov_b32_e32 v61, v34
	v_mov_b32_e32 v62, v34
	v_mov_b32_e32 v63, v34
	v_mov_b32_e32 v64, v34
	v_mov_b32_e32 v65, v34
	v_mov_b32_e32 v50, v34
	v_mov_b32_e32 v51, v34
	v_mov_b32_e32 v52, v34
	v_mov_b32_e32 v53, v34
	v_mov_b32_e32 v54, v34
	v_mov_b32_e32 v55, v34
	v_mov_b32_e32 v56, v34
	v_mov_b32_e32 v57, v34
	v_mov_b32_e32 v42, v34
	v_mov_b32_e32 v43, v34
	v_mov_b32_e32 v44, v34
	v_mov_b32_e32 v45, v34
	v_mov_b32_e32 v46, v34
	v_mov_b32_e32 v47, v34
	v_mov_b32_e32 v48, v34
	v_mov_b32_e32 v49, v34
	v_mov_b32_e32 v26, v34
	v_mov_b32_e32 v27, v34
	v_mov_b32_e32 v28, v34
	v_mov_b32_e32 v29, v34
	v_mov_b32_e32 v30, v34
	v_mov_b32_e32 v31, v34
	v_mov_b32_e32 v32, v34
	v_mov_b32_e32 v33, v34
	v_mov_b32_e32 v18, v34
	v_mov_b32_e32 v19, v34
	v_mov_b32_e32 v20, v34
	v_mov_b32_e32 v21, v34
	v_mov_b32_e32 v22, v34
	v_mov_b32_e32 v23, v34
	v_mov_b32_e32 v24, v34
	v_mov_b32_e32 v25, v34
	v_mov_b32_e32 v10, v34
	v_mov_b32_e32 v11, v34
	v_mov_b32_e32 v12, v34
	v_mov_b32_e32 v13, v34
	v_mov_b32_e32 v14, v34
	v_mov_b32_e32 v15, v34
	v_mov_b32_e32 v16, v34
	v_mov_b32_e32 v17, v34
	v_mov_b32_e32 v1, v34
	v_mov_b32_e32 v2, v34
	v_mov_b32_e32 v3, v34
	v_mov_b32_e32 v4, v34
	v_mov_b32_e32 v5, v34
	v_mov_b32_e32 v6, v34
	v_mov_b32_e32 v7, v34
	v_mov_b32_e32 v8, v34
	v_mov_b32_e32 v66, v34
	v_mov_b32_e32 v67, v34
	v_mov_b32_e32 v68, v34
	v_mov_b32_e32 v69, v34
	v_mov_b32_e32 v70, v34
	v_mov_b32_e32 v71, v34
	v_mov_b32_e32 v72, v34
	v_mov_b32_e32 v73, v34
	v_mov_b32_e32 v74, v34
	v_mov_b32_e32 v75, v34
	v_mov_b32_e32 v76, v34
	v_mov_b32_e32 v77, v34
	v_mov_b32_e32 v78, v34
	v_mov_b32_e32 v79, v34
	v_mov_b32_e32 v80, v34
	v_mov_b32_e32 v81, v34
	v_mov_b32_e32 v82, v34
	v_mov_b32_e32 v83, v34
	v_mov_b32_e32 v84, v34
	v_mov_b32_e32 v85, v34
	v_mov_b32_e32 v86, v34
	v_mov_b32_e32 v87, v34
	v_mov_b32_e32 v88, v34
	v_mov_b32_e32 v89, v34
	v_mov_b32_e32 v90, v34
	v_mov_b32_e32 v91, v34
	v_mov_b32_e32 v92, v34
	v_mov_b32_e32 v93, v34
	v_mov_b32_e32 v94, v34
	v_mov_b32_e32 v95, v34
	v_mov_b32_e32 v96, v34
	v_mov_b32_e32 v97, v34
	v_mov_b32_e32 v106, v34
	v_mov_b32_e32 v107, v34
	v_mov_b32_e32 v108, v34
	v_mov_b32_e32 v109, v34
	v_mov_b32_e32 v110, v34
	v_mov_b32_e32 v111, v34
	v_mov_b32_e32 v112, v34
	v_mov_b32_e32 v113, v34
	v_mov_b32_e32 v98, v34
	v_mov_b32_e32 v99, v34
	v_mov_b32_e32 v100, v34
	v_mov_b32_e32 v101, v34
	v_mov_b32_e32 v102, v34
	v_mov_b32_e32 v103, v34
	v_mov_b32_e32 v104, v34
	v_mov_b32_e32 v105, v34
	v_mov_b32_e32 v114, v34
	v_mov_b32_e32 v115, v34
	v_mov_b32_e32 v116, v34
	v_mov_b32_e32 v117, v34
	v_mov_b32_e32 v118, v34
	v_mov_b32_e32 v119, v34
	v_mov_b32_e32 v120, v34
	v_mov_b32_e32 v121, v34
	v_mov_b32_e32 v122, v34
	v_mov_b32_e32 v123, v34
	v_mov_b32_e32 v124, v34
	v_mov_b32_e32 v125, v34
	v_mov_b32_e32 v126, v34
	v_mov_b32_e32 v127, v34
	v_mov_b32_e32 v128, v34
	v_mov_b32_e32 v129, v34
	s_mov_b32 s28, 1
	s_add_i32 s27, s18, 1
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s23, 0, 0x4800
	s_add_i32 s24, 0, 0x1000
	s_add_i32 s25, 0, 0x2000
	s_add_i32 s10, 0, 0x3000
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v174, v137, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[170:171], v136, s[16:19], 0 offen
	buffer_load_b64 v[172:173], v135, s[16:19], 0 offen
	s_mov_b32 s30, s26
	s_mov_b32 s29, s1
	v_add_nc_u32_e32 v138, s30, v133
	s_mov_b32 s31, s25
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v146, s29, v210
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v150, s31, v133
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v154, s30, v134
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v162, s29, v211
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v166, s31, v134
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[138:141], v138 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[142:145], v146 offset1:1
	ds_load_2addr_stride64_b64 v[146:149], v146 offset0:2 offset1:3
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_2addr_stride64_b64 v[150:153], v150 offset1:4
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[154:157], v154 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[158:161], v162 offset1:1
	ds_load_2addr_stride64_b64 v[162:165], v162 offset0:2 offset1:3
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_2addr_stride64_b64 v[166:169], v166 offset1:4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s28, s28, 1
	s_mov_b32 s25, s10
	s_cmp_lt_i32 s28, 2
	s_mov_b32 s1, s23
	s_cselect_b32 s28, s28, 0
	s_mov_b32 s26, s24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s10, s28, 11
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v135, 16, v135
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s23, s10, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v136, 16, v136
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_add_i32 s24, s23, s10
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v137, 16, v137
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v175, s23, v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[138:139], v[142:143], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[140:141], v[142:143], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[138:139], v[144:145], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[140:141], v[144:145], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[138:139], v[146:147], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[140:141], v[146:147], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[138:139], v[148:149], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[140:141], v[148:149], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[150:151], v[142:143], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[152:153], v[142:143], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[150:151], v[144:145], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[152:153], v[144:145], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[150:151], v[146:147], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[152:153], v[146:147], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[150:151], v[148:149], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[148:149], v[1:8] neg_lo:[1,1,0]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[154:155], v[158:159], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[156:157], v[158:159], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[154:155], v[160:161], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[156:157], v[160:161], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[154:155], v[162:163], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[156:157], v[162:163], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[154:155], v[164:165], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[156:157], v[164:165], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[166:167], v[158:159], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[168:169], v[158:159], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[166:167], v[160:161], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[168:169], v[160:161], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[166:167], v[162:163], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[168:169], v[162:163], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[166:167], v[164:165], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[168:169], v[164:165], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s27, s27, -1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v176, s24, v132
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_addk_i32 s23, 0x4000
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	s_add_i32 s10, s24, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s27, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v175, v174 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v176, v[170:171], v[172:173] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v133, v9
	s_mov_b32 s18, s26
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s23, 0, 0x4800
	s_add_i32 s24, 0, 0x1000
	s_add_i32 s25, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, v8 :: v_dual_mov_b32 v73, v9
	v_dual_mov_b32 v67, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v75, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v79, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v77, v9 :: v_dual_mov_b32 v24, v8
	v_dual_mov_b32 v81, v9 :: v_dual_mov_b32 v20, v8
	v_dual_mov_b32 v83, v9 :: v_dual_mov_b32 v22, v8
	v_dual_mov_b32 v87, v9 :: v_dual_mov_b32 v18, v8
	v_dual_mov_b32 v85, v9 :: v_dual_mov_b32 v32, v8
	v_dual_mov_b32 v89, v9 :: v_dual_mov_b32 v28, v8
	v_dual_mov_b32 v91, v9 :: v_dual_mov_b32 v30, v8
	v_dual_mov_b32 v95, v9 :: v_dual_mov_b32 v26, v8
	v_dual_mov_b32 v93, v9 :: v_dual_mov_b32 v48, v8
	v_dual_mov_b32 v97, v9 :: v_dual_mov_b32 v44, v8
	v_dual_mov_b32 v107, v9 :: v_dual_mov_b32 v46, v8
	v_dual_mov_b32 v111, v9 :: v_dual_mov_b32 v42, v8
	v_dual_mov_b32 v109, v9 :: v_dual_mov_b32 v56, v8
	v_dual_mov_b32 v113, v9 :: v_dual_mov_b32 v52, v8
	v_dual_mov_b32 v99, v9 :: v_dual_mov_b32 v54, v8
	v_dual_mov_b32 v103, v9 :: v_dual_mov_b32 v50, v8
	v_dual_mov_b32 v101, v9 :: v_dual_mov_b32 v64, v8
	v_dual_mov_b32 v105, v9 :: v_dual_mov_b32 v60, v8
	v_dual_mov_b32 v115, v9 :: v_dual_mov_b32 v62, v8
	v_dual_mov_b32 v119, v9 :: v_dual_mov_b32 v58, v8
	v_dual_mov_b32 v117, v9 :: v_dual_mov_b32 v40, v8
	v_dual_mov_b32 v121, v9 :: v_dual_mov_b32 v36, v8
	v_dual_mov_b32 v123, v9 :: v_dual_mov_b32 v38, v8
	v_dual_mov_b32 v127, v9 :: v_dual_mov_b32 v34, v8
	v_dual_mov_b32 v125, v9 :: v_dual_mov_b32 v66, v8
	v_mov_b32_e32 v129, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v65, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v74, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v82, v8
	v_mov_b32_e32 v86, v8
	v_mov_b32_e32 v84, v8
	v_mov_b32_e32 v88, v8
	v_mov_b32_e32 v90, v8
	v_mov_b32_e32 v94, v8
	v_mov_b32_e32 v92, v8
	v_mov_b32_e32 v96, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v110, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v98, v8
	v_mov_b32_e32 v102, v8
	v_mov_b32_e32 v100, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v114, v8
	v_mov_b32_e32 v118, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v120, v8
	v_mov_b32_e32 v122, v8
	v_mov_b32_e32 v126, v8
	v_mov_b32_e32 v124, v8
	v_mov_b32_e32 v128, v8
	s_add_i32 s10, 0, 0x3000
.LBB0_8:                                ; %._crit_edge
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v131, s1, v210
	v_dual_mov_b32 v193, v129 :: v_dual_add_nc_u32 v132, s1, v211
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v192, v128
	ds_load_2addr_stride64_b64 v[206:209], v131 offset1:1
	ds_load_2addr_stride64_b64 v[202:205], v131 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[198:201], v132 offset1:1
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[194:197], v132 offset0:2 offset1:3
	.loc	1 115 22 is_stmt 1              ; generate_amdgcn.py:115:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v133
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v9, v9, v130
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v130, 0, 1, s3
	v_dual_mov_b32 v181, v117 :: v_dual_mov_b32 v180, v116
	v_dual_mov_b32 v183, v119 :: v_dual_mov_b32 v182, v118
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v220, 8, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s1, 1, v130
	v_dual_mov_b32 v179, v115 :: v_dual_mov_b32 v178, v114
	v_dual_mov_b32 v177, v105 :: v_dual_mov_b32 v176, v104
	v_dual_mov_b32 v173, v101 :: v_dual_mov_b32 v172, v100
	v_dual_mov_b32 v175, v103 :: v_dual_mov_b32 v174, v102
	v_dual_mov_b32 v171, v99 :: v_dual_mov_b32 v170, v98
	v_dual_mov_b32 v169, v113 :: v_dual_mov_b32 v168, v112
	v_dual_mov_b32 v165, v109 :: v_dual_mov_b32 v164, v108
	v_dual_mov_b32 v167, v111 :: v_dual_mov_b32 v166, v110
	v_dual_mov_b32 v163, v107 :: v_dual_mov_b32 v162, v106
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_dual_mov_b32 v157, v93 :: v_dual_mov_b32 v156, v92
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_dual_mov_b32 v155, v91 :: v_dual_mov_b32 v154, v90
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_dual_mov_b32 v149, v85 :: v_dual_mov_b32 v148, v84
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v146, v82
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_dual_mov_b32 v141, v77 :: v_dual_mov_b32 v140, v76
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v138, v74
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_dual_mov_b32 v131, v67 :: v_dual_mov_b32 v130, v66
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_dual_mov_b32 v145, v81 :: v_dual_add_nc_u32 v130, s18, v9
	v_dual_mov_b32 v140, v76 :: v_dual_mov_b32 v153, v89
	v_dual_mov_b32 v144, v80 :: v_dual_mov_b32 v141, v77
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[212:215], v130 offset1:4
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v143, v79 :: v_dual_add_nc_u32 v130, s18, v220
	v_dual_mov_b32 v142, v78 :: v_dual_mov_b32 v139, v75
	v_dual_mov_b32 v138, v74 :: v_dual_mov_b32 v151, v87
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[216:219], v130 offset1:4
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_mov_b32_e32 v132, v68
	v_dual_mov_b32 v148, v84 :: v_dual_mov_b32 v161, v97
	v_dual_mov_b32 v156, v92 :: v_dual_mov_b32 v169, v113
	v_dual_mov_b32 v164, v108 :: v_dual_mov_b32 v177, v105
	v_dual_mov_b32 v172, v100 :: v_dual_mov_b32 v185, v121
	v_dual_mov_b32 v180, v116 :: v_dual_mov_b32 v193, v129
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_mov_b32_e32 v131, v67
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v130, v66
	v_dual_mov_b32 v152, v88 :: v_dual_mov_b32 v149, v85
	v_dual_mov_b32 v150, v86 :: v_dual_mov_b32 v147, v83
	v_dual_mov_b32 v146, v82 :: v_dual_mov_b32 v159, v95
	v_dual_mov_b32 v160, v96 :: v_dual_mov_b32 v157, v93
	v_dual_mov_b32 v158, v94 :: v_dual_mov_b32 v155, v91
	v_dual_mov_b32 v154, v90 :: v_dual_mov_b32 v167, v111
	v_dual_mov_b32 v168, v112 :: v_dual_mov_b32 v165, v109
	v_dual_mov_b32 v166, v110 :: v_dual_mov_b32 v163, v107
	v_dual_mov_b32 v162, v106 :: v_dual_mov_b32 v175, v103
	v_dual_mov_b32 v176, v104 :: v_dual_mov_b32 v173, v101
	v_dual_mov_b32 v174, v102 :: v_dual_mov_b32 v171, v99
	v_dual_mov_b32 v170, v98 :: v_dual_mov_b32 v183, v119
	v_dual_mov_b32 v184, v120 :: v_dual_mov_b32 v181, v117
	v_dual_mov_b32 v182, v118 :: v_dual_mov_b32 v179, v115
	v_dual_mov_b32 v178, v114 :: v_dual_mov_b32 v191, v127
	v_dual_mov_b32 v192, v128 :: v_dual_mov_b32 v189, v125
	v_dual_mov_b32 v190, v126 :: v_dual_mov_b32 v187, v123
	v_mov_b32_e32 v188, v124
	v_mov_b32_e32 v186, v122
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[130:137], v[212:213], v[206:207], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[214:215], v[206:207], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[212:213], v[208:209], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[214:215], v[208:209], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[212:213], v[202:203], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[214:215], v[202:203], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[212:213], v[204:205], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[214:215], v[204:205], v[186:193] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[130:137], v[216:217], v[198:199], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[218:219], v[198:199], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[216:217], v[200:201], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[218:219], v[200:201], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[216:217], v[194:195], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[218:219], v[194:195], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[216:217], v[196:197], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[218:219], v[196:197], v[186:193] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v66, s25, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v128, v192
	v_dual_mov_b32 v129, v193 :: v_dual_add_nc_u32 v70, s25, v220
	v_mov_b32_e32 v124, v188
	ds_load_2addr_stride64_b64 v[66:69], v66 offset1:4
	v_mov_b32_e32 v125, v189
	ds_load_2addr_stride64_b64 v[70:73], v70 offset1:4
	v_mov_b32_e32 v126, v190
	v_mov_b32_e32 v122, v186
	v_mov_b32_e32 v120, v184
	v_mov_b32_e32 v116, v180
	v_mov_b32_e32 v118, v182
	v_mov_b32_e32 v114, v178
	v_mov_b32_e32 v104, v176
	v_mov_b32_e32 v100, v172
	v_mov_b32_e32 v102, v174
	v_mov_b32_e32 v98, v170
	v_mov_b32_e32 v112, v168
	v_mov_b32_e32 v108, v164
	v_mov_b32_e32 v110, v166
	v_mov_b32_e32 v106, v162
	v_mov_b32_e32 v96, v160
	v_mov_b32_e32 v92, v156
	v_mov_b32_e32 v94, v158
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[66:67], v[206:207], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[206:207], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[66:67], v[208:209], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[68:69], v[208:209], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[66:67], v[202:203], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[68:69], v[202:203], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[204:205], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[204:205], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[70:71], v[198:199], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[72:73], v[198:199], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[200:201], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[200:201], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[194:195], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[194:195], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[70:71], v[196:197], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[196:197], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v90, v154
	v_mov_b32_e32 v88, v152
	v_mov_b32_e32 v84, v148
	v_mov_b32_e32 v86, v150
	v_mov_b32_e32 v82, v146
	v_mov_b32_e32 v80, v144
	v_mov_b32_e32 v76, v140
	v_mov_b32_e32 v78, v142
	v_mov_b32_e32 v74, v138
	v_mov_b32_e32 v72, v136
	v_mov_b32_e32 v68, v132
	v_mov_b32_e32 v70, v134
	v_dual_mov_b32 v66, v130 :: v_dual_mov_b32 v127, v191
	v_mov_b32_e32 v123, v187
	v_mov_b32_e32 v121, v185
	v_mov_b32_e32 v117, v181
	v_mov_b32_e32 v119, v183
	v_mov_b32_e32 v115, v179
	v_mov_b32_e32 v105, v177
	v_mov_b32_e32 v101, v173
	v_mov_b32_e32 v103, v175
	v_mov_b32_e32 v99, v171
	v_mov_b32_e32 v113, v169
	v_mov_b32_e32 v109, v165
	v_mov_b32_e32 v111, v167
	v_mov_b32_e32 v107, v163
	v_mov_b32_e32 v97, v161
	v_mov_b32_e32 v93, v157
	v_mov_b32_e32 v95, v159
	v_mov_b32_e32 v91, v155
	v_mov_b32_e32 v89, v153
	v_mov_b32_e32 v85, v149
	v_mov_b32_e32 v87, v151
	v_mov_b32_e32 v83, v147
	v_mov_b32_e32 v81, v145
	v_mov_b32_e32 v77, v141
	v_mov_b32_e32 v79, v143
	v_mov_b32_e32 v75, v139
	v_mov_b32_e32 v73, v137
	v_mov_b32_e32 v69, v133
	v_mov_b32_e32 v71, v135
	v_mov_b32_e32 v67, v131
.LBB0_12:                               ; %._crit_edge278
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v194, 0, 1, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v195, s23, v211
	v_dual_mov_b32 v229, v101 :: v_dual_mov_b32 v228, v100
	v_dual_mov_b32 v231, v103 :: v_dual_mov_b32 v230, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s1, 1, v194
	v_dual_mov_b32 v197, v129 :: v_dual_add_nc_u32 v194, s23, v210
	v_mov_b32_e32 v196, v128
	scratch_store_b32 off, v220, off offset:88 ; 4-byte Folded Spill
	v_dual_mov_b32 v233, v99 :: v_dual_mov_b32 v232, v98
	v_dual_mov_b32 v235, v113 :: v_dual_mov_b32 v234, v112
	scratch_store_b64 off, v[196:197], off offset:16 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v125 :: v_dual_mov_b32 v196, v124
	v_dual_mov_b32 v237, v109 :: v_dual_mov_b32 v236, v108
	v_dual_mov_b32 v239, v111 :: v_dual_mov_b32 v238, v110
	scratch_store_b64 off, v[196:197], off offset:24 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v127 :: v_dual_mov_b32 v196, v126
	v_dual_mov_b32 v241, v107 :: v_dual_mov_b32 v240, v106
	v_dual_mov_b32 v243, v97 :: v_dual_mov_b32 v242, v96
	scratch_store_b64 off, v[196:197], off offset:32 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v123 :: v_dual_mov_b32 v196, v122
	v_dual_mov_b32 v245, v93 :: v_dual_mov_b32 v244, v92
	v_dual_mov_b32 v247, v95 :: v_dual_mov_b32 v246, v94
	scratch_store_b64 off, v[196:197], off offset:40 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v121 :: v_dual_mov_b32 v196, v120
	v_dual_mov_b32 v249, v91 :: v_dual_mov_b32 v248, v90
	v_dual_mov_b32 v251, v89 :: v_dual_mov_b32 v250, v88
	scratch_store_b64 off, v[196:197], off offset:48 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v117 :: v_dual_mov_b32 v196, v116
	v_dual_mov_b32 v253, v85 :: v_dual_mov_b32 v252, v84
	v_dual_mov_b32 v255, v87 :: v_dual_mov_b32 v254, v86
	scratch_store_b64 off, v[196:197], off offset:56 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v119 :: v_dual_mov_b32 v196, v118
	v_dual_mov_b32 v211, v83 :: v_dual_mov_b32 v210, v82
	v_dual_mov_b32 v213, v81 :: v_dual_mov_b32 v212, v80
	scratch_store_b64 off, v[196:197], off offset:64 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v115 :: v_dual_mov_b32 v196, v114
	v_dual_mov_b32 v215, v77 :: v_dual_mov_b32 v214, v76
	v_dual_mov_b32 v217, v79 :: v_dual_mov_b32 v216, v78
	scratch_store_b64 off, v[196:197], off offset:72 ; 8-byte Folded Spill
	v_dual_mov_b32 v197, v105 :: v_dual_mov_b32 v196, v104
	v_dual_mov_b32 v219, v75 :: v_dual_mov_b32 v218, v74
	v_dual_mov_b32 v221, v73 :: v_dual_mov_b32 v220, v72
	scratch_store_b64 off, v[196:197], off offset:80 ; 8-byte Folded Spill
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[206:209], v194 offset1:1
	ds_load_2addr_stride64_b64 v[202:205], v194 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[198:201], v195 offset1:1
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[194:197], v195 offset0:2 offset1:3
	v_dual_mov_b32 v223, v69 :: v_dual_mov_b32 v222, v68
	v_dual_mov_b32 v225, v71 :: v_dual_mov_b32 v224, v70
	v_dual_mov_b32 v227, v67 :: v_dual_mov_b32 v226, v66
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v210, s24, v9
	v_xor_b32_e32 v214, 8, v9
	ds_load_2addr_stride64_b64 v[210:213], v210 offset1:4
	v_add_nc_u32_e32 v214, s24, v214
	ds_load_2addr_stride64_b64 v[214:217], v214 offset1:4
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[212:213], v[204:205], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[212:213], v[202:203], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[210:211], v[204:205], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[210:211], v[202:203], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[212:213], v[208:209], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[210:211], v[208:209], v[146:153] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[216:217], v[196:197], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[216:217], v[194:195], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[214:215], v[196:197], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[214:215], v[194:195], v[162:169] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[192:193], off offset:16
	scratch_store_b64 off, v[188:189], off offset:24
	v_dual_mov_b32 v188, v190 :: v_dual_mov_b32 v229, v173
	v_mov_b32_e32 v189, v191
	v_wmma_i32_16x16x16_iu4 v[138:145], v[212:213], v[206:207], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[216:217], v[200:201], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[210:211], v[206:207], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[214:215], v[200:201], v[146:153] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[188:189], off offset:32
	scratch_store_b64 off, v[186:187], off offset:40
	scratch_store_b64 off, v[184:185], off offset:48
	scratch_store_b64 off, v[180:181], off offset:56
	v_dual_mov_b32 v180, v182 :: v_dual_mov_b32 v231, v175
	v_dual_mov_b32 v228, v172 :: v_dual_mov_b32 v233, v171
	v_dual_mov_b32 v230, v174 :: v_dual_mov_b32 v235, v169
	v_dual_mov_b32 v232, v170 :: v_dual_mov_b32 v237, v165
	v_wmma_i32_16x16x16_iu4 v[138:145], v[216:217], v[198:199], v[138:145] neg_lo:[1,1,0]
	v_dual_mov_b32 v234, v168 :: v_dual_mov_b32 v239, v167
	v_dual_mov_b32 v236, v164 :: v_dual_mov_b32 v241, v163
	v_dual_mov_b32 v238, v166 :: v_dual_mov_b32 v243, v161
	v_dual_mov_b32 v240, v162 :: v_dual_mov_b32 v245, v157
	v_wmma_i32_16x16x16_iu4 v[130:137], v[214:215], v[198:199], v[130:137] neg_lo:[1,1,0]
	v_dual_mov_b32 v242, v160 :: v_dual_mov_b32 v247, v159
	v_dual_mov_b32 v244, v156 :: v_dual_mov_b32 v249, v155
	v_dual_mov_b32 v246, v158 :: v_dual_mov_b32 v251, v153
	v_dual_mov_b32 v248, v154 :: v_dual_mov_b32 v253, v149
	v_dual_mov_b32 v250, v152 :: v_dual_mov_b32 v255, v151
	v_dual_mov_b32 v252, v148 :: v_dual_mov_b32 v211, v147
	v_dual_mov_b32 v254, v150 :: v_dual_mov_b32 v213, v145
	v_dual_mov_b32 v210, v146 :: v_dual_mov_b32 v215, v141
	v_dual_mov_b32 v212, v144 :: v_dual_mov_b32 v217, v143
	v_dual_mov_b32 v214, v140 :: v_dual_mov_b32 v219, v139
	v_dual_mov_b32 v216, v142 :: v_dual_mov_b32 v221, v137
	v_dual_mov_b32 v218, v138 :: v_dual_mov_b32 v223, v133
	v_dual_mov_b32 v220, v136 :: v_dual_mov_b32 v225, v135
	v_dual_mov_b32 v222, v132 :: v_dual_mov_b32 v227, v131
	v_dual_mov_b32 v181, v183 :: v_dual_mov_b32 v224, v134
	v_mov_b32_e32 v226, v130
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[180:181], off offset:64
	scratch_store_b64 off, v[178:179], off offset:72
	scratch_store_b64 off, v[176:177], off offset:80
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v9, s10, v9
	s_clause 0x8                            ; 72-byte Folded Reload
	scratch_load_b64 v[130:131], off, off offset:16
	scratch_load_b64 v[137:138], off, off offset:24
	scratch_load_b64 v[125:126], off, off offset:32
	scratch_load_b64 v[141:142], off, off offset:40
	scratch_load_b64 v[146:147], off, off offset:48
	scratch_load_b64 v[127:128], off, off offset:56
	scratch_load_b64 v[151:152], off, off offset:64
	scratch_load_b64 v[115:116], off, off offset:72
	scratch_load_b64 v[143:144], off, off offset:80
	ds_load_2addr_stride64_b64 v[66:69], v9 offset1:4
	scratch_load_b32 v9, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[66:67], v[206:207], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[206:207], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[66:67], v[208:209], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[68:69], v[208:209], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[66:67], v[202:203], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[68:69], v[202:203], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[204:205], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[204:205], v[1:8] neg_lo:[1,1,0]
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	ds_load_2addr_stride64_b64 v[70:73], v9 offset1:4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[70:71], v[198:199], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[72:73], v[198:199], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[200:201], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[200:201], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[194:195], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[194:195], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[70:71], v[196:197], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v138, v125 :: v_dual_mov_b32 v137, v124
	v_dual_mov_b32 v125, v126 :: v_dual_mov_b32 v142, v123
	v_dual_mov_b32 v131, v129 :: v_dual_mov_b32 v130, v128
	v_dual_mov_b32 v126, v127 :: v_dual_mov_b32 v141, v122
	v_dual_mov_b32 v128, v117 :: v_dual_mov_b32 v127, v116
	v_mov_b32_e32 v116, v115
	v_dual_mov_b32 v144, v105 :: v_dual_mov_b32 v231, v103
	v_dual_mov_b32 v229, v101 :: v_dual_mov_b32 v230, v102
	v_dual_mov_b32 v147, v121 :: v_dual_mov_b32 v146, v120
	v_dual_mov_b32 v152, v119 :: v_dual_mov_b32 v151, v118
	v_mov_b32_e32 v143, v104
	v_dual_mov_b32 v115, v114 :: v_dual_mov_b32 v228, v100
	v_dual_mov_b32 v233, v99 :: v_dual_mov_b32 v232, v98
	v_dual_mov_b32 v235, v113 :: v_dual_mov_b32 v234, v112
	v_dual_mov_b32 v237, v109 :: v_dual_mov_b32 v236, v108
	v_dual_mov_b32 v239, v111 :: v_dual_mov_b32 v238, v110
	v_dual_mov_b32 v241, v107 :: v_dual_mov_b32 v240, v106
	v_dual_mov_b32 v243, v97 :: v_dual_mov_b32 v242, v96
	v_dual_mov_b32 v245, v93 :: v_dual_mov_b32 v244, v92
	v_dual_mov_b32 v247, v95 :: v_dual_mov_b32 v246, v94
	v_dual_mov_b32 v249, v91 :: v_dual_mov_b32 v248, v90
	v_dual_mov_b32 v251, v89 :: v_dual_mov_b32 v250, v88
	v_dual_mov_b32 v253, v85 :: v_dual_mov_b32 v252, v84
	v_dual_mov_b32 v255, v87 :: v_dual_mov_b32 v254, v86
	v_dual_mov_b32 v211, v83 :: v_dual_mov_b32 v210, v82
	v_dual_mov_b32 v213, v81 :: v_dual_mov_b32 v212, v80
	v_dual_mov_b32 v215, v77 :: v_dual_mov_b32 v214, v76
	v_dual_mov_b32 v217, v79 :: v_dual_mov_b32 v216, v78
	v_dual_mov_b32 v219, v75 :: v_dual_mov_b32 v218, v74
	v_dual_mov_b32 v221, v73 :: v_dual_mov_b32 v220, v72
	v_dual_mov_b32 v223, v69 :: v_dual_mov_b32 v222, v68
	v_dual_mov_b32 v225, v71 :: v_dual_mov_b32 v224, v70
	v_dual_mov_b32 v227, v67 :: v_dual_mov_b32 v226, v66
.LBB0_17:
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:12
	scratch_load_b32 v66, off, off offset:8
	scratch_load_b32 v67, off, off offset:4
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s4
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v167, v34
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v48, v3
	v_cvt_f32_i32_e32 v172, v27
	v_cvt_f32_i32_e32 v27, v5
	v_cvt_f32_i32_e32 v168, v35
	v_cvt_f32_i32_e32 v35, v49
	v_cvt_f32_i32_e32 v49, v4
	v_cvt_f32_i32_e32 v169, v50
	v_cvt_f32_i32_e32 v50, v44
	v_cvt_f32_i32_e32 v44, v28
	v_cvt_f32_i32_e32 v28, v6
	v_cvt_f32_i32_e32 v97, v59
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v61, v31
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v71, v131
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v131, v38
	v_cvt_f32_i32_e32 v38, v46
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v78, v125
	v_cvt_f32_i32_e32 v79, v126
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v96, v58
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v170, v51
	v_cvt_f32_i32_e32 v125, v54
	v_cvt_f32_i32_e32 v126, v55
	v_cvt_f32_i32_e32 v109, v56
	v_cvt_f32_i32_e32 v110, v57
	v_cvt_f32_i32_e32 v60, v42
	v_cvt_f32_i32_e32 v171, v26
	v_cvt_f32_i32_e32 v51, v30
	v_cvt_f32_i32_e32 v106, v32
	v_cvt_f32_i32_e32 v108, v33
	v_cvt_f32_i32_e32 v54, v18
	v_cvt_f32_i32_e32 v55, v19
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v33, v21
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v18, v24
	v_cvt_f32_i32_e32 v19, v25
	v_cvt_f32_i32_e32 v24, v10
	v_cvt_f32_i32_e32 v23, v12
	v_cvt_f32_i32_e32 v22, v13
	v_cvt_f32_i32_e32 v42, v15
	v_cvt_f32_i32_e32 v57, v16
	v_cvt_f32_i32_e32 v56, v17
	v_cvt_f32_i32_e32 v12, v8
	v_cvt_f32_i32_e32 v132, v39
	v_cvt_f32_i32_e32 v39, v47
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s1, s22, s11
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v94, v141
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v141, v52
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v95, v142
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v142, v53
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_add_i32 s1, s1, s21
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v166, v116
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v116, v41
	v_cvt_f32_i32_e32 v41, v63
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v112, v146
	v_cvt_f32_i32_e32 v113, v147
	v_cvt_f32_i32_e32 v86, v137
	v_cvt_f32_i32_e32 v87, v138
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v147, v36
	v_cvt_f32_i32_e32 v148, v37
	v_cvt_f32_i32_e32 v36, v64
	v_cvt_f32_i32_e32 v37, v65
	v_cvt_f32_i32_e32 v65, v1
	v_cvt_f32_i32_e32 v102, v2
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v162, v227
	v_cvt_f32_i32_e32 v164, v211
	v_cvt_f32_i32_e32 v165, v115
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v173, v11
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v145, v128
	v_cvt_f32_i32_e32 v128, v151
	v_cvt_f32_i32_e32 v129, v152
	v_cvt_f32_i32_e32 v161, v226
	v_cvt_f32_i32_e32 v163, v210
	v_cvt_f32_i32_e32 v84, v214
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v11, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v115, v40
	v_cvt_f32_i32_e32 v40, v62
	v_cvt_f32_i32_e32 v62, v43
	v_cvt_f32_i32_e32 v43, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.h, v7.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v149, v240
	v_cvt_f32_i32_e32 v150, v241
	v_cvt_f32_i32_e32 v140, v223
	v_cvt_f32_i32_e32 v139, v222
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v136, v253
	v_cvt_f32_i32_e32 v135, v252
	v_cvt_f32_i32_e32 v133, v236
	v_cvt_f32_i32_e32 v134, v237
	v_cvt_f32_i32_e32 v124, v225
	v_cvt_f32_i32_e32 v120, v255
	v_cvt_f32_i32_e32 v123, v224
	v_cvt_f32_i32_e32 v118, v239
	v_cvt_f32_i32_e32 v100, v250
	v_cvt_f32_i32_e32 v119, v254
	v_cvt_f32_i32_e32 v117, v238
	v_cvt_f32_i32_e32 v98, v234
	v_cvt_f32_i32_e32 v107, v221
	v_cvt_f32_i32_e32 v103, v220
	v_cvt_f32_i32_e32 v101, v251
	v_cvt_f32_i32_e32 v92, v218
	v_cvt_f32_i32_e32 v99, v235
	v_cvt_f32_i32_e32 v88, v232
	v_cvt_f32_i32_e32 v90, v248
	v_cvt_f32_i32_e32 v93, v219
	v_cvt_f32_i32_e32 v91, v249
	v_cvt_f32_i32_e32 v89, v233
	v_cvt_f32_i32_e32 v82, v244
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v85, v215
	v_cvt_f32_i32_e32 v80, v228
	v_cvt_f32_i32_e32 v83, v245
	v_cvt_f32_i32_e32 v81, v229
	v_cvt_f32_i32_e32 v77, v217
	v_cvt_f32_i32_e32 v76, v216
	v_cvt_f32_i32_e32 v74, v246
	v_cvt_f32_i32_e32 v72, v231
	v_cvt_f32_i32_e32 v75, v247
	v_cvt_f32_i32_e32 v73, v230
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b32_e32 v9, 4, v9
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v66, 1, v66
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt vmcnt(0)
	v_and_or_b32 v104, v0, 16, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v105, v9, v66
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v111, 32, v104
	v_or_b32_e32 v114, 64, v104
	v_or_b32_e32 v121, 0x60, v104
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s22, v104
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v0, 2, v105
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v66, s22, v111
	v_or_b32_e32 v67, s22, v114
	v_or_b32_e32 v68, s22, v121
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v69, s21, v105
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v70, s21, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v67, 1, v67
	v_lshlrev_b32_e32 v68, 1, v68
	s_clause 0x3
	buffer_load_u16 v153, v9, s[12:15], 0 offen
	buffer_load_u16 v154, v66, s[12:15], 0 offen
	buffer_load_u16 v155, v67, s[12:15], 0 offen
	buffer_load_u16 v156, v68, s[12:15], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v9, 1, v69
	v_lshlrev_b32_e32 v66, 1, v70
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v67, s20, v105, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v0, s20, v0, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x3
	buffer_load_u16 v157, v9, s[12:15], 0 offen
	buffer_load_u16 v158, v66, s[12:15], 0 offen
	buffer_load_u16 v159, v67, s[12:15], 0 offen
	buffer_load_u16 v160, v0, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_or_b32_e32 v3, 4, v105
	v_or_b32_e32 v5, 6, v105
	v_or_b32_e32 v31, 8, v105
	v_or_b32_e32 v46, 10, v105
	v_or_b32_e32 v8, 0x8e, v105
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v4, s20, v3, 1
	v_add_lshl_u32 v6, s20, v5, 1
	s_clause 0x1
	buffer_load_u16 v174, v4, s[12:15], 0 offen
	buffer_load_u16 v175, v6, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v10, 0x8c, v105
	v_or_b32_e32 v6, 0x8a, v105
	v_or_b32_e32 v13, 0x88, v105
	v_or_b32_e32 v15, 0x86, v105
	v_or_b32_e32 v16, 0x84, v105
	v_or_b32_e32 v17, 0x82, v105
	v_or_b32_e32 v25, 0x80, v105
	v_or_b32_e32 v26, 14, v105
	v_or_b32_e32 v30, 12, v105
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v47, s21, v3
	v_or_b32_e32 v52, s21, v5
	v_or_b32_e32 v53, s21, v31
	v_or_b32_e32 v63, s21, v46
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v144
	v_cvt_f32_i32_e32 v144, v127
	v_cvt_f32_i32_e32 v70, v130
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v4, s11, v104
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v64, s21, v30
	v_or_b32_e32 v104, s21, v26
	v_or_b32_e32 v105, s21, v25
	v_or_b32_e32 v127, s21, v16
	v_or_b32_e32 v130, s21, v15
	v_or_b32_e32 v137, s21, v13
	v_or_b32_e32 v138, s21, v6
	v_or_b32_e32 v146, s21, v8
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v179, s20, v15, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v15, 1, v47
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v178, s20, v17, 1
	v_add_lshl_u32 v177, s20, v30, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 1, v53
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v176, s20, v31, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v31, 1, v63
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v46, s20, v46, 1
	v_add_lshl_u32 v26, s20, v26, 1
	v_add_lshl_u32 v25, s20, v25, 1
	v_add_lshl_u32 v180, s20, v6, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, s11, v111
	v_mul_lo_u32 v5, s11, v114
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v47, 1, v64
	v_lshlrev_b32_e32 v53, 1, v105
	v_lshlrev_b32_e32 v64, 1, v127
	v_lshlrev_b32_e32 v111, 1, v130
	v_lshlrev_b32_e32 v114, 1, v137
	v_lshlrev_b32_e32 v127, 1, v138
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v16, s20, v16, 1
	v_add_lshl_u32 v13, s20, v13, 1
	v_add_lshl_u32 v8, s20, v8, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v3, s11, v121
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v68, v212
	v_cvt_f32_i32_e32 v69, v213
	v_cvt_f32_i32_e32 v67, v242
	v_cvt_f32_i32_e32 v9, v243
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s11, s15
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v122, 0x78, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v0, v143
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v143, s21, v10
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v10, s20, v10, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, s1, v122
	v_add3_u32 v1, s1, v122, 0x80
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v122, s21, v17
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v17, 1, v52
	v_lshlrev_b32_e32 v52, 1, v104
	v_lshlrev_b32_e32 v130, 1, v143
	v_lshlrev_b32_e32 v143, 1, v146
	v_lshlrev_b32_e32 v63, 1, v122
	s_clause 0x19
	buffer_load_u16 v151, v15, s[12:15], 0 offen
	buffer_load_u16 v152, v17, s[12:15], 0 offen
	buffer_load_u16 v137, v30, s[12:15], 0 offen
	buffer_load_u16 v138, v31, s[12:15], 0 offen
	buffer_load_u16 v121, v47, s[12:15], 0 offen
	buffer_load_u16 v122, v52, s[12:15], 0 offen
	buffer_load_u16 v104, v53, s[12:15], 0 offen
	buffer_load_u16 v105, v63, s[12:15], 0 offen
	buffer_load_u16 v52, v64, s[12:15], 0 offen
	buffer_load_u16 v53, v111, s[12:15], 0 offen
	buffer_load_u16 v30, v114, s[12:15], 0 offen
	buffer_load_u16 v31, v127, s[12:15], 0 offen
	buffer_load_u16 v15, v130, s[12:15], 0 offen
	buffer_load_u16 v17, v143, s[12:15], 0 offen
	buffer_load_u16 v143, v176, s[12:15], 0 offen
	buffer_load_u16 v146, v46, s[12:15], 0 offen
	buffer_load_u16 v127, v177, s[12:15], 0 offen
	buffer_load_u16 v130, v26, s[12:15], 0 offen
	buffer_load_u16 v111, v25, s[12:15], 0 offen
	buffer_load_u16 v114, v178, s[12:15], 0 offen
	buffer_load_u16 v63, v16, s[12:15], 0 offen
	buffer_load_u16 v64, v179, s[12:15], 0 offen
	buffer_load_u16 v46, v13, s[12:15], 0 offen
	buffer_load_u16 v47, v180, s[12:15], 0 offen
	buffer_load_u16 v25, v10, s[12:15], 0 offen
	buffer_load_u16 v26, v8, s[12:15], 0 offen
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v13, 16, v153
	v_lshlrev_b32_e32 v10, 16, v154
	v_lshlrev_b32_e32 v16, 16, v156
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v153, 16, v157
	v_lshlrev_b32_e32 v154, 16, v158
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v157, 16, v160
	v_lshlrev_b32_e32 v156, 16, v159
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v8, 16, v155
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v155, v16, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v158, v16, v154 :: v_dual_mul_f32 v183, v10, v157
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v155, v155, v165 :: v_dual_mul_f32 v158, v158, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v166, v183, v170
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v178, v13, v156
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v176, v13, v153 :: v_dual_mul_f32 v165, v178, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v161, v176, v161 :: v_dual_mul_f32 v182, v10, v156
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v170, 0xbfb8aa3b, v165
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v160, v16, v157
	v_mul_f32_e32 v179, v13, v157
	v_mul_f32_e32 v157, v8, v157
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v167, v182, v169
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v159, v16, v156
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v160, v160, v173
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v170
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v157, v157, v172
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v156, v8, v156
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v24, v159, v24
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v169, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v172, 0xbfb8aa3b, v167
	v_cndmask_b32_e64 v170, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v156, v156, v171
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v180, v10, v153
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v173, 0xbfb8aa3b, v166 :: v_dual_fmac_f32 v170, 0xbfb8aa3b, v165
	v_dual_mul_f32 v176, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v163, v180, v163
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v177, v13, v154
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v169, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v173
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v172
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v181, v10, v154
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v159, v177, v162 :: v_dual_mul_f32 v162, v179, v168
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v168, 0xbfb8aa3b, v24
	v_fmac_f32_e32 v169, 0xbfb8aa3b, v160
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v170, v170
	v_mul_f32_e32 v171, 0xbfb8aa3b, v162
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v168
	v_exp_f32_e32 v169, v169
	v_cndmask_b32_e64 v173, 0, 0x42800000, s4
	v_cndmask_b32_e64 v172, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v171
	v_cndmask_b32_e64 v168, 0, 0x42800000, s1
	v_mul_f32_e32 v177, 0xbfb8aa3b, v157
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v176
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v164, v181, v164
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v171, 0, 0x42800000, s2
	v_fmac_f32_e32 v168, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v177
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v181, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v171, 0xbfb8aa3b, v162 :: v_dual_fmac_f32 v172, 0xbfb8aa3b, v167
	v_exp_f32_e32 v168, v168
	v_cndmask_b32_e64 v177, 0, 0x42800000, s6
	v_ldexp_f32 v169, v169, v178
	v_cndmask_b32_e64 v176, 0, 0x42800000, s7
	v_fmac_f32_e32 v173, 0xbfb8aa3b, v166
	v_exp_f32_e32 v171, v171
	v_ldexp_f32 v170, v170, v181
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v169, 1.0, v169
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v176, 0xbfb8aa3b, v156
	v_ldexp_f32 v168, v168, v179
	v_fmac_f32_e32 v177, 0xbfb8aa3b, v157
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v172, v172
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v170, 1.0, v170
	v_add_f32_e32 v168, 1.0, v168
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v177, v177
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v178, null, v169, v169, v160
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v183, 0, 0xffffffc0, s5
	v_exp_f32_e32 v176, v176
	v_ldexp_f32 v171, v171, v180
	v_cndmask_b32_e64 v184, 0, 0xffffffc0, s6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v192, v178
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v185, 0, 0xffffffc0, s7
	v_ldexp_f32 v173, v173, v182
	v_ldexp_f32 v172, v172, v183
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v171, 1.0, v171
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v177, v177, v184
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v180, null, v168, v168, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v176, v176, v185
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v172, 1.0, v172 :: v_dual_add_f32 v173, 1.0, v173
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v182, null, v171, v171, v162
	v_div_scale_f32 v184, null, v170, v170, v165
	v_rcp_f32_e32 v193, v180
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v201, -v178, v192, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v177, 1.0, v177 :: v_dual_add_f32 v176, 1.0, v176
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v186, null, v173, v173, v166
	v_div_scale_f32 v188, null, v172, v172, v167
	s_waitcnt lgkmcnt(0)
	v_rcp_f32_e32 v194, v182
	v_rcp_f32_e32 v195, v184
	v_fmac_f32_e32 v192, v201, v192
	v_div_scale_f32 v190, null, v177, v177, v157
	v_rcp_f32_e32 v196, v186
	v_rcp_f32_e32 v197, v188
	v_fma_f32 v202, -v180, v193, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v198, v190
	v_div_scale_f32 v179, vcc_lo, v160, v169, v160
	v_fma_f32 v203, -v182, v194, 1.0
	v_fma_f32 v204, -v184, v195, 1.0
	v_div_scale_f32 v181, s1, v24, v168, v24
	v_dual_fmac_f32 v193, v202, v193 :: v_dual_fmac_f32 v194, v203, v194
	v_div_scale_f32 v183, s2, v162, v171, v162
	v_div_scale_f32 v185, s3, v165, v170, v165
	v_fma_f32 v205, -v186, v196, 1.0
	v_fma_f32 v206, -v188, v197, 1.0
	v_fmac_f32_e32 v195, v204, v195
	v_dual_mul_f32 v201, v179, v192 :: v_dual_mul_f32 v202, v181, v193
	v_fma_f32 v207, -v190, v198, 1.0
	v_div_scale_f32 v187, s4, v166, v173, v166
	v_div_scale_f32 v189, s5, v167, v172, v167
	v_dual_fmac_f32 v196, v205, v196 :: v_dual_fmac_f32 v197, v206, v197
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v198, v207, v198
	v_dual_mul_f32 v203, v183, v194 :: v_dual_mul_f32 v204, v185, v195
	v_fma_f32 v209, -v178, v201, v179
	v_div_scale_f32 v200, s6, v157, v177, v157
	v_fma_f32 v210, -v180, v202, v181
	v_div_scale_f32 v191, null, v176, v176, v156
	v_dual_mul_f32 v205, v187, v196 :: v_dual_mul_f32 v206, v189, v197
	v_fma_f32 v211, -v182, v203, v183
	v_fma_f32 v212, -v184, v204, v185
	v_fmac_f32_e32 v201, v209, v192
	v_dual_mul_f32 v207, v200, v198 :: v_dual_fmac_f32 v202, v210, v193
	v_rcp_f32_e32 v199, v191
	v_fma_f32 v214, -v188, v206, v189
	v_dual_fmac_f32 v203, v211, v194 :: v_dual_fmac_f32 v204, v212, v195
	v_fma_f32 v178, -v178, v201, v179
	v_fma_f32 v179, -v180, v202, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v206, v214, v197
	v_fma_f32 v180, -v182, v203, v183
	v_fma_f32 v213, -v186, v205, v187
	v_div_fmas_f32 v178, v178, v192, v201
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v208, -v191, v199, 1.0
	v_div_fmas_f32 v179, v179, v193, v202
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v181, -v184, v204, v185
	v_div_fmas_f32 v180, v180, v194, v203
	v_div_fixup_f32 v160, v178, v169, v160
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v199, v208, v199
	v_div_scale_f32 v184, s7, v156, v176, v156
	v_div_fmas_f32 v169, v181, v195, v204
	v_div_fixup_f32 v162, v180, v171, v162
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v158, v158, v160
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v205, v213, v196
	v_fma_f32 v183, -v188, v206, v189
	v_div_fixup_f32 v160, v169, v170, v165
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v159, v159, v162 :: v_dual_mul_f32 v162, v184, v199
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v182, -v186, v205, v187
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v179, v168, v24
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v160, v161, v160
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v159.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v168, v182, v196, v205
	s_mov_b32 vcc_lo, s5
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v24, v155, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v165, v183, v197, v206
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v14.l, v160.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v161, v168, v173, v166
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_cmp_o_f32_e64 s1, v160, v160
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v155, v165, v172, v167
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v165, 1, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v161, v164, v161 :: v_dual_and_b32 v14, 1, v14
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v164, -v191, v162, v184
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v155, v163, v155 :: v_dual_mul_f32 v154, v8, v154
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v163, -v190, v207, v200
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v159, v159, v165, 0x7fff
	v_mov_b16_e64 v7.l, v161.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v162, v164, v199
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v160, v160, v14, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v207, v163, v198
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.h, 0x7fff, v159.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v150, v154, v150 :: v_dual_and_b32 v165, 1, v7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v163, -v190, v207, v200
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v153, v8, v153
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v164, -v191, v162, v184
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v159.l, v155.h
	v_mov_b16_e64 v159.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v163, v163, v198, v207
	s_mov_b32 vcc_lo, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v160.h, s1
	v_add3_u32 v160, v161, v165, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v162, v164, v199, v162
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v149, v153, v149
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v153, v163, v177, v157
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v165, 16, v175
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v156, v162, v176, v156
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v150, v150, v153 :: v_dual_and_b32 v159, 1, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v154, v16, v165
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v150.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v157, v155, v159, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v153, v154, v22
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v149, v149, v156 :: v_dual_lshlrev_b32 v156, 16, v174
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v160.h, vcc_lo
	v_and_b32_e32 v159, 1, v7
	v_cmp_o_f32_e64 s2, v150, v150
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v160, v16, v156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v155.h, v7.h
	v_add3_u32 v159, v150, v159, 0x7fff
	v_mov_b16_e64 v7.l, v158.h
	v_mov_b16_e64 v159.l, v24.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v150, v160, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v154, 0xbfb8aa3b, v153
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v155.l, v149.h
	v_cndmask_b16 v23.h, 0x7fff, v159.h, s2
	v_mov_b16_e64 v159.h, v7.h
	v_cndmask_b16 v22.l, 0x7fff, v157.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v154, 0, 0x42800000, s1
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v149, v149
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v154, 0xbfb8aa3b, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v154, v154
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v154, v154, v160
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v155, 1, v155
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v121, 16, v121
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v154, 1.0, v154
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v155, v149, v155, 0x7fff
	v_and_b32_e32 v149, 1, v159
	v_and_b32_e32 v159, 1, v7
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v162, s2, v153, v154, v153
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v155.h, s1
	v_add3_u32 v155, v158, v159, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v159, v13, v165
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v157, 0xbfb8aa3b, v150
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v161, v13, v156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v158, v158
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v160, null, v154, v154, v153
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v148, v159, v148
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v147, v161, v147
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v159, v160
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v157, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v63, 16, v63
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v157, 0xbfb8aa3b, v150
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v157, v157
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v157, v157, v158
	v_mul_f32_e32 v158, 0xbfb8aa3b, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v149, v24, v149, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v155.h, s1
	v_cndmask_b16 v24.l, 0x7fff, v149.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v149, 1.0, v157
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v157, -v160, v159, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v155, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v159, v157, v159
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v155, 0xbfb8aa3b, v148 :: v_dual_mul_f32 v164, v162, v159
	v_exp_f32_e32 v155, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v167, -v160, v164, v162
	v_fmac_f32_e32 v164, v167, v159
	v_div_scale_f32 v161, null, v149, v149, v150
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v155, v155, v163
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v163, v16, v151
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v160, -v160, v164, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v155, 1.0, v155 :: v_dual_mul_f32 v144, v163, v144
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v158, 0xbfb8aa3b, v147
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v159, v160, v159, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v158
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v158, v161
	v_div_fixup_f32 v153, v159, v154, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v157, 0, 0x42800000, s1
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v166, -v161, v158, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v158, v166, v158
	v_div_scale_f32 v166, s1, v150, v149, v150
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v169, v166, v158
	v_fma_f32 v171, -v161, v169, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v169, v171, v158
	v_fma_f32 v154, -v161, v169, v166
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v166, v10, v156
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v159, s2, v148, v155, v148
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v157, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v154, v154, v158, v169
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v141, v166, v141
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v157, v157
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v149, v154, v149, v150
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v150, v10, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v144, v144, v149
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v142, v150, v142
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v150, v13, v152
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v157, v157, v168
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v168, null, v155, v155, v148
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v140, v150, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v166, 0xbfb8aa3b, v142 :: v_dual_add_f32 v157, 1.0, v157
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v170, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v166
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v162, null, v157, v157, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v160, v162
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v164, -v168, v170, 1.0
	v_fmac_f32_e32 v170, v164, v170
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v161, -v162, v160, 1.0
	v_mul_f32_e32 v158, v159, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v160, v161, v160
	v_div_scale_f32 v161, s1, v147, v157, v147
	v_fma_f32 v163, -v168, v158, v159
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v167, v16, v152 :: v_dual_mul_f32 v154, v13, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v164, v161, v160
	v_fmac_f32_e32 v158, v163, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v145, v167, v145
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v163, -v162, v164, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v150, -v168, v158, v159
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v159, 0xbfb8aa3b, v141 :: v_dual_fmac_f32 v164, v163, v160
	v_cndmask_b32_e64 v163, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v150, v150, v170, v158
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v159
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v158, -v162, v164, v161
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v163, 0xbfb8aa3b, v142
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v148, v150, v155, v148
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v139, v154, v139
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v159, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v158, v158, v160, v164
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v154, v163
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v140, v140, v148
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v150.h, v7.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v155, v8, v156
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v147, v158, v157, v147
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v145, v145, v153
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v140.h
	v_cmp_o_f32_e64 s1, v140, v140
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v44, v155, v44
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v139, v139, v147
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v147, v154, v149
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v158, 0xbfb8aa3b, v44
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v150.l, v139.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v159, 0xbfb8aa3b, v141
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v147, 1.0, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v158
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v150, 1, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v148, v159
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v154, null, v147, v147, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v158, 0, 0x42800000, s2
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v156, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v158, 0xbfb8aa3b, v44 :: v_dual_and_b32 v153, 1, v7
	v_ldexp_f32 v148, v148, v149
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v149, v8, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v153, v140, v153, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v148, 1.0, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v140, -v154, v156, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v150, v139, v150, 0x7fff
	v_cmp_o_f32_e64 s2, v139, v139
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v157, null, v148, v148, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v156, v140, v156
	v_div_scale_f32 v160, s3, v141, v148, v141
	v_rcp_f32_e32 v155, v157
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v157, v155, 1.0
	v_fmac_f32_e32 v155, v140, v155
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v149, v149, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v140, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v29, 0xbfb8aa3b, v149
	v_ldexp_f32 v140, v140, v162
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v162, v10, v152
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v153.h, s1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v152, v8, v152
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v140, 1.0, v140
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v136, v162, v136
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v159, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, vcc_lo
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v134, v152, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v150.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v159, 0xbfb8aa3b, v149
	v_exp_f32_e32 v153, v159
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v159, s1, v142, v147, v142
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v153, v153, v158
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v158, v160, v155
	v_fma_f32 v165, -v157, v158, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v161, v159, v156 :: v_dual_fmac_f32 v158, v165, v155
	v_fma_f32 v164, -v154, v161, v159
	v_div_scale_f32 v165, null, v140, v140, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v157, -v157, v158, v160
	v_fmac_f32_e32 v161, v164, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v154, -v154, v161, v159
	v_rcp_f32_e32 v159, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v154, v154, v156, v161
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v155, v157, v155, v158
	v_div_fixup_f32 v142, v154, v147, v142
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v153, 1.0, v153
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v147, -v165, v159, 1.0
	v_div_fixup_f32 v141, v155, v148, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v136, v136, v142
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v164, null, v153, v153, v149
	v_div_scale_f32 v148, vcc_lo, v149, v153, v149
	v_fmac_f32_e32 v159, v147, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v162, v164
	v_div_scale_f32 v147, s1, v44, v140, v44
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v136.h
	v_mov_b16_e64 v142.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v156, -v164, v162, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v163, v10, v151
	v_mul_f32_e32 v151, v8, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v162, v156, v162 :: v_dual_mul_f32 v135, v163, v135
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v133, v151, v133 :: v_dual_and_b32 v156, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v135, v135, v141
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v141, v148, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v150, v136, v156, 0x7fff
	v_mov_b16_e64 v142.l, v135.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v154, -v164, v141, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v142, 1, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v141, v154, v162
	v_fma_f32 v148, -v164, v141, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v141, v148, v162, v141
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v141, v141, v153, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v139, v147, v159 :: v_dual_mul_f32 v134, v134, v141
	v_fma_f32 v155, -v165, v139, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v134.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v139, v155, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v134, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v147, -v165, v139, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v139, v147, v159, v139
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_add3_u32 v136, v135, v142, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v44, v139, v140, v44
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v140, 16, v143
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v141, 1, v7
	v_mov_b16_e64 v7.l, v145.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v142, v16, v140 :: v_dual_lshlrev_b32 v137, 16, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v141, v134, v141, 0x7fff
	v_mov_b16_e64 v141.l, v144.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v134, v142, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v141.h, s2
	v_mov_b16_e64 v141.h, v7.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v147, v16, v146 :: v_dual_mul_f32 v44, v133, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v139, v147, v42
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.h, 0x7fff, v150.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_mov_b16_e64 v135.l, v44.h
	v_mov_b16_e64 v135.h, v7.h
	v_cndmask_b16 v42.l, 0x7fff, v136.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v136, 0xbfb8aa3b, v134 :: v_dual_and_b32 v135, 1, v135
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v135, v44, v135, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v136, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v133, 0xbfb8aa3b, v139
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v133
	v_exp_f32_e32 v136, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v133, 0, 0x42800000, s1
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v44, v44
	v_and_b32_e32 v44, 1, v141
	v_and_b32_e32 v141, 1, v7
	v_cndmask_b16 v43.l, 0x7fff, v135.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v135, v144, v44, 0x7fff
	v_add3_u32 v44, v145, v141, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v141, v13, v146
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v136, v136, v143
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v144, v13, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v135.h, vcc_lo
	v_cmp_o_f32_e64 s1, v145, v145
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v132, v141, v132
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v135, 1.0, v136
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v133, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v143, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v145, null, v135, v135, v134
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v133, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v143
	v_cndmask_b32_e64 v136, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v133, v133, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v132
	v_exp_f32_e32 v136, v136
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v136, v136, v148
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v131, v144, v131
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v148, v16, v137
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v136, 1.0, v136 :: v_dual_add_f32 v133, 1.0, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v144, 0xbfb8aa3b, v131
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v128, v148, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v142, null, v133, v133, v139
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v144
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v144, v145
	v_div_scale_f32 v147, s2, v139, v133, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v141, v142
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v150, -v145, v144, 1.0
	v_fma_f32 v143, -v142, v141, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v144, v150, v144 :: v_dual_fmac_f32 v141, v143, v141
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v143, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v150, s1, v134, v135, v134
	v_mul_f32_e32 v149, v147, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v131
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v153, v150, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v151, -v142, v149, v147
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v155, -v145, v153, v150
	v_fmac_f32_e32 v149, v151, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v153, v155, v144
	v_fma_f32 v142, -v142, v149, v147
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v143, v143, v152
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v152, null, v136, v136, v132
	v_div_fmas_f32 v141, v142, v141, v149
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v154, v152
	v_div_fixup_f32 v133, v141, v133, v139
	v_fma_f32 v139, -v145, v153, v150
	v_div_scale_f32 v141, s2, v132, v136, v132
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v150, v10, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v139, v139, v144, v153
	v_fma_f32 v149, -v152, v154, 1.0
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v125, v150, v125 :: v_dual_fmac_f32 v154, v149, v154
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v144, v141, v154
	v_div_fixup_f32 v134, v139, v135, v134
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v135, v10, v146
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v143, 1.0, v143
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v139, v13, v137
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v148, -v152, v144, v141
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v128, v128, v134
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v126, v135, v126
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v147, null, v143, v143, v131
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v135, v13, v138
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v144, v148, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v150, 0xbfb8aa3b, v126
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v142, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v151, v16, v138 :: v_dual_mul_f32 v124, v135, v124
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v135, -v152, v144, v141
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v141, 0xbfb8aa3b, v125
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v150
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v123, v139, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v135, v135, v154, v144
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v141
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v145, -v147, v142, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v132, v135, v136, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v141, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v142, v145, v142
	v_div_scale_f32 v145, s1, v131, v143, v131
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v141, 0xbfb8aa3b, v125
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v129, v151, v129 :: v_dual_mul_f32 v124, v124, v132
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v149, v145, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v132, v141
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v129, v129, v133
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v148, -v147, v149, v145
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v124.h
	v_cmp_o_f32_e64 s1, v124, v124
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v149, v148, v142
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v148, 0, 0x42800000, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v132, v132, v133
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v133, v8, v146
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v135, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v144, -v147, v149, v145
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v148, 0xbfb8aa3b, v126
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v132, 1.0, v132 :: v_dual_mul_f32 v61, v133, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v135, v124, v135, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v142, v144, v142, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v139, v148
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v147, v10, v137
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v131, v142, v143, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v119, v147, v119
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v123, v123, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v131, v139, v134
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v139, v8, v140
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v140, null, v132, v132, v125
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v134.h, v7.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v131, 1.0, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v139, v139, v51
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v141, v140
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v136, null, v131, v131, v126
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v142, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.h, 0x7fff, v135.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v133, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v142
	v_cndmask_b32_e64 v143, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v142, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v124, -v136, v133, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v142, 0xbfb8aa3b, v139
	v_exp_f32_e32 v135, v143
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v143, s1, v126, v131, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v133, v124, v133
	v_fma_f32 v124, -v140, v141, 1.0
	v_mul_f32_e32 v145, v143, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v141, v124, v141
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v124, v142
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v148, -v136, v145, v143
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v135, v135, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v145, v148, v133
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v124, v124, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v135, 1.0, v135 :: v_dual_mul_f32 v146, v10, v138
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v136, -v136, v145, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v144, s3, v125, v132, v125
	v_div_fmas_f32 v133, v136, v133, v145
	s_mov_b32 vcc_lo, s3
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v120, v146, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v142, v144, v141
	v_div_fixup_f32 v126, v133, v131, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v149, -v140, v142, v144
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v120, v120, v126
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v126.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v142, v149, v141
	v_div_scale_f32 v149, null, v124, v124, v139
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v134.l, v123.h
	v_cmp_o_f32_e64 s2, v123, v123
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v140, -v140, v142, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v143, v149
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v120.h
	v_and_b32_e32 v134, 1, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v136, v140, v141, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v134, v123, v134, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v125, v136, v132, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v131, -v149, v143, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.l, 0x7fff, v134.h, s2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v134, v8, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v119, v119, v125
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v143, v131, v143
	v_div_scale_f32 v131, s1, v139, v124, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v117, v134, v117
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v126.l, v119.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v123, v131, v143 :: v_dual_and_b32 v126, 1, v126
	v_fma_f32 v136, -v149, v123, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v123, v136, v143
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v136, v8, v138
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v148, null, v135, v135, v61
	v_div_scale_f32 v132, vcc_lo, v61, v135, v61
	v_fma_f32 v131, -v149, v123, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v146, v148
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v118, v136, v118
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v140, -v148, v146, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v140, v146
	v_dual_mul_f32 v125, v132, v146 :: v_dual_and_b32 v140, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v148, v125, v132
	v_fmac_f32_e32 v125, v133, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v133, v120, v140, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v132, -v148, v125, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v125, v132, v146, v125
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v123, v131, v143, v123
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v120, v120
	v_add3_u32 v120, v119, v126, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v123, v123, v124, v139
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v124, 16, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v117, v117, v123 :: v_dual_mul_f32 v126, v16, v124
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v123.h, v7.h
	v_mov_b16_e32 v123.l, v117.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v126, v126, v57
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v61, v125, v135, v61
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v125, v16, v130
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v123, 1, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v61, v118, v61 :: v_dual_mul_f32 v118, v125, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.h, 0x7fff, v133.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_mov_b16_e32 v7.l, v61.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v119, 0xbfb8aa3b, v118
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v61, v61
	v_cndmask_b16 v56.l, 0x7fff, v120.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v120, 0xbfb8aa3b, v126 :: v_dual_and_b32 v125, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v119
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v129.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v125, v61, v125, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v119, 0, 0x42800000, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v117, v123, 0x7fff
	v_mov_b16_e64 v123.l, v128.h
	v_mov_b16_e32 v123.h, v7.h
	v_cndmask_b16 v57.h, 0x7fff, v125.h, s2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v119, 0xbfb8aa3b, v118
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v120, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v117, v117
	v_and_b32_e32 v117, 1, v123
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v119, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v120, 0xbfb8aa3b, v126 :: v_dual_and_b32 v123, 1, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.l, 0x7fff, v61.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v117, v128, v117, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v129, v123, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v120, v120
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v123, v13, v130
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v119, v119, v125
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v128, v13, v124
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v129, v129
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v116, v123, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.l, 0x7fff, v117.h, vcc_lo
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v119, 1.0, v119
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v115, v128, v115
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v120, v120, v127
	v_mul_f32_e32 v127, 0xbfb8aa3b, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v125, null, v119, v119, v118
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v128, 0xbfb8aa3b, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v127
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v117, 1.0, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v123, v125
	v_div_scale_f32 v131, s2, v118, v119, v118
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v120, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v128
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v129, null, v117, v117, v126
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v127, -v125, v123, 1.0
	v_rcp_f32_e32 v128, v129
	s_mov_b32 vcc_lo, s2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v120, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v123, v127, v123
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v127, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v133, v131, v123
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v115
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v134, -v129, v128, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v120, v120, v132
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v132, v16, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v135, -v125, v133, v131
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v127, v127
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v128, v134, v128
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v120, 1.0, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v134, s1, v126, v117, v126
	v_dual_fmac_f32 v133, v135, v123 :: v_dual_mul_f32 v112, v132, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v137, v134, v128
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v127, v127, v136
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v136, null, v120, v120, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v125, -v125, v133, v131
	v_fma_f32 v139, -v129, v137, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v138, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v123, v125, v123, v133
	v_fmac_f32_e32 v137, v139, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v131, null, v127, v127, v115
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v118, v123, v119, v118
	v_fma_f32 v119, -v129, v137, v134
	v_rcp_f32_e32 v125, v131
	v_fma_f32 v133, -v136, v138, 1.0
	v_div_scale_f32 v123, s2, v116, v120, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v119, v119, v128, v137
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v134, v10, v124
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v138, v133, v138
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v117, v119, v117, v126
	v_fma_f32 v129, -v131, v125, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v128, v123, v138
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v119, v10, v130
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v109, v134, v109
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v112, v112, v117
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v125, v129, v125
	v_div_scale_f32 v129, s1, v115, v127, v115
	v_fma_f32 v132, -v136, v128, v123
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v110, v119, v110
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v119, v13, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v133, v129, v125 :: v_dual_fmac_f32 v128, v132, v138
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v134, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v107, v119, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v132, -v131, v133, v129
	v_fma_f32 v119, -v136, v128, v123
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v123, 0xbfb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v133, v132, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v119, v119, v138, v128
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v132, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v128, -v131, v133, v129
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v131, v10, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v123, 0, 0x42800000, s2
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v125, v128, v125, v133
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v100, v131, v100
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v126, v13, v121
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v116, v119, v120, v116
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v109
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v115, v125, v127, v115
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s3
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v103, v126, v103
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v126, v132
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v107, v107, v116
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v116, v123
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v123, v8, v124
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v115, v103, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v107.h
	v_cmp_o_f32_e64 s1, v107, v107
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v106, v123, v106
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v103, v126, v117
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s2
	v_dual_mul_f32 v126, 0xbfb8aa3b, v106 :: v_dual_add_f32 v119, 1.0, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v116, v116, v117
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v117, v8, v130
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v103, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v126
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v120, null, v119, v119, v110
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v108, v117, v108
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v116, 1.0, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v103, v107, v103, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v117, v120
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v126, 0, 0x42800000, s2
	v_mul_f32_e32 v123, 0xbfb8aa3b, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v124, null, v116, v116, v109
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v103.h, 0x7fff, v103.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v123
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v125, v124
	v_div_scale_f32 v127, s1, v110, v119, v110
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v107, -v120, v117, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v123, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v128, s3, v109, v116, v109
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v117, v107, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v107, -v124, v125, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v129, v127, v117
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v125, v107, v125
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v107, v126
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v132, -v120, v129, v127
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v129, v132, v117
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v123, v123, v126
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v126, v128, v125
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v107, v107, v130
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v130, v10, v122
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v120, -v120, v129, v127
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v133, -v124, v126, v128
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v107, 1.0, v107
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v135, v16, v122
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v101, v130, v101
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v132, null, v123, v123, v108
	v_fmac_f32_e32 v126, v133, v125
	v_div_scale_f32 v133, null, v107, v107, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v130, v132
	v_div_fmas_f32 v117, v120, v117, v129
	v_fma_f32 v124, -v124, v126, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v127, v133
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v110, v117, v119, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v120, v124, v125, v126
	v_fma_f32 v124, -v132, v130, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v101, v101, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v109, v120, v116, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v117, -v133, v127, 1.0
	v_div_scale_f32 v116, vcc_lo, v108, v123, v108
	v_fmac_f32_e32 v130, v124, v130
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v100, v100, v109 :: v_dual_fmac_f32 v127, v117, v127
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v117, s1, v106, v107, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v109, v116, v130
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v101.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v110, v117, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v119, -v132, v109, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v124, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v120, -v133, v110, v117
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v113, v135, v113
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v109, v119, v130
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v119, v8, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v110, v120, v127 :: v_dual_mul_f32 v113, v113, v118
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v118.l, v115.h
	v_mov_b16_e32 v118.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v116, -v132, v109, v116
	v_fma_f32 v117, -v133, v110, v117
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v120, v8, v122
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v98, v119, v98
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v118, 1, v118
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v109, v116, v130, v109
	s_mov_b32 vcc_lo, s1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v99, v120, v99
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v110, v117, v127, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v118, v115, v118, 0x7fff
	v_mov_b16_e32 v115.l, v100.h
	v_mov_b16_e32 v115.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v108, v109, v123, v108
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v109, v16, v114
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v103.l, 0x7fff, v118.h, s2
	v_add3_u32 v118, v101, v124, 0x7fff
	v_and_b32_e32 v115, 1, v115
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v106, v110, v107, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v102, v109, v102 :: v_dual_mul_f32 v99, v99, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v101, v100, v115, 0x7fff
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v106, v98, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v98.h, 0x7fff, v118.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v100, 0xbfb8aa3b, v102
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v99.h
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v108, 16, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v107.l, v106.h
	v_mov_b16_e32 v107.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v110, v16, v108 :: v_dual_and_b32 v109, 1, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v99, v99
	v_and_b32_e32 v107, 1, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v100, 0, 0x42800000, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v109, v99, v109, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v99, v110, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v98.l, 0x7fff, v101.h, vcc_lo
	v_add3_u32 v101, v106, v107, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s1
	v_mul_f32_e32 v107, 0xbfb8aa3b, v99
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.h, 0x7fff, v109.h, s2
	v_mov_b16_e32 v109.l, v112.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v100, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v109.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v113.h
	v_cmp_o_f32_e64 s1, v106, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v106, 1, v109
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v107, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v109, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v65.l, 0x7fff, v101.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v100, v100, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v101, v112, v106, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v112, v112
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v100, 1.0, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v106, v113, v109, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v107, v107
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v109, v13, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v110, null, v100, v100, v102
	v_div_scale_f32 v115, s2, v102, v100, v102
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v109, v109, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v112, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v97.l, 0x7fff, v101.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v107, v107, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v111, 0xbfb8aa3b, v109
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v101, 1.0, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v107, -v110, v112, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v112, v107, v112
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v113, v113
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v113, v13, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v117, v115, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v97.h, 0x7fff, v106.h, s1
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v96, v113, v96
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v106, 0, 0x42800000, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v113, null, v101, v101, v99
	v_fma_f32 v119, -v110, v117, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v111, 0xbfb8aa3b, v96 :: v_dual_fmac_f32 v106, 0xbfb8aa3b, v109
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v117, v119, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v111, v113
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v106, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v110, -v110, v117, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v107, 0, 0x42800000, s1
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v110, v110, v112, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v96
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v118, -v113, v111, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v106, v106, v116
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v116, v16, v104
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v100, v110, v100, v102
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v107, v107
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v111, v118, v111 :: v_dual_add_f32 v106, 1.0, v106
	v_div_scale_f32 v118, s1, v99, v101, v99
	s_mov_b32 vcc_lo, s1
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v94, v116, v94
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v110, s2, v109, v106, v109
	v_mul_f32_e32 v121, v118, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v107, v107, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v120, null, v106, v106, v109
	v_fma_f32 v123, -v113, v121, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v107, 1.0, v107
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v122, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v121, v123, v111
	v_div_scale_f32 v115, null, v107, v107, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v102, -v113, v121, v118
	v_rcp_f32_e32 v112, v115
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v117, -v120, v122, 1.0
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v118, v10, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v102, v102, v111, v121
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v122, v117, v122
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v60, v118, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v99, v102, v101, v99
	v_fma_f32 v113, -v115, v112, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v111, v110, v122
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v101, v10, v114 :: v_dual_mul_f32 v102, v13, v104
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v94, v94, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, s1, v96, v107, v96
	v_fma_f32 v116, -v120, v111, v110
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v62, v101, v62
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v101, v13, v105
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v117, v113, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v92, v102, v92 :: v_dual_fmac_f32 v111, v116, v122
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v118, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v93, v101, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v116, -v115, v117, v113
	v_fma_f32 v101, -v120, v111, v110
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v110, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v118
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v117, v116, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v101, v101, v122, v111
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v116, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v111, -v115, v117, v113
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v101, v101, v106, v109
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v110, 0, 0x42800000, s2
	v_fmac_f32_e32 v116, 0xbfb8aa3b, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v111, v111, v112, v117
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v93, v93, v101 :: v_dual_fmac_f32 v110, 0xbfb8aa3b, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v102, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v96, v111, v107, v96
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v107, v8, v108
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v93.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v101, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v93, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v92, v92, v96 :: v_dual_mul_f32 v107, v107, v54
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v115, v10, v104
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v96, v102, v99
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v110, 0xbfb8aa3b, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v102, 1, v7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v90, v115, v90
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v99, v101, v99
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v101, v8, v114
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v102, v93, v102, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v106, null, v96, v96, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v55, v101, v55
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v99, 1.0, v99
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v110, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v101, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s2
	v_mul_f32_e32 v54, 0xbfb8aa3b, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v108, null, v99, v99, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v110, 0xbfb8aa3b, v107
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v112, s3, v60, v99, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v109, v108
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v106, v101, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.h, 0x7fff, v102.h, s1
	v_cmp_o_f32_e64 s2, v92, v92
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v111, 0, 0x42800000, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v101, v93, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v111, 0xbfb8aa3b, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v93, -v108, v109, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v102, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v109, v93, v109
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v93, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v111, s1, v62, v96, v62
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v113, v111, v101
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v102, v102, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v110, v112, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v93, v93, v114
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v116, -v106, v113, v111
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v114, v10, v105
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v102, 1.0, v102
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v117, -v108, v110, v112
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v113, v116, v101
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v91, v114, v91
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v116, null, v102, v102, v55
	v_fmac_f32_e32 v110, v117, v109
	v_div_scale_f32 v117, null, v93, v93, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v114, v116
	v_fma_f32 v106, -v106, v113, v111
	v_fma_f32 v108, -v108, v110, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v111, v117
	v_div_fmas_f32 v101, v106, v101, v113
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v106, v108, v109, v110
	v_fma_f32 v108, -v116, v114, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v62, v101, v96, v62
	v_fma_f32 v96, -v117, v111, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v60, v106, v99, v60
	v_fmac_f32_e32 v114, v108, v114
	v_div_scale_f32 v99, vcc_lo, v55, v102, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v111, v96, v111
	v_div_scale_f32 v96, s1, v107, v93, v107
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v60, v90, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v90, v99, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v62, v91, v62 :: v_dual_mul_f32 v91, v96, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v101, -v116, v90, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v62.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v106, -v117, v91, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v90, v101, v114 :: v_dual_mul_f32 v101, v8, v104
	v_fmac_f32_e32 v91, v106, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v108, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v99, -v116, v90, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v88, v101, v88
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v96, -v117, v91, v96
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v104, v8, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v90, v99, v114, v90
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v91, v96, v111, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v89, v104, v89
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v55, v90, v102, v55
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v90, v16, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v91, v91, v93, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v55, v89, v55
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v89, v90, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v90.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v88, v88, v91
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v55.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v90.l, v88.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v119, v16, v105
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v91, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v95, v119, v95 :: v_dual_and_b32 v90, 1, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v91, v55, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v95, v95, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v100.l, v92.h
	v_mov_b16_e32 v100.h, v7.h
	v_and_b32_e32 v100, 1, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v100, v92, v100, 0x7fff
	v_mov_b16_e32 v92.l, v60.h
	v_mov_b16_e32 v92.h, v7.h
	v_cndmask_b16 v54.l, 0x7fff, v100.h, s2
	v_add3_u32 v100, v62, v108, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v92, 1, v92
	v_cmp_o_f32_e64 s2, v55, v55
	v_add3_u32 v55, v88, v90, 0x7fff
	v_mov_b16_e32 v90.l, v94.h
	v_cndmask_b16 v49.h, 0x7fff, v100.h, vcc_lo
	v_add3_u32 v62, v60, v92, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v89
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v92, v16, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v90.h, v7.h
	v_cndmask_b16 v49.l, 0x7fff, v62.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v60
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v92, v92, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v48.h, 0x7fff, v91.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s1
	v_mul_f32_e32 v62, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v88, v88
	v_and_b32_e32 v88, 1, v90
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v48.l, 0x7fff, v55.h, s1
	v_add3_u32 v88, v94, v88, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v60, v60
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v94, v13, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v58, v94, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v60, v60, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v62, v62
	v_mul_f32_e32 v94, 0xbfb8aa3b, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v95.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v95, v95
	v_and_b32_e32 v90, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v91, null, v60, v60, v89
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v62, v62, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v96, s2, v89, v60, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v95, v90, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v90, v13, v64
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.l, 0x7fff, v88.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s1
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v90, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v90, v91
	v_div_scale_f32 v95, null, v62, v62, v92
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v93, 0xbfb8aa3b, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v94, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v93, -v91, v90, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v90, v93, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v101, -v95, v94, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v93, 0, 0x42800000, s1
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v100, v96, v90
	v_fmac_f32_e32 v94, v101, v94
	v_div_scale_f32 v101, s1, v92, v62, v92
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v102, -v91, v100, v96
	v_mul_f32_e32 v105, v101, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v93, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v100, v102, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v107, -v95, v105, v101
	v_fma_f32 v91, -v91, v100, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v105, v107, v94
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v93, v93, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v90, v91, v90, v100
	s_mov_b32 vcc_lo, s1
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v60, v90, v60, v89
	v_fma_f32 v89, -v95, v105, v101
	v_div_scale_f32 v96, null, v93, v93, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v89, v94, v105
	v_rcp_f32_e32 v91, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v62, v89, v62, v92
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v89, v10, v64
	v_mul_f32_e32 v64, v8, v64
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v102, v16, v53
	v_mul_f32_e32 v92, v13, v52
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v45, v89, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v64, v33
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v87, v102, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v95, -v96, v91, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v89, v13, v53 :: v_dual_mul_f32 v84, v92, v84
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v60, v87, v60
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s1, v58, v93, v58
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v85, v89, v85
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v88, v88
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v87.h, v7.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v88, v88, v99
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v99, v16, v52
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v88, 1.0, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v86, v99, v86
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v104, null, v88, v88, v59
	v_div_scale_f32 v90, s2, v59, v88, v59
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v106, v104
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v62, v86, v62
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v101, v10, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v63, v8, v63 :: v_dual_mul_f32 v50, v101, v50
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v63, v63, v32 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v104, v106, 1.0
	v_fmac_f32_e32 v106, v100, v106
	v_mul_f32_e32 v100, v95, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v90, v106
	v_fma_f32 v99, -v104, v94, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v99, v106
	v_fma_f32 v99, -v96, v100, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v104, v94, v90
	v_fmac_f32_e32 v100, v99, v91
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v90, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v89, v89, v106, v94
	v_fma_f32 v94, -v96, v100, v95
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v96, v10, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v90
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v59, v89, v88, v59
	v_div_fmas_f32 v91, v94, v91, v100
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v82, v96, v82 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v90, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v59, v85, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v58, v91, v93, v58
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v52, v8, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v101
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v59.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v58, v84, v58
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v52, v52, v80
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v99, 0, 0x42800000, s3
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, s3
	v_exp_f32_e32 v85, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v87.l, v58.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v91, 0xbfb8aa3b, v63
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v88, 1, v7
	v_and_b32_e32 v87, 1, v87
	v_cmp_o_f32_e64 s1, v59, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v92, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v88, v59, v88, 0x7fff
	v_add3_u32 v87, v58, v87, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v32.h, 0x7fff, v88.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v84, v92, v86
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v91
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v85, v85, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v91, 0, 0x42800000, s2
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v86, null, v84, v84, v45
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v63
	v_exp_f32_e32 v88, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v64, v86
	v_div_scale_f32 v92, s1, v45, v84, v45
	v_div_scale_f32 v89, null, v85, v85, v50
	v_div_scale_f32 v93, s3, v50, v85, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v58, v58
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v86, v64, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v87.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v64, v59, v64
	v_fma_f32 v59, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v94, v92, v64
	v_fmac_f32_e32 v90, v59, v90
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v59, v91
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v99, -v86, v94, v92
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v88, v88, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v91, v93, v90 :: v_dual_fmac_f32 v94, v99, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v59, v59, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v88, 1.0, v88
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v89, v91, v93
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v95, v10, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v86, -v86, v94, v92
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v99, null, v88, v88, v33
	v_fmac_f32_e32 v91, v100, v90
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v83, v95, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v100, null, v59, v59, v63
	v_rcp_f32_e32 v95, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v89, v91, v93
	v_div_fmas_f32 v64, v86, v64, v94
	v_rcp_f32_e32 v92, v100
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v86, v89, v90, v91
	v_div_fixup_f32 v45, v64, v84, v45
	v_div_scale_f32 v84, vcc_lo, v33, v88, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v99, v95, 1.0
	v_div_fixup_f32 v50, v86, v85, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v45, v83, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v64, -v100, v92, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v83.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v95, v89, v95 :: v_dual_mul_f32 v50, v82, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v92, v64, v92
	v_div_scale_f32 v64, s1, v63, v59, v63
	v_mul_f32_e32 v82, v84, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v83.l, v50.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v58, v64, v92 :: v_dual_and_b32 v89, 1, v7
	v_fma_f32 v85, -v99, v82, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v83, 1, v83
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v86, -v100, v58, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v85, v45, v89, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v58, v86, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v99, v82, v84
	v_fma_f32 v64, -v100, v58, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v84, v95, v82
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v58, v64, v92, v58
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v64, v16, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v33, v82, v88, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v45, v50, v83, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v58, v58, v59, v63
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v16, v46
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v52, v52, v58 :: v_dual_mul_f32 v63, v63, v27
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v53, v8, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v58.l, v52.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v53, v53, v81 :: v_dual_and_b32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v33, v53, v33
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v53, v64, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.h, 0x7fff, v85.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_mov_b16_e32 v7.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v33, v33
	v_cndmask_b16 v28.l, 0x7fff, v45.h, vcc_lo
	v_and_b32_e32 v59, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v60.h
	v_add3_u32 v59, v33, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v52, v58, 0x7fff
	v_mov_b16_e32 v58.l, v62.h
	v_mov_b16_e32 v58.h, v7.h
	v_cndmask_b16 v27.h, 0x7fff, v59.h, s2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v53
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v52, v52
	v_and_b32_e32 v52, 1, v58
	v_and_b32_e32 v58, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v45, v50
	v_mul_f32_e32 v50, 0xbfb8aa3b, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v33.h, s1
	v_cmp_o_f32_e64 s1, v60, v60
	v_add3_u32 v33, v60, v58, 0x7fff
	v_add3_u32 v52, v62, v52, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v45, v45, v59
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v62, v13, v46 :: v_dual_add_f32 v45, 1.0, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v52.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v40, v62, v40
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, 0xbfb8aa3b, v40
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v58, v13, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v59, null, v45, v45, v53
	v_div_scale_f32 v80, s2, v53, v45, v53
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v50, v50, v60
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v64, null, v50, v50, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v64
	v_fma_f32 v83, -v64, v62, 1.0
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v41, v58, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v58, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v62, v83, v62
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v59, v58, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v58, v60, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s1
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v83, s1, v63, v50, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v41
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v82, v80, v58
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v84, -v59, v82, v80
	v_dual_fmac_f32 v82, v84, v58 :: v_dual_lshlrev_b32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v84, v16, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v86, v83, v62
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v52, v52, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v60, v60, v85
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v81, v16, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v59, -v59, v82, v80
	v_fma_f32 v88, -v64, v86, v83
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v52, 1.0, v52
	v_add_f32_e32 v60, 1.0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v58, v59, v58, v82
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v85, null, v52, v52, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v80, null, v60, v60, v40
	v_div_fixup_f32 v45, v58, v45, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v58, s2, v41, v52, v41
	v_rcp_f32_e32 v59, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v85, v87, 1.0
	v_dual_fmac_f32 v86, v88, v62 :: v_dual_fmac_f32 v87, v82, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v64, v86, v83
	v_fma_f32 v64, -v80, v59, 1.0
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v78, v81, v78
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v83, v10, v46
	v_mul_f32_e32 v46, v8, v46
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v53, v53, v62, v86
	v_fmac_f32_e32 v59, v64, v59
	v_div_scale_f32 v64, s1, v40, v60, v40
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v38, v83, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v50, v53, v50, v63
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v53, v10, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v82, v64, v59 :: v_dual_mul_f32 v63, v13, v30
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v50, v78, v50 :: v_dual_mul_f32 v39, v53, v39
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v53, v13, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v62, v58, v87 :: v_dual_mul_f32 v63, v63, v76
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v79, v84, v79 :: v_dual_mul_f32 v46, v46, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v53, v77
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v81, -v85, v62, v58
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v77, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v45, v79, v45
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v47, v8, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v62, v81, v87
	v_fma_f32 v81, -v80, v82, v64
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v85, v62, v58
	v_fmac_f32_e32 v82, v81, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v58, v58, v87, v62
	v_fma_f32 v62, -v80, v82, v64
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v64, 0, 0x42800000, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v80, v10, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v41, v58, v52, v41
	v_div_fmas_f32 v59, v62, v59, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v38 :: v_dual_mul_f32 v41, v53, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v40, v59, v60, v40
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v83, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v58, v64
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v40, v63, v40
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v83
	v_mul_f32_e32 v64, 0xbfb8aa3b, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	v_mov_b16_e32 v59.l, v40.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v81, 0, 0x42800000, s3
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s3
	v_ldexp_f32 v53, v58, v53
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v59, 1, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v64, 0, 0x42800000, s1
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v21, v47, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v62, v81
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v59, v40, v59, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v46
	v_mul_f32_e32 v20, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v52, v62, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v62, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v60, null, v53, v53, v38
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v41, v62, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v63, v60
	v_div_scale_f32 v77, s4, v38, v53, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v58, null, v52, v52, v39
	v_rcp_f32_e32 v47, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v60, v63, 1.0
	v_fmac_f32_e32 v63, v41, v63
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v41, v64
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v76, -v58, v47, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v47, v76, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v20, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v76, s3, v39, v52, v39
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v41, v41, v79
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v78, v76, v47 :: v_dual_add_f32 v41, 1.0, v41
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v20, v64
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v64, v77, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v81, -v58, v78, v76
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v79, v10, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v83, null, v41, v41, v46
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v82, 1.0, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v20, -v60, v64, v77
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v31, v8, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v78, v81, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v81, null, v82, v82, v21
	v_dual_fmac_f32 v64, v20, v63 :: v_dual_mul_f32 v31, v31, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v58, v78, v76
	v_fma_f32 v58, -v60, v64, v77
	v_rcp_f32_e32 v60, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v47, v78
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v47, v58, v63, v64
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v63, v80, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v39, v20, v52, v39
	v_div_scale_f32 v52, s1, v46, v41, v46
	v_div_fixup_f32 v38, v47, v53, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v83, v60, 1.0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v75, v79, v75
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v79, v81
	v_div_scale_f32 v47, vcc_lo, v21, v82, v21
	v_fmac_f32_e32 v60, v20, v60
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v38, v63, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.h, 0x7fff, v62.h, s2
	v_cmp_o_f32_e64 s2, v40, v40
	v_mov_b16_e32 v62.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v62.l, v38.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v81, v79, 1.0
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v39, v75, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.l, 0x7fff, v59.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v79, v58, v79 :: v_dual_and_b32 v62, 1, v62
	v_mul_f32_e32 v58, v52, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v59, v38, v62, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v53, v47, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v83, v58, v52
	v_fma_f32 v63, -v81, v53, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v58, v40, v60 :: v_dual_fmac_f32 v53, v63, v79
	v_fma_f32 v52, -v83, v58, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v81, v53, v47
	v_div_fmas_f32 v47, v47, v79, v53
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v38, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v52, v52, v60, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v21, v47, v82, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v41, v52, v41, v46
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v52, v13, v25
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v21, v31, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v39, v40, 0x7fff
	v_mov_b16_e32 v39.h, v7.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v46, v16, v26
	v_mul_f32_e32 v31, v16, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v21.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v12, v46, v12
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v30, v8, v30 :: v_dual_mul_f32 v11, v31, v11
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v36, v52, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v59.h, s1
	v_cmp_o_f32_e64 s1, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v30, v30, v73
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v30, v30, v41 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_mul_f32_e32 v41, 0xbfb8aa3b, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v30, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v39
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v7.l, v45.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v30, v31, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v21, v38, 0x7fff
	v_and_b32_e32 v46, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v21, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v38.h, s3
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v50.h
	v_mov_b16_e32 v39.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v31, v41
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v41, v13, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v21, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v37, v41, v37
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v45, v46, 0x7fff
	v_add3_u32 v39, v50, v39, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v50, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v36
	v_mul_f32_e32 v46, 0xbfb8aa3b, v37
	v_ldexp_f32 v31, v31, v38
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v38, null, v21, v21, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v47, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v39.h, s2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s1
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v37
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v53, null, v31, v31, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v38, v47, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v36
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v45, v53
	v_div_scale_f32 v58, vcc_lo, v12, v21, v12
	v_fmac_f32_e32 v47, v39, v47
	v_fma_f32 v39, -v53, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v45, v39, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v39, v46, v52
	v_exp_f32_e32 v46, v50
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v50, s2, v11, v31, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v46, v46, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v52, v16, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v60, v50, v45
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v16, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v62, null, v39, v39, v37
	v_fma_f32 v64, -v53, v60, v50
	v_mul_f32_e32 v59, v58, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v72, v62
	v_fmac_f32_e32 v60, v64, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v38, v59, v58
	v_fma_f32 v50, -v53, v60, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v62, v72, 1.0
	v_fmac_f32_e32 v59, v63, v47
	v_div_scale_f32 v63, null, v46, v46, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v53, v72
	v_fma_f32 v38, -v38, v59, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v58, v63
	v_div_fmas_f32 v38, v38, v47, v59
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v45, v50, v45, v60
	v_div_scale_f32 v47, vcc_lo, v37, v39, v37
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v16, v71
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v12, v38, v21, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v45, v31, v11
	v_mul_f32_e32 v21, v47, v72
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v31, v10, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v38, s1, v36, v46, v36
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v12, v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v50, v52, v70 :: v_dual_mul_f32 v31, v31, v35
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v52, -v63, v58, 1.0
	v_fma_f32 v16, -v62, v21, v47
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v45, v13, v15
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v50, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v58, v52, v58
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v52, v10, v25
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v13, v13, v17
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v45, v45, v68 :: v_dual_mul_f32 v26, v8, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v35, v38, v58
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v50
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v19, v26, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v21, v16, v72
	v_fma_f32 v16, -v63, v35, v38
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v47, -v62, v21, v47
	v_fmac_f32_e32 v35, v16, v58
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v16, v52, v34 :: v_dual_mul_f32 v13, v13, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v21, v47, v72, v21
	v_fma_f32 v34, -v63, v35, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v38, 0xbfb8aa3b, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v47, v50
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v21, v21, v39, v37
	v_div_fmas_f32 v34, v34, v58, v35
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v13, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v34, v34, v46, v36
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v36, v47, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.h, v7.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v34, v45, v34 :: v_dual_fmac_f32 v35, 0xbfb8aa3b, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v7
	v_cmp_o_f32_e64 s2, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v50, v13, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v26, v35, v26
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v8, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s2
	v_cmp_o_f32_e64 s2, v34, v34
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v18, v25, v18 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, null, v36, v36, v31
	v_div_scale_f32 v39, null, v26, v26, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v35, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v50.l, 0x7fff, v38.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v46, v39
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v45, -v25, v35, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v37, v37, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v47, -v39, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v46, v47, v46 :: v_dual_fmac_f32 v35, v45, v35
	v_div_scale_f32 v45, vcc_lo, v31, v36, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v58, s1, v16, v26, v16
	v_mul_f32_e32 v62, v58, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v18
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v52, v45, v35 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v25, v52, v45
	v_div_scale_f32 v53, null, v21, v21, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v13, v35
	v_fma_f32 v13, -v39, v62, v58
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v60, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v25, v52, v45
	v_fmac_f32_e32 v62, v13, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v47, null, v37, v37, v19
	v_div_scale_f32 v13, s3, v19, v37, v19
	v_div_fmas_f32 v25, v25, v35, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v59, v47
	v_fma_f32 v35, -v39, v62, v58
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v53, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v46, v62
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v60, v45, v60
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v47, v59, 1.0
	v_div_fixup_f32 v16, v35, v26, v16
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v63, v10, v15
	v_mul_f32_e32 v15, v8, v15
	v_dual_mul_f32 v8, v8, v17 :: v_dual_fmac_f32 v59, v34, v59
	v_mul_f32_e32 v10, v10, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v34, s4, v18, v21, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v0, v15, v0 :: v_dual_mul_f32 v39, v13, v59
	v_dual_mul_f32 v52, v63, v67 :: v_dual_mul_f32 v45, v34, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v9, v10, v9 :: v_dual_mul_f32 v8, v8, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v46, -v47, v39, v13
	v_div_fixup_f32 v10, v25, v36, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v58, -v53, v45, v34
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v16, v52, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v39, v46, v59
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v9, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v26, v57, v23, s0
	v_mov_b16_e32 v15.l, v16.h
	v_cndmask_b32_e64 v23, v23, v57, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v13, -v47, v39, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v36, v41, v55, s0
	v_cndmask_b32_e64 v31, v30, v48, s0
	v_cndmask_b32_e64 v30, v48, v30, s0
	v_cndmask_b32_e64 v35, v97, v44, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v13, v13, v59, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v39, 0x5410
	v_cmp_o_f32_e64 s4, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v13, v37, v19
	v_fmac_f32_e32 v45, v58, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v37, v55, v41, s0
	v_cndmask_b32_e64 v19, v98, v42, s0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v8, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v53, v45, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v10, 1, v15
	v_cndmask_b32_e64 v34, v61, v24, s0
	v_cndmask_b32_e64 v24, v24, v61, s0
	v_cmp_o_f32_e64 s1, v8, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v17, v17, v60, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v10, v16, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v13, v17, v21, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v11.h
	v_mov_b16_e32 v17.h, v7.h
	v_cndmask_b32_e64 v18, v22, v56, s0
	v_cndmask_b32_e64 v21, v40, v49, s0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v0, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v9.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v15.l, v0.h
	v_and_b32_e32 v13, 1, v7
	v_mov_b16_e32 v7.l, v8.h
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v13, v9, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 1, v7
	v_mov_b16_e32 v7.l, v12.h
	v_add3_u32 v15, v0, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_and_b32_e32 v16, 1, v17
	v_and_b32_e32 v7, 1, v7
	v_cndmask_b32_e64 v17, v56, v22, s0
	v_cndmask_b32_e64 v22, v49, v40, s0
	v_mov_b32_e32 v40, 0x7632
	v_add3_u32 v0, v11, v16, 0x7fff
	v_add3_u32 v7, v12, v7, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v9, v8, v9, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v15.h, s2
	v_cndmask_b16 v7.l, 0x7fff, v0.h, s4
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	v_cndmask_b32_e64 v25, v13, v28, s0
	v_cndmask_b32_e64 v13, v28, v13, s0
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v38, v7, v33, s0
	v_cndmask_b32_e64 v7, v33, v7, s0
	v_cndmask_b32_e64 v33, 0x1054, v39, s0
	v_cndmask_b32_e64 v39, 0x3276, v40, s0
	v_cndmask_b32_e64 v9, v14, v51, s0
	v_cndmask_b32_e64 v11, v29, v103, s0
	v_permlanex16_b32 v40, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v33, v33, 8, v33
	v_lshl_or_b32 v39, v39, 8, v39
	v_permlanex16_b32 v41, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, v51, v14, s0
	v_cndmask_b32_e64 v14, v54, v20, s0
	v_and_b32_e32 v33, 0x540054, v33
	v_and_b32_e32 v39, 0x760076, v39
	v_cndmask_b32_e64 v16, v32, v50, s0
	v_cndmask_b32_e64 v10, v103, v29, s0
	v_cndmask_b32_e64 v12, v20, v54, s0
	v_lshl_or_b32 v13, v33, 4, v33
	v_lshl_or_b32 v23, v39, 4, v39
	v_cndmask_b32_e64 v15, v50, v32, s0
	v_cndmask_b32_e64 v20, v42, v98, s0
	v_cndmask_b32_e64 v29, v43, v65, s0
	v_cndmask_b32_e64 v32, v8, v27, s0
	v_cndmask_b32_e64 v8, v27, v8, s0
	v_cndmask_b32_e64 v28, v65, v43, s0
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v42, 0x5040504, v13
	v_and_b32_e32 v43, 0x7060706, v23
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v27, v44, v97, s0
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v9, v0, v42
	v_perm_b32 v8, v9, v0, v43
	v_perm_b32 v9, v11, v10, v42
	v_perm_b32 v10, v11, v10, v43
	v_add_lshl_u32 v0, v2, v4, 1
	v_perm_b32 v11, v14, v12, v42
	v_perm_b32 v12, v14, v12, v43
	v_perm_b32 v13, v16, v15, v42
	v_perm_b32 v14, v16, v15, v43
	v_add_lshl_u32 v4, v1, v4, 1
	v_permlanex16_b32 v44, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v17, v42
	v_perm_b32 v16, v18, v17, v43
	v_perm_b32 v17, v20, v19, v42
	v_perm_b32 v18, v20, v19, v43
	v_perm_b32 v19, v22, v21, v42
	v_perm_b32 v20, v22, v21, v43
	v_perm_b32 v21, v40, v25, v42
	v_perm_b32 v22, v40, v25, v43
	v_perm_b32 v23, v41, v26, v42
	v_perm_b32 v24, v41, v26, v43
	v_perm_b32 v25, v29, v28, v42
	v_perm_b32 v26, v29, v28, v43
	v_perm_b32 v27, v30, v31, v42
	v_perm_b32 v28, v30, v31, v43
	v_perm_b32 v29, v33, v32, v42
	v_perm_b32 v30, v33, v32, v43
	v_perm_b32 v31, v39, v34, v42
	v_perm_b32 v32, v39, v34, v43
	v_add_lshl_u32 v39, v2, v6, 1
	v_permlanex16_b32 v37, v37, s1, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[7:10], v0, s[8:11], 0 offen
	buffer_store_b128 v[11:14], v4, s[8:11], 0 offen
	buffer_store_b128 v[15:18], v39, s[8:11], 0 offen
	v_add_lshl_u32 v0, v1, v6, 1
	v_add_lshl_u32 v4, v2, v5, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_perm_b32 v33, v44, v35, v42
	v_perm_b32 v34, v44, v35, v43
	v_add_lshl_u32 v2, v2, v3, 1
	v_perm_b32 v35, v37, v36, v42
	v_perm_b32 v36, v37, v36, v43
	v_perm_b32 v37, v45, v38, v42
	v_perm_b32 v38, v45, v38, v43
	v_add_lshl_u32 v1, v1, v3, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[8:11], 0 offen
	buffer_store_b128 v[23:26], v4, s[8:11], 0 offen
	buffer_store_b128 v[27:30], v5, s[8:11], 0 offen
	buffer_store_b128 v[31:34], v2, s[8:11], 0 offen
	buffer_store_b128 v[35:38], v1, s[8:11], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 96
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.private_seg_size, 96
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22672
; TotalNumSgprs: 34
; NumVgprs: 256
; ScratchSize: 96
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 96
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 41
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
