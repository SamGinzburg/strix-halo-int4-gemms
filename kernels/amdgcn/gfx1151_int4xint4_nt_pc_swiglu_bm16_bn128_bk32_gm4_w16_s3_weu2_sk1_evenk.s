	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v7, 2, v0
	v_bfe_u32 v2, v0, 4, 4
	v_and_b32_e32 v14, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v13, 0x7f, v0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_load_b32 s15, s[0:1], 0x38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s10, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s8, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s9, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s5, s9
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s12, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s9, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s12, s9, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s9, s9, s8
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s12
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s9
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s13, s4, 4
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s10, s13
	s_abs_i32 s9, s2
	s_cvt_f32_u32 s14, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s14
	v_readfirstlane_b32 s14, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 12, v7
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v7, 0x77c, v7
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s6, s14
	s_sub_i32 s14, 0, s10
	s_mul_i32 s14, s14, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s6, s14
	s_xor_b32 s14, s2, s13
	s_add_i32 s8, s6, s8
	s_ashr_i32 s23, s14, 31
	s_mul_hi_u32 s8, s9, s8
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s18, s8, s10
	s_add_i32 s14, s8, 1
	s_sub_i32 s9, s9, s18
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s18, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s9, s10
	s_cmp_ge_u32 s9, s10
	s_cselect_b32 s8, s14, s8
	s_cselect_b32 s9, s19, s9
	s_add_i32 s14, s8, 1
	s_cmp_ge_u32 s9, s10
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s19, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s8, s14, s8
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s9, s15, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s8, s23
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s10, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s15, s9
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s8, s26, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s24, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s8, s13
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[4:5], null, s24, v2, v[14:15]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[5:6], null, s24, v3, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s12
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s8, 7
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s21, s2, 4
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_add_i32 s22, s20, s11
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s21, s24
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s3, s20, s24
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_mul_i32 s8, s22, s24
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v4, s10, s2, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s15, 1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v6, s10, s3, v5
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add3_u32 v5, s10, s8, v5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s3, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v9, 0x80000000, v4, s3
	.loc	1 113 30 is_stmt 0              ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v4, 16, v4
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s15, 33
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add_nc_u32_e32 v10, 16, v5
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s2, -1, 0
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v11, v9, s[4:7], 0 offen
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v9, 0x80000000, v10, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v6, v6, s[16:19], 0 offen
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v10, v4, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v8, v8, s[16:19], 0 offen
	buffer_load_b32 v12, v9, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v9, v0, 5, 1
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s15, 0x41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v4, 0x88, v4
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v9, 0x88, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v131, v4, v13
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v132, v9, v7
	v_lshlrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v9, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v7, 0, v131
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v13, 0, v132
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(5)
	ds_store_b8 v7, v11 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b32 v13, v6, v5 offset1:16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v7, v10 offset:8448
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v8, v12 offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_and_b32_e32 v130, 0x70, v4
	s_mov_b32 s19, 0
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v133, 8, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s19, -1
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr133
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s24, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s1, s26, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add3_u32 v5, s11, s1, v3
	v_mov_b32_e32 v34, 0
	v_and_b32_e32 v130, 0x70, v4
	v_or_b32_e32 v3, s1, v3
	v_sub_nc_u32_e64 v6, s0, 3 clamp
	s_lshl_b32 s0, s23, 7
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v37, v34
	v_mov_b32_e32 v36, v34
	v_readfirstlane_b32 s1, v6
	v_add_nc_u32_e32 v6, s21, v2
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
	v_mov_b32_e32 v15, v34
	v_mov_b32_e32 v16, v34
	v_mov_b32_e32 v17, v34
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
	v_mov_b32_e32 v106, v34
	v_mov_b32_e32 v107, v34
	v_mov_b32_e32 v108, v34
	v_mov_b32_e32 v109, v34
	v_mov_b32_e32 v110, v34
	v_mov_b32_e32 v111, v34
	v_mov_b32_e32 v112, v34
	v_mov_b32_e32 v113, v34
	v_mov_b32_e32 v122, v34
	v_mov_b32_e32 v123, v34
	v_mov_b32_e32 v124, v34
	v_mov_b32_e32 v125, v34
	v_mov_b32_e32 v126, v34
	v_mov_b32_e32 v127, v34
	v_mov_b32_e32 v128, v34
	v_mov_b32_e32 v129, v34
	s_mov_b32 s27, 1
	s_add_i32 s26, s1, 1
	s_add_i32 s23, 0, 0x800
	s_add_i32 s1, 0, 0x1800
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_waitcnt vmcnt(0)
	v_bfe_i32 v4, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_or_b32 v133, 0x88, v4, v130
	v_subrev_nc_u32_e32 v4, s0, v5
	v_subrev_nc_u32_e32 v5, s0, v3
	s_add_i32 s0, 0, 0x2000
	v_xor_b32_e32 v134, 8, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[2:3], null, s24, v4, s[10:11]
	v_mad_u64_u32 v[3:4], null, s24, v5, s[10:11]
	v_mad_u64_u32 v[4:5], null, s24, v6, s[10:11]
	v_mov_b32_e32 v5, v34
	v_mov_b32_e32 v6, v34
	v_add3_u32 v135, v2, v1, 32
	v_mov_b32_e32 v2, v34
	v_add3_u32 v136, v3, v1, 32
	v_mov_b32_e32 v1, v34
	v_add3_u32 v137, v4, v14, 32
	v_mov_b32_e32 v14, v34
	v_mov_b32_e32 v3, v34
	v_mov_b32_e32 v4, v34
	s_add_i32 s10, 0, 0x2100
	s_add_i32 s24, 0, 0x1000
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v207, v137, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v208, v136, s[16:19], 0 offen
	buffer_load_b32 v209, v135, s[16:19], 0 offen
	s_mov_b32 s28, s0
	s_mov_b32 s29, s25
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v138, s28, v133
	v_add_nc_u32_e32 v139, s28, v134
	s_mov_b32 s30, s24
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v150, s29, v133
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v166, s30, v133
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v182, s29, v134
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v198, s30, v134
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[203:204], v138
	ds_load_b64 v[205:206], v139
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[138:141], v150 offset1:32
	ds_load_2addr_b64 v[142:145], v150 offset0:64 offset1:96
	ds_load_2addr_b64 v[146:149], v150 offset0:128 offset1:160
	ds_load_2addr_b64 v[150:153], v150 offset0:192 offset1:224
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_2addr_b64 v[154:157], v166 offset1:32
	ds_load_2addr_b64 v[158:161], v166 offset0:64 offset1:96
	ds_load_2addr_b64 v[162:165], v166 offset0:128 offset1:160
	ds_load_2addr_b64 v[166:169], v166 offset0:192 offset1:224
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[170:173], v182 offset1:32
	ds_load_2addr_b64 v[174:177], v182 offset0:64 offset1:96
	ds_load_2addr_b64 v[178:181], v182 offset0:128 offset1:160
	ds_load_2addr_b64 v[182:185], v182 offset0:192 offset1:224
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_2addr_b64 v[186:189], v198 offset1:32
	ds_load_2addr_b64 v[190:193], v198 offset0:64 offset1:96
	ds_load_2addr_b64 v[194:197], v198 offset0:128 offset1:160
	ds_load_2addr_b64 v[198:201], v198 offset0:192 offset1:224
	s_mov_b32 s24, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s27, 1
	s_mov_b32 s0, s10
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[138:139], v[203:204], v[66:73] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s27, s1, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[74:81], v[140:141], v[203:204], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[142:143], v[203:204], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[144:145], v[203:204], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[146:147], v[203:204], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[148:149], v[203:204], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[150:151], v[203:204], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[152:153], v[203:204], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[154:155], v[203:204], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[156:157], v[203:204], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[158:159], v[203:204], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[160:161], v[203:204], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[162:163], v[203:204], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[164:165], v[203:204], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[166:167], v[203:204], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[168:169], v[203:204], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s1, s27, 8
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_lshl_b32 s10, s27, 11
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s1, s1, 0
	s_mov_b32 s25, s23
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_add_i32 s23, s10, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v135, 16, v135
	v_add_nc_u32_e32 v136, 16, v136
	v_add_nc_u32_e32 v137, 16, v137
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v210, s1, v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[170:171], v[205:206], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[172:173], v[205:206], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[174:175], v[205:206], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[176:177], v[205:206], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[178:179], v[205:206], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[180:181], v[205:206], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[182:183], v[205:206], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[184:185], v[205:206], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[186:187], v[205:206], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[188:189], v[205:206], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[190:191], v[205:206], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[192:193], v[205:206], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[194:195], v[205:206], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[196:197], v[205:206], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[198:199], v[205:206], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[205:206], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s26, s26, -1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v211, s23, v132
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s10, s1, 0x2000
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	s_add_i32 s1, s23, 0x1000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s26, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v210, v207 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v211, v208, v209 offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v133, v9
	s_mov_b32 s18, s25
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s0, 0, 0x2000
	s_add_i32 s10, 0, 0x2100
	s_add_i32 s23, 0, 0x800
	s_add_i32 s24, 0, 0x1000
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
	v_dual_mov_b32 v99, v9 :: v_dual_mov_b32 v46, v8
	v_dual_mov_b32 v103, v9 :: v_dual_mov_b32 v42, v8
	v_dual_mov_b32 v101, v9 :: v_dual_mov_b32 v56, v8
	v_dual_mov_b32 v105, v9 :: v_dual_mov_b32 v52, v8
	v_dual_mov_b32 v115, v9 :: v_dual_mov_b32 v54, v8
	v_dual_mov_b32 v119, v9 :: v_dual_mov_b32 v50, v8
	v_dual_mov_b32 v117, v9 :: v_dual_mov_b32 v64, v8
	v_dual_mov_b32 v121, v9 :: v_dual_mov_b32 v60, v8
	v_dual_mov_b32 v107, v9 :: v_dual_mov_b32 v62, v8
	v_dual_mov_b32 v111, v9 :: v_dual_mov_b32 v58, v8
	v_dual_mov_b32 v109, v9 :: v_dual_mov_b32 v40, v8
	v_dual_mov_b32 v113, v9 :: v_dual_mov_b32 v36, v8
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
	v_mov_b32_e32 v98, v8
	v_mov_b32_e32 v102, v8
	v_mov_b32_e32 v100, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v114, v8
	v_mov_b32_e32 v118, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v120, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v110, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v122, v8
	v_mov_b32_e32 v126, v8
	v_mov_b32_e32 v124, v8
	v_mov_b32_e32 v128, v8
	s_add_i32 s1, 0, 0x1800
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v133
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v131, 0, 1, s3
	v_dual_mov_b32 v193, v129 :: v_dual_mov_b32 v192, v128
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v9, v9, v130
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	v_dual_mov_b32 v185, v113 :: v_dual_mov_b32 v184, v112
	v_xor_b32_e32 v0, 8, v9
	v_dual_mov_b32 v179, v107 :: v_dual_add_nc_u32 v130, s0, v9
	v_dual_mov_b32 v178, v106 :: v_dual_mov_b32 v173, v117
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v177, v121 :: v_dual_add_nc_u32 v132, s0, v0
	v_dual_mov_b32 v176, v120 :: v_dual_mov_b32 v175, v119
	ds_load_b64 v[196:197], v130
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[194:195], v132
	v_dual_mov_b32 v172, v116 :: v_dual_mov_b32 v171, v115
	v_dual_mov_b32 v174, v118 :: v_dual_mov_b32 v169, v105
	v_dual_mov_b32 v170, v114 :: v_dual_mov_b32 v165, v101
	v_dual_mov_b32 v168, v104 :: v_dual_mov_b32 v167, v103
	v_dual_mov_b32 v164, v100 :: v_dual_mov_b32 v163, v99
	v_dual_mov_b32 v166, v102 :: v_dual_mov_b32 v161, v97
	v_dual_mov_b32 v162, v98 :: v_dual_mov_b32 v157, v93
	v_dual_mov_b32 v160, v96 :: v_dual_mov_b32 v159, v95
	v_dual_mov_b32 v156, v92 :: v_dual_mov_b32 v155, v91
	v_dual_mov_b32 v158, v94 :: v_dual_mov_b32 v153, v89
	v_dual_mov_b32 v154, v90 :: v_dual_mov_b32 v149, v85
	v_dual_mov_b32 v152, v88 :: v_dual_mov_b32 v151, v87
	v_dual_mov_b32 v148, v84 :: v_dual_mov_b32 v147, v83
	v_dual_mov_b32 v150, v86 :: v_dual_mov_b32 v145, v81
	v_dual_mov_b32 v146, v82 :: v_dual_mov_b32 v141, v77
	v_dual_mov_b32 v144, v80 :: v_dual_mov_b32 v143, v79
	v_dual_mov_b32 v140, v76 :: v_dual_mov_b32 v139, v75
	v_dual_mov_b32 v142, v78 :: v_dual_mov_b32 v137, v73
	v_dual_mov_b32 v138, v74 :: v_dual_mov_b32 v133, v69
	v_cmp_ne_u32_e64 s0, 1, v131
	v_dual_mov_b32 v136, v72 :: v_dual_mov_b32 v135, v71
	v_dual_mov_b32 v132, v68 :: v_dual_mov_b32 v131, v67
	v_dual_mov_b32 v181, v109 :: v_dual_mov_b32 v180, v108
	v_dual_mov_b32 v183, v111 :: v_dual_mov_b32 v182, v110
	v_mov_b32_e32 v134, v70
	v_mov_b32_e32 v130, v66
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v130, s18, v0
	ds_load_2addr_b64 v[198:201], v130 offset0:192 offset1:224
	ds_load_2addr_b64 v[176:179], v130 offset0:128 offset1:160
	ds_load_2addr_b64 v[160:163], v130 offset0:64 offset1:96
	ds_load_2addr_b64 v[144:147], v130 offset1:32
	v_add_nc_u32_e32 v130, s18, v9
	ds_load_2addr_b64 v[203:206], v130 offset0:192 offset1:224
	ds_load_2addr_b64 v[180:183], v130 offset0:128 offset1:160
	ds_load_2addr_b64 v[164:167], v130 offset0:64 offset1:96
	ds_load_2addr_b64 v[148:151], v130 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_mov_b32_e32 v131, v67
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v130, v66 :: v_dual_mov_b32 v193, v129
	v_dual_mov_b32 v192, v128 :: v_dual_mov_b32 v189, v125
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v188, v124
	v_mov_b32_e32 v186, v122
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[130:137], v[148:149], v[196:197], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[205:206], v[196:197], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[144:145], v[194:195], v[130:137] neg_lo:[1,1,0]
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_mov_b32_e32 v141, v77
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v140, v76
	v_mov_b32_e32 v138, v74
	v_wmma_i32_16x16x16_iu4 v[186:193], v[200:201], v[194:195], v[186:193] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[150:151], v[196:197], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[194:195], v[138:145] neg_lo:[1,1,0]
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_mov_b32_e32 v149, v85
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v148, v84
	v_mov_b32_e32 v146, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[164:165], v[196:197], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[194:195], v[146:153] neg_lo:[1,1,0]
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_mov_b32_e32 v157, v93
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_dual_mov_b32 v155, v91 :: v_dual_mov_b32 v156, v92
	v_mov_b32_e32 v154, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[166:167], v[196:197], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[194:195], v[154:161] neg_lo:[1,1,0]
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_mov_b32_e32 v165, v101
	v_dual_mov_b32 v167, v103 :: v_dual_mov_b32 v166, v102
	v_dual_mov_b32 v163, v99 :: v_dual_mov_b32 v164, v100
	v_mov_b32_e32 v162, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[180:181], v[196:197], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[176:177], v[194:195], v[162:169] neg_lo:[1,1,0]
	v_dual_mov_b32 v177, v121 :: v_dual_mov_b32 v176, v120
	v_mov_b32_e32 v173, v117
	v_dual_mov_b32 v175, v119 :: v_dual_mov_b32 v174, v118
	v_dual_mov_b32 v171, v115 :: v_dual_mov_b32 v172, v116
	v_mov_b32_e32 v170, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[170:177], v[182:183], v[196:197], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[194:195], v[170:177] neg_lo:[1,1,0]
	v_dual_mov_b32 v185, v113 :: v_dual_mov_b32 v180, v108
	v_dual_mov_b32 v184, v112 :: v_dual_mov_b32 v181, v109
	v_dual_mov_b32 v183, v111 :: v_dual_mov_b32 v182, v110
	v_dual_mov_b32 v179, v107 :: v_dual_mov_b32 v178, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[203:204], v[196:197], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[198:199], v[194:195], v[178:185] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v78, s24, v9
	v_dual_mov_b32 v128, v192 :: v_dual_mov_b32 v129, v193
	v_add_nc_u32_e32 v94, s24, v0
	v_mov_b32_e32 v124, v188
	ds_load_2addr_b64 v[66:69], v78 offset1:32
	ds_load_2addr_b64 v[70:73], v78 offset0:64 offset1:96
	v_mov_b32_e32 v125, v189
	ds_load_2addr_b64 v[74:77], v78 offset0:128 offset1:160
	ds_load_2addr_b64 v[78:81], v78 offset0:192 offset1:224
	ds_load_2addr_b64 v[82:85], v94 offset1:32
	ds_load_2addr_b64 v[86:89], v94 offset0:64 offset1:96
	ds_load_2addr_b64 v[90:93], v94 offset0:128 offset1:160
	ds_load_2addr_b64 v[94:97], v94 offset0:192 offset1:224
	v_mov_b32_e32 v126, v190
	v_mov_b32_e32 v122, v186
	v_mov_b32_e32 v112, v184
	v_mov_b32_e32 v108, v180
	v_mov_b32_e32 v110, v182
	v_mov_b32_e32 v106, v178
	v_mov_b32_e32 v120, v176
	v_mov_b32_e32 v116, v172
	v_mov_b32_e32 v118, v174
	v_mov_b32_e32 v114, v170
	v_mov_b32_e32 v104, v168
	v_mov_b32_e32 v100, v164
	v_mov_b32_e32 v102, v166
	v_mov_b32_e32 v98, v162
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[74:75], v[196:197], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[76:77], v[196:197], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[66:67], v[196:197], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[196:197], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[196:197], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[196:197], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[78:79], v[196:197], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[82:83], v[194:195], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[84:85], v[194:195], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[86:87], v[194:195], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[88:89], v[194:195], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[90:91], v[194:195], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[92:93], v[194:195], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[94:95], v[194:195], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[194:195], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v96, v160
	v_mov_b32_e32 v92, v156
	v_mov_b32_e32 v94, v158
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
	v_mov_b32_e32 v113, v185
	v_mov_b32_e32 v109, v181
	v_mov_b32_e32 v111, v183
	v_mov_b32_e32 v107, v179
	v_mov_b32_e32 v121, v177
	v_mov_b32_e32 v117, v173
	v_mov_b32_e32 v119, v175
	v_mov_b32_e32 v115, v171
	v_mov_b32_e32 v105, v169
	v_mov_b32_e32 v101, v165
	v_mov_b32_e32 v103, v167
	v_mov_b32_e32 v99, v163
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
	v_add_nc_u32_e32 v195, s10, v0
	v_dual_mov_b32 v211, v113 :: v_dual_mov_b32 v210, v112
	v_dual_mov_b32 v213, v109 :: v_dual_mov_b32 v212, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s0, 1, v194
	v_dual_mov_b32 v209, v123 :: v_dual_add_nc_u32 v194, s10, v9
	v_dual_mov_b32 v215, v111 :: v_dual_mov_b32 v214, v110
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[200:201], v194
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[198:199], v195
	v_dual_mov_b32 v195, v129 :: v_dual_mov_b32 v194, v128
	v_dual_mov_b32 v217, v107 :: v_dual_mov_b32 v216, v106
	v_dual_mov_b32 v219, v121 :: v_dual_mov_b32 v218, v120
	scratch_store_b64 off, v[194:195], off offset:4 ; 8-byte Folded Spill
	v_dual_mov_b32 v195, v125 :: v_dual_mov_b32 v194, v124
	v_dual_mov_b32 v208, v122 :: v_dual_mov_b32 v223, v117
	v_dual_mov_b32 v222, v116 :: v_dual_mov_b32 v221, v119
	v_mov_b32_e32 v220, v118
	scratch_store_b64 off, v[194:195], off offset:12 ; 8-byte Folded Spill
	v_dual_mov_b32 v195, v127 :: v_dual_mov_b32 v194, v126
	v_dual_mov_b32 v225, v115 :: v_dual_mov_b32 v224, v114
	v_dual_mov_b32 v227, v105 :: v_dual_mov_b32 v226, v104
	scratch_store_b64 off, v[194:195], off offset:20 ; 8-byte Folded Spill
	v_dual_mov_b32 v229, v101 :: v_dual_mov_b32 v228, v100
	v_dual_mov_b32 v231, v103 :: v_dual_mov_b32 v230, v102
	v_dual_mov_b32 v233, v99 :: v_dual_mov_b32 v232, v98
	v_dual_mov_b32 v235, v97 :: v_dual_mov_b32 v234, v96
	v_dual_mov_b32 v237, v93 :: v_dual_mov_b32 v236, v92
	v_dual_mov_b32 v239, v95 :: v_dual_mov_b32 v238, v94
	v_dual_mov_b32 v241, v91 :: v_dual_mov_b32 v240, v90
	v_dual_mov_b32 v243, v89 :: v_dual_mov_b32 v242, v88
	v_dual_mov_b32 v245, v85 :: v_dual_mov_b32 v244, v84
	v_dual_mov_b32 v247, v87 :: v_dual_mov_b32 v246, v86
	v_dual_mov_b32 v249, v83 :: v_dual_mov_b32 v248, v82
	v_dual_mov_b32 v251, v81 :: v_dual_mov_b32 v250, v80
	v_dual_mov_b32 v253, v77 :: v_dual_mov_b32 v252, v76
	v_dual_mov_b32 v195, v79 :: v_dual_mov_b32 v194, v78
	v_dual_mov_b32 v255, v75 :: v_dual_mov_b32 v254, v74
	v_dual_mov_b32 v197, v73 :: v_dual_mov_b32 v196, v72
	v_dual_mov_b32 v203, v69 :: v_dual_mov_b32 v202, v68
	v_dual_mov_b32 v205, v71 :: v_dual_mov_b32 v204, v70
	v_dual_mov_b32 v207, v67 :: v_dual_mov_b32 v206, v66
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v211, s23, v9
	v_add_nc_u32_e32 v227, s23, v0
	ds_load_2addr_b64 v[194:197], v211 offset1:32
	ds_load_2addr_b64 v[203:206], v211 offset0:64 offset1:96
	ds_load_2addr_b64 v[207:210], v211 offset0:128 offset1:160
	ds_load_2addr_b64 v[211:214], v211 offset0:192 offset1:224
	ds_load_2addr_b64 v[215:218], v227 offset1:32
	ds_load_2addr_b64 v[219:222], v227 offset0:64 offset1:96
	ds_load_2addr_b64 v[223:226], v227 offset0:192 offset1:224
	ds_load_2addr_b64 v[227:230], v227 offset0:128 offset1:160
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[207:208], v[200:201], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[209:210], v[200:201], v[170:177] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[213:214], v[200:201], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[194:195], v[200:201], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[196:197], v[200:201], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[203:204], v[200:201], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[205:206], v[200:201], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[211:212], v[200:201], v[178:185] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[130:137], v[215:216], v[198:199], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[217:218], v[198:199], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[219:220], v[198:199], v[146:153] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[225:226], v[198:199], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[221:222], v[198:199], v[154:161] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[227:228], v[198:199], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[229:230], v[198:199], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[223:224], v[198:199], v[178:185] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[192:193], off offset:4
	scratch_store_b64 off, v[188:189], off offset:12
	v_dual_mov_b32 v188, v190 :: v_dual_mov_b32 v209, v187
	v_mov_b32_e32 v219, v177
	v_mov_b32_e32 v211, v185
	v_mov_b32_e32 v213, v181
	v_dual_mov_b32 v215, v183 :: v_dual_mov_b32 v218, v176
	v_mov_b32_e32 v217, v179
	v_mov_b32_e32 v223, v173
	v_mov_b32_e32 v221, v175
	v_mov_b32_e32 v225, v171
	v_mov_b32_e32 v227, v169
	v_mov_b32_e32 v229, v165
	v_mov_b32_e32 v231, v167
	v_mov_b32_e32 v233, v163
	v_mov_b32_e32 v235, v161
	v_mov_b32_e32 v237, v157
	v_mov_b32_e32 v239, v159
	v_mov_b32_e32 v241, v155
	v_mov_b32_e32 v243, v153
	v_mov_b32_e32 v245, v149
	v_mov_b32_e32 v247, v151
	v_mov_b32_e32 v249, v147
	v_mov_b32_e32 v251, v145
	v_mov_b32_e32 v253, v141
	v_mov_b32_e32 v195, v143
	v_mov_b32_e32 v255, v139
	v_mov_b32_e32 v197, v137
	v_mov_b32_e32 v203, v133
	v_mov_b32_e32 v205, v135
	v_mov_b32_e32 v207, v131
	v_dual_mov_b32 v189, v191 :: v_dual_mov_b32 v210, v184
	v_mov_b32_e32 v208, v186
	v_mov_b32_e32 v212, v180
	v_mov_b32_e32 v214, v182
	v_mov_b32_e32 v216, v178
	v_mov_b32_e32 v222, v172
	v_mov_b32_e32 v220, v174
	v_mov_b32_e32 v224, v170
	v_mov_b32_e32 v226, v168
	v_mov_b32_e32 v228, v164
	v_mov_b32_e32 v230, v166
	v_mov_b32_e32 v232, v162
	v_mov_b32_e32 v234, v160
	v_mov_b32_e32 v236, v156
	v_mov_b32_e32 v238, v158
	v_mov_b32_e32 v240, v154
	v_mov_b32_e32 v242, v152
	v_mov_b32_e32 v244, v148
	v_mov_b32_e32 v246, v150
	v_mov_b32_e32 v248, v146
	v_mov_b32_e32 v250, v144
	v_mov_b32_e32 v252, v140
	v_mov_b32_e32 v194, v142
	v_mov_b32_e32 v254, v138
	v_mov_b32_e32 v196, v136
	v_mov_b32_e32 v202, v132
	v_mov_b32_e32 v204, v134
	v_mov_b32_e32 v206, v130
	scratch_store_b64 off, v[188:189], off offset:20 ; 8-byte Folded Spill
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[128:129], off, off offset:4
	scratch_load_b64 v[130:131], off, off offset:12
	scratch_load_b64 v[137:138], off, off offset:20
	.loc	1 121 31 is_stmt 1              ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v9, s1, v9
	v_add_nc_u32_e32 v94, s1, v0
	ds_load_2addr_b64 v[66:69], v9 offset1:32
	ds_load_2addr_b64 v[70:73], v9 offset0:64 offset1:96
	ds_load_2addr_b64 v[74:77], v9 offset0:128 offset1:160
	ds_load_2addr_b64 v[78:81], v9 offset0:192 offset1:224
	ds_load_2addr_b64 v[82:85], v94 offset1:32
	ds_load_2addr_b64 v[86:89], v94 offset0:64 offset1:96
	ds_load_2addr_b64 v[90:93], v94 offset0:128 offset1:160
	ds_load_2addr_b64 v[94:97], v94 offset0:192 offset1:224
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[74:75], v[200:201], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[76:77], v[200:201], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[78:79], v[200:201], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[200:201], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[66:67], v[200:201], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[200:201], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[200:201], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[200:201], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[84:85], v[198:199], v[58:65] neg_lo:[1,1,0]
	v_mov_b32_e32 v84, v244
	v_wmma_i32_16x16x16_iu4 v[34:41], v[82:83], v[198:199], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[86:87], v[198:199], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[88:89], v[198:199], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[90:91], v[198:199], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[92:93], v[198:199], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[94:95], v[198:199], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[198:199], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v85, v245 :: v_dual_mov_b32 v86, v246
	v_dual_mov_b32 v87, v247 :: v_dual_mov_b32 v82, v248
	v_dual_mov_b32 v83, v249 :: v_dual_mov_b32 v80, v250
	v_dual_mov_b32 v81, v251 :: v_dual_mov_b32 v76, v252
	v_dual_mov_b32 v77, v253 :: v_dual_mov_b32 v74, v254
	v_mov_b32_e32 v75, v255
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v131, v125 :: v_dual_mov_b32 v130, v124
	v_dual_mov_b32 v138, v127 :: v_dual_mov_b32 v137, v126
	v_dual_mov_b32 v209, v123 :: v_dual_mov_b32 v208, v122
	v_dual_mov_b32 v211, v113 :: v_dual_mov_b32 v210, v112
	v_dual_mov_b32 v213, v109 :: v_dual_mov_b32 v212, v108
	v_dual_mov_b32 v215, v111 :: v_dual_mov_b32 v214, v110
	v_dual_mov_b32 v217, v107 :: v_dual_mov_b32 v216, v106
	v_dual_mov_b32 v219, v121 :: v_dual_mov_b32 v218, v120
	v_dual_mov_b32 v223, v117 :: v_dual_mov_b32 v222, v116
	v_dual_mov_b32 v221, v119 :: v_dual_mov_b32 v220, v118
	v_dual_mov_b32 v225, v115 :: v_dual_mov_b32 v224, v114
	v_dual_mov_b32 v227, v105 :: v_dual_mov_b32 v226, v104
	v_dual_mov_b32 v229, v101 :: v_dual_mov_b32 v228, v100
	v_dual_mov_b32 v231, v103 :: v_dual_mov_b32 v230, v102
	v_dual_mov_b32 v233, v99 :: v_dual_mov_b32 v232, v98
	v_dual_mov_b32 v235, v97 :: v_dual_mov_b32 v234, v96
	v_dual_mov_b32 v237, v93 :: v_dual_mov_b32 v236, v92
	v_dual_mov_b32 v239, v95 :: v_dual_mov_b32 v238, v94
	v_dual_mov_b32 v241, v91 :: v_dual_mov_b32 v240, v90
	v_dual_mov_b32 v243, v89 :: v_dual_mov_b32 v242, v88
	v_dual_mov_b32 v195, v79 :: v_dual_mov_b32 v194, v78
	v_dual_mov_b32 v197, v73 :: v_dual_mov_b32 v196, v72
	v_dual_mov_b32 v203, v69 :: v_dual_mov_b32 v202, v68
	v_dual_mov_b32 v205, v71 :: v_dual_mov_b32 v204, v70
	v_dual_mov_b32 v207, v67 :: v_dual_mov_b32 v206, v66
.LBB0_17:
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v108, v230
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v230, v4
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v192, v53
	v_cvt_f32_i32_e32 v53, v25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v126, v233
	v_cvt_f32_i32_e32 v89, v224
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v224, v1
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v125, v232
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v232, v3
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v151, v236
	v_cvt_f32_i32_e32 v152, v237
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v135, v234
	v_cvt_f32_i32_e32 v136, v235
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v107, v231
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v141, v26
	v_cvt_f32_i32_e32 v168, v38
	v_cvt_f32_i32_e32 v164, v45
	v_cvt_f32_i32_e32 v45, v11
	v_cvt_f32_i32_e32 v169, v36
	v_cvt_f32_i32_e32 v36, v12
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v88, v225
	v_cvt_f32_i32_e32 v225, v211
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v211, v63
	v_cvt_f32_i32_e32 v63, v52
	v_cvt_f32_i32_e32 v52, v24
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v154, v206
	v_cvt_f32_i32_e32 v70, v203
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v142, v27
	v_cvt_f32_i32_e32 v132, v28
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v71, v207
	v_cvt_f32_i32_e32 v69, v202
	v_cvt_f32_i32_e32 v254, v204
	v_cvt_f32_i32_e32 v252, v197
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_i32_e32 v201, v195
	v_cvt_f32_i32_e32 v187, v83
	v_cvt_f32_i32_e32 v172, v87
	v_cvt_f32_i32_e32 v97, v226
	v_cvt_f32_i32_e32 v87, v222
	v_cvt_f32_i32_e32 v83, v219
	v_cvt_f32_i32_e32 v78, v212
	v_cvt_f32_i32_e32 v79, v213
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v222, v59
	v_cvt_f32_i32_e32 v207, v65
	v_cvt_f32_i32_e32 v185, v55
	v_cvt_f32_i32_e32 v171, v43
	v_cvt_f32_i32_e32 v134, v29
	v_cvt_f32_i32_e32 v123, v30
	v_cvt_f32_i32_e32 v115, v33
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v110, v86
	v_cvt_f32_i32_e32 v86, v223
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v223, v2
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v253, v196
	v_cvt_f32_i32_e32 v251, v74
	v_cvt_f32_i32_e32 v193, v80
	v_cvt_f32_i32_e32 v179, v85
	v_cvt_f32_i32_e32 v165, v242
	v_cvt_f32_i32_e32 v120, v243
	v_cvt_f32_i32_e32 v127, v240
	v_cvt_f32_i32_e32 v133, v241
	v_cvt_f32_i32_e32 v143, v238
	v_cvt_f32_i32_e32 v144, v239
	v_cvt_f32_i32_e32 v117, v229
	v_cvt_f32_i32_e32 v85, v221
	v_cvt_f32_i32_e32 v80, v216
	v_cvt_f32_i32_e32 v229, v210
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v221, v58
	v_cvt_f32_i32_e32 v216, v60
	v_cvt_f32_i32_e32 v58, v50
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_i32_e32 v199, v51
	v_cvt_f32_i32_e32 v178, v57
	v_cvt_f32_i32_e32 v170, v42
	v_cvt_f32_i32_e32 v104, v18
	v_cvt_f32_i32_e32 v74, v17
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v245, v76
	v_cvt_f32_i32_e32 v246, v77
	v_cvt_f32_i32_e32 v200, v194
	v_cvt_f32_i32_e32 v194, v81
	v_cvt_f32_i32_e32 v186, v82
	v_cvt_f32_i32_e32 v99, v84
	v_cvt_f32_i32_e32 v116, v228
	v_cvt_f32_i32_e32 v96, v227
	v_cvt_f32_i32_e32 v84, v220
	v_cvt_f32_i32_e32 v82, v218
	v_cvt_f32_i32_e32 v81, v217
	v_cvt_f32_i32_e32 v76, v214
	v_cvt_f32_i32_e32 v77, v215
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v217, v61
	v_cvt_f32_i32_e32 v206, v64
	v_cvt_f32_i32_e32 v184, v54
	v_cvt_f32_i32_e32 v177, v56
	v_cvt_f32_i32_e32 v163, v44
	v_cvt_f32_i32_e32 v157, v46
	v_cvt_f32_i32_e32 v158, v47
	v_cvt_f32_i32_e32 v149, v48
	v_cvt_f32_i32_e32 v150, v49
	v_cvt_f32_i32_e32 v124, v31
	v_cvt_f32_i32_e32 v114, v32
	v_cvt_f32_i32_e32 v105, v19
	v_cvt_f32_i32_e32 v61, v22
	v_cvt_f32_i32_e32 v44, v10
	v_cvt_f32_i32_e32 v94, v20
	v_cvt_f32_i32_e32 v95, v21
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v249, v75
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v75, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s6
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v92, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v66, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s21, v92
	.loc	1 133 31                        ; generate_amdgcn.py:133:31
	v_add_lshl_u32 v255, s22, v66, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s21, s21, s11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v9, 1, v9
	buffer_load_u16 v90, v9, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x6
	buffer_load_u16 v91, v255, s[4:7], 0 offen offset:4
	buffer_load_u16 v67, v255, s[4:7], 0 offen offset:24
	buffer_load_u16 v68, v255, s[4:7], 0 offen offset:28
	buffer_load_u16 v156, v255, s[4:7], 0 offen offset:16
	buffer_load_u16 v174, v255, s[4:7], 0 offen offset:8
	buffer_load_u16 v100, v255, s[4:7], 0 offen
	buffer_load_u16 v182, v255, s[4:7], 0 offen offset:12
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v9, s20, v66
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v205
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v4, 16, v90
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v90, 16, v91
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v100, 16, v100
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v90, v4, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v100, v4, v100
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v90, v90, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v100, v100, v34
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v176, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v176
	v_cndmask_b32_e64 v176, 0, 0x42800000, s0
	v_cndmask_b32_e64 v198, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, 0xbfb8aa3b, v100
	v_exp_f32_e32 v176, v176
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v176, v176, v198
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v106, 1, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v9, 16, v0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v25, 1.0, v176
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x1
	buffer_load_u16 v162, v255, s[4:7], 0 offen offset:20
	buffer_load_u16 v160, v106, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v72, 4, v106
	v_or_b32_e32 v3, 16, v106
	v_or_b32_e32 v7, 20, v106
	v_or_b32_e32 v73, 12, v106
	v_or_b32_e32 v8, 24, v106
	s_clause 0x2
	buffer_load_u16 v233, v72, s[4:7], 0 offen
	buffer_load_u16 v236, v3, s[4:7], 0 offen
	buffer_load_u16 v237, v7, s[4:7], 0 offen
	v_or_b32_e32 v72, 8, v106
	s_clause 0x1
	buffer_load_u16 v234, v72, s[4:7], 0 offen
	buffer_load_u16 v235, v73, s[4:7], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v72, v208
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v9
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v73, v14
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v183, 32, v106
	v_or_b32_e32 v189, 36, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v72, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v209
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v190, 40, v106
	v_or_b32_e32 v196, 44, v106
	v_or_b32_e32 v203, 48, v106
	v_or_b32_e32 v205, 52, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v72, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v130
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v209, 56, v106
	v_or_b32_e32 v210, 60, v106
	v_or_b32_e32 v41, 0x48, v106
	v_or_b32_e32 v42, 0x4c, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v72, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v131
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v50, 0x60, v106
	v_or_b32_e32 v51, 0x64, v106
	v_or_b32_e32 v18, 0x6c, v106
	v_or_b32_e32 v57, 0x74, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v72, off offset:48 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v137
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v60, 0x78, v106
	v_or_b32_e32 v139, 0x80, v106
	v_or_b32_e32 v146, 0x84, v106
	v_or_b32_e32 v148, 0x88, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v72, off offset:28 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v138
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v138, v39
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v238, 0x8c, v106
	v_or_b32_e32 v239, 0x90, v106
	v_or_b32_e32 v240, 0x94, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v72, off offset:36 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v128
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v241, 0x98, v106
	v_or_b32_e32 v242, 0x9c, v106
	v_or_b32_e32 v243, 0xa0, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v72, off offset:20 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v129
	scratch_store_b32 off, v9, off offset:32 ; 4-byte Folded Spill
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v129, v37
	v_cvt_f32_i32_e32 v37, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.h, 0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v72, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v15
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v15, 28, v106
	s_clause 0x1
	buffer_load_u16 v231, v8, s[4:7], 0 offen
	buffer_load_u16 v26, v15, s[4:7], 0 offen
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v15, 16, v182
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v244, 0xa4, v106
	v_or_b32_e32 v91, 0xa8, v106
	v_or_b32_e32 v93, 0xbc, v106
	v_or_b32_e32 v35, 0xc0, v106
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v4, v15
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v29, s11, v92
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x1f
	buffer_load_u16 v30, v255, s[4:7], 0 offen offset:32
	buffer_load_u16 v226, v255, s[4:7], 0 offen offset:36
	buffer_load_u16 v33, v255, s[4:7], 0 offen offset:40
	buffer_load_u16 v219, v255, s[4:7], 0 offen offset:44
	buffer_load_u16 v212, v255, s[4:7], 0 offen offset:48
	buffer_load_u16 v213, v255, s[4:7], 0 offen offset:52
	buffer_load_u16 v208, v255, s[4:7], 0 offen offset:56
	buffer_load_u16 v43, v255, s[4:7], 0 offen offset:60
	buffer_load_u16 v202, v255, s[4:7], 0 offen offset:64
	buffer_load_u16 v204, v255, s[4:7], 0 offen offset:68
	buffer_load_u16 v195, v255, s[4:7], 0 offen offset:72
	buffer_load_u16 v197, v255, s[4:7], 0 offen offset:76
	buffer_load_u16 v188, v255, s[4:7], 0 offen offset:80
	buffer_load_u16 v191, v255, s[4:7], 0 offen offset:84
	buffer_load_u16 v180, v255, s[4:7], 0 offen offset:88
	buffer_load_u16 v181, v255, s[4:7], 0 offen offset:92
	buffer_load_u16 v173, v255, s[4:7], 0 offen offset:96
	buffer_load_u16 v175, v255, s[4:7], 0 offen offset:100
	buffer_load_u16 v166, v255, s[4:7], 0 offen offset:104
	buffer_load_u16 v167, v255, s[4:7], 0 offen offset:108
	buffer_load_u16 v159, v255, s[4:7], 0 offen offset:112
	buffer_load_u16 v161, v255, s[4:7], 0 offen offset:116
	buffer_load_u16 v153, v255, s[4:7], 0 offen offset:120
	buffer_load_u16 v155, v255, s[4:7], 0 offen offset:124
	buffer_load_u16 v145, v255, s[4:7], 0 offen offset:128
	buffer_load_u16 v147, v255, s[4:7], 0 offen offset:132
	buffer_load_u16 v137, v255, s[4:7], 0 offen offset:136
	buffer_load_u16 v140, v255, s[4:7], 0 offen offset:140
	buffer_load_u16 v128, v255, s[4:7], 0 offen offset:144
	buffer_load_u16 v131, v255, s[4:7], 0 offen offset:148
	buffer_load_u16 v118, v255, s[4:7], 0 offen offset:152
	buffer_load_u16 v121, v255, s[4:7], 0 offen offset:156
	s_clause 0x7
	buffer_load_u16 v109, v255, s[4:7], 0 offen offset:160
	buffer_load_u16 v111, v255, s[4:7], 0 offen offset:164
	buffer_load_u16 v101, v255, s[4:7], 0 offen offset:168
	buffer_load_u16 v102, v255, s[4:7], 0 offen offset:172
	buffer_load_u16 v65, v255, s[4:7], 0 offen offset:176
	buffer_load_u16 v92, v255, s[4:7], 0 offen offset:180
	buffer_load_u16 v55, v255, s[4:7], 0 offen offset:184
	buffer_load_u16 v59, v255, s[4:7], 0 offen offset:188
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v112, 0xc8, v106
	v_or_b32_e32 v17, 0xdc, v106
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v15, v15, v129 :: v_dual_mul_f32 v156, v4, v156
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v90
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v39, v62
	v_cvt_f32_i32_e32 v62, v23
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v31, 64, v106
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v156, v168
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v32, 0x44, v106
	v_or_b32_e32 v46, 0x50, v106
	v_or_b32_e32 v47, 0x54, v106
	v_or_b32_e32 v48, 0x58, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v49, 0x5c, v106
	v_or_b32_e32 v54, 0x68, v106
	v_or_b32_e32 v56, 0x70, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v90
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v64, 0x7c, v106
	v_or_b32_e32 v247, 0xac, v106
	v_or_b32_e32 v248, 0xb0, v106
	v_or_b32_e32 v250, 0xb4, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v34, v34
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v119, 0xb8, v106
	v_or_b32_e32 v113, 0xc4, v106
	v_or_b32_e32 v130, 0xcc, v106
	v_or_b32_e32 v122, 0xd0, v106
	v_or_b32_e32 v98, 0xd4, v106
	v_or_b32_e32 v103, 0xd8, v106
	v_or_b32_e32 v19, 0xe0, v106
	v_or_b32_e32 v20, 0xe4, v106
	v_or_b32_e32 v21, 0xe8, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v34, v34, v182
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v8, 0xec, v106
	v_or_b32_e32 v7, 0xf0, v106
	v_or_b32_e32 v6, 0xf4, v106
	v_or_b32_e32 v5, 0xf8, v106
	v_or_b32_e32 v106, 0xfc, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v13.h
	s_mov_b32 s11, s7
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v160, 16, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v162, v4, v162
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v160, v4, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v12, v162, v138
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v14, v160, v154
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v174, v4, v174
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v129, null, v34, v34, v90
	v_div_scale_f32 v162, s1, v90, v34, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v24, v174, v169
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v28, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v174, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v169
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v138, -v129, v28, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v174, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v169, 0, 0x42800000, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v28, v138, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v174, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v169, 0xbfb8aa3b, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, null, v25, v25, v100
	v_div_scale_f32 v3, s2, v100, v25, v100
	v_mul_f32_e32 v0, v162, v28
	v_rcp_f32_e32 v1, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v138, v174
	v_exp_f32_e32 v156, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v169, -v129, v0, v162
	v_fmac_f32_e32 v0, v169, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v176, -v27, v1, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v138, v138, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v10, v156, v154
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v129, v0, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v1, v176, v1
	v_div_fmas_f32 v0, v9, v28, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, v3, v1
	s_mov_b32 vcc_lo, s2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v9, 0xbfb8aa3b, v12 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v160, -v27, v2, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v26, v4, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v2, v160, v1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1f
	buffer_load_u16 v23, v183, s[4:7], 0 offen
	buffer_load_u16 v22, v189, s[4:7], 0 offen
	buffer_load_u16 v227, v190, s[4:7], 0 offen
	buffer_load_u16 v228, v196, s[4:7], 0 offen
	buffer_load_u16 v218, v203, s[4:7], 0 offen
	buffer_load_u16 v220, v205, s[4:7], 0 offen
	buffer_load_u16 v214, v209, s[4:7], 0 offen
	buffer_load_u16 v215, v210, s[4:7], 0 offen
	buffer_load_u16 v209, v31, s[4:7], 0 offen
	buffer_load_u16 v210, v32, s[4:7], 0 offen
	buffer_load_u16 v203, v41, s[4:7], 0 offen
	buffer_load_u16 v205, v42, s[4:7], 0 offen
	buffer_load_u16 v196, v46, s[4:7], 0 offen
	buffer_load_u16 v198, v47, s[4:7], 0 offen
	buffer_load_u16 v189, v48, s[4:7], 0 offen
	buffer_load_u16 v190, v49, s[4:7], 0 offen
	buffer_load_u16 v182, v50, s[4:7], 0 offen
	buffer_load_u16 v183, v51, s[4:7], 0 offen
	buffer_load_u16 v174, v54, s[4:7], 0 offen
	buffer_load_u16 v176, v18, s[4:7], 0 offen
	buffer_load_u16 v168, v56, s[4:7], 0 offen
	buffer_load_u16 v169, v57, s[4:7], 0 offen
	buffer_load_u16 v160, v60, s[4:7], 0 offen
	buffer_load_u16 v162, v64, s[4:7], 0 offen
	buffer_load_u16 v154, v139, s[4:7], 0 offen
	buffer_load_u16 v156, v146, s[4:7], 0 offen
	buffer_load_u16 v146, v148, s[4:7], 0 offen
	buffer_load_u16 v148, v238, s[4:7], 0 offen
	buffer_load_u16 v18, v239, s[4:7], 0 offen
	buffer_load_u16 v139, v240, s[4:7], 0 offen
	buffer_load_u16 v129, v241, s[4:7], 0 offen
	buffer_load_u16 v241, v242, s[4:7], 0 offen
	s_clause 0xf
	buffer_load_u16 v238, v243, s[4:7], 0 offen
	buffer_load_u16 v242, v244, s[4:7], 0 offen
	buffer_load_u16 v240, v91, s[4:7], 0 offen
	buffer_load_u16 v239, v247, s[4:7], 0 offen
	buffer_load_u16 v244, v248, s[4:7], 0 offen
	buffer_load_u16 v243, v250, s[4:7], 0 offen
	buffer_load_u16 v91, v119, s[4:7], 0 offen
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v57, v35, s[4:7], 0 offen
	buffer_load_u16 v60, v113, s[4:7], 0 offen
	buffer_load_u16 v50, v112, s[4:7], 0 offen
	buffer_load_u16 v51, v130, s[4:7], 0 offen
	buffer_load_u16 v41, v122, s[4:7], 0 offen
	buffer_load_u16 v42, v98, s[4:7], 0 offen
	buffer_load_u16 v112, v103, s[4:7], 0 offen
	buffer_load_u16 v35, v17, s[4:7], 0 offen
	v_lshlrev_b32_e32 v17, 16, v233
	s_clause 0x7
	buffer_load_u16 v119, v19, s[4:7], 0 offen
	buffer_load_u16 v122, v20, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v20, v8, s[4:7], 0 offen
	buffer_load_u16 v113, v7, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v103, v5, s[4:7], 0 offen
	buffer_load_u16 v130, v106, s[4:7], 0 offen
	v_lshlrev_b32_e32 v5, 16, v235
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v3, -v27, v2, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v8, v4, v17 :: v_dual_lshlrev_b32 v7, 16, v234
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v17, 1.0, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v5, v4, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v1, v3, v1, v2
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v11
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v8, v8, v71
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v19, null, v17, v17, v15
	v_div_scale_f32 v32, s1, v15, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v2, v19
	v_div_fixup_f32 v1, v1, v25, v100
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v5, v5, v70
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v3, 0, 0x42800000, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v7, v4, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v14, v1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v34, v90
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v19, v2, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v8, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v3, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v2, v31, v2
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v1.h
	v_mov_b16_e32 v13.l, v0.h
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v34, v32, v2 :: v_dual_fmac_f32 v9, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v7, v7, v69 :: v_dual_and_b32 v16, 1, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v3, v3, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v8, -v19, v34, v32
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v1, v16, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v26, v26, v252 :: v_dual_add_f32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v34, v8, v2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v30, 16, v30
	s_clause 0x7
	buffer_load_u16 v98, v255, s[4:7], 0 offen offset:192
	buffer_load_u16 v100, v255, s[4:7], 0 offen offset:196
	buffer_load_u16 v64, v255, s[4:7], 0 offen offset:200
	buffer_load_u16 v90, v255, s[4:7], 0 offen offset:204
	buffer_load_u16 v54, v255, s[4:7], 0 offen offset:208
	buffer_load_u16 v56, v255, s[4:7], 0 offen offset:212
	buffer_load_u16 v48, v255, s[4:7], 0 offen offset:216
	buffer_load_u16 v49, v255, s[4:7], 0 offen offset:220
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v14, -v19, v34, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v19, 1, v13
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v9, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v14, v2, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v0, v0, v19, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v17, v15
	v_div_scale_f32 v15, null, v3, v3, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v0.h, 0x7fff, v0.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v5, v2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v5, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v15, v5, 1.0
	v_fmac_f32_e32 v5, v17, v5
	v_div_scale_f32 v17, s0, v11, v3, v11
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, null, v10, v10, v24
	v_rcp_f32_e32 v28, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v27, v28, 1.0
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, s2, v24, v10, v24
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v25, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v27, v25, v31
	v_fmac_f32_e32 v25, v8, v28
	v_div_scale_f32 v1, null, v9, v9, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v27, v25, v31
	v_rcp_f32_e32 v8, v1
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v27, 16, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v14, v14, v28, v25
	v_mul_f32_e32 v25, v17, v5
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v4, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v14, v10, v24
	v_fma_f32 v16, -v1, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v7, v7, v10 :: v_dual_fmac_f32 v8, v16, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, vcc_lo, v12, v9, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v10, 1, v13
	v_mov_b16_e32 v28.l, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v19, v16, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v10, v2, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v2, -v1, v19, v16
	v_fmac_f32_e32 v19, v2, v8
	v_fma_f32 v2, -v15, v25, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v1, v19, v16
	v_dual_fmac_f32 v25, v2, v5 :: v_dual_mul_f32 v2, v27, v38
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v27, 16, v237
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v14, 16, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v1, v8, v19
	v_fma_f32 v1, -v15, v25, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v19, 16, v236
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v4, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v8, v9, v12
	v_div_fmas_f32 v5, v1, v5, v25
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v19, v4, v19
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v27, v27, v66
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v1, s21, s20, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v5, v3, v11
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v19, v19, v254
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v14, v4, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v3, v19, v3 :: v_dual_mul_f32 v14, v14, v40
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v7, v17, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v10.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s2
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v16, v24
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x7
	buffer_load_u16 v46, v255, s[4:7], 0 offen offset:224
	buffer_load_u16 v47, v255, s[4:7], 0 offen offset:228
	buffer_load_u16 v38, v255, s[4:7], 0 offen offset:232
	buffer_load_u16 v40, v255, s[4:7], 0 offen offset:236
	buffer_load_u16 v31, v255, s[4:7], 0 offen offset:240
	buffer_load_u16 v32, v255, s[4:7], 0 offen offset:244
	buffer_load_u16 v24, v255, s[4:7], 0 offen offset:248
	buffer_load_u16 v25, v255, s[4:7], 0 offen offset:252
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v16, v15
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v27, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v3.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.h, v13.h
	v_cndmask_b16 v19.l, 0x7fff, v17.h, vcc_lo
	v_mov_b16_e32 v13.l, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v8, 1, v8
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v2 :: v_dual_and_b32 v17, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v7, v17, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v16, v5
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v10, null, v5, v5, v2
	v_rcp_f32_e32 v9, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v27, v10
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v11, v9, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v23, v4, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v29, -v10, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v9, v12, v9
	v_div_scale_f32 v12, s0, v14, v15, v14
	v_fmac_f32_e32 v27, v29, v27
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v4, v30
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v28, v12, v9
	v_div_scale_f32 v30, s1, v2, v5, v2
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v29, v29, v221 :: v_dual_mul_f32 v16, v4, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v11, v28, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v8, v3, v8, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v28, v34, v9
	v_mul_f32_e32 v34, v30, v27
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v67
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v11, -v11, v28, v12
	v_fma_f32 v12, -v10, v34, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v18, v4, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v34, v12, v27 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v29
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v34, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v9, v11, v9, v28
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v27, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v10, v5, v2
	v_div_fixup_f32 v5, v9, v15, v14
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v26, v5
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v17.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v219
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v66, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_mov_b16_e32 v13.l, v5.h
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v4, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v8.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v8, 1, v13
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v217
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v66, v12
	v_exp_f32_e32 v12, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v8, v5, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v30, 0xbfb8aa3b, v17 :: v_dual_add_f32 v11, 1.0, v11
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v11, v11, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v12, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s2
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v7, 1.0, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v14, null, v7, v7, v29
	v_fma_f32 v15, -v10, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, v15, v9
	v_div_scale_f32 v15, vcc_lo, v16, v11, v16
	v_dual_mul_f32 v5, v15, v9 :: v_dual_lshlrev_b32 v68, 16, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v4, v68
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v28, v68, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v28, v2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, s1, v29, v7, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v2.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v3, 1, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v14
	v_fma_f32 v27, -v14, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v12, v27, v12 :: v_dual_lshlrev_b32 v27, 16, v33
	v_fma_f32 v33, -v10, v5, v15
	v_mul_f32_e32 v34, v28, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v4, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v5, v33, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v2, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v33, -v14, v34, v28
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v27, v27, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v5, v15
	v_fmac_f32_e32 v34, v33, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v5, v10, v9, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v8.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v66
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v5, v11, v16
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v213
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, s3
	v_ldexp_f32 v10, v15, v10
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v23, v251
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v227
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v14, v34, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_mul_f32 v23, v4, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v9, v12, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v11, null, v10, v10, v17
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v23, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v30
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v9, v7, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s3
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v15, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v3.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v12, v9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, s1, v27, v9, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v11, v12, 1.0
	v_fmac_f32_e32 v12, v15, v12
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v4, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v14, v4, v22 :: v_dual_mul_f32 v15, v15, v211
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v14, v14, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v15
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v14, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v9, v9, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v7.h
	v_mov_b16_e32 v5.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v3, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v5, 1, v5
	v_and_b32_e32 v8, 1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v7, v5, 0x7fff
	v_add3_u32 v8, v2, v8, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v2, vcc_lo, v17, v10, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v14, v3, 1.0
	v_dual_mul_f32 v28, v2, v12 :: v_dual_fmac_f32 v3, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v11, v28, v2
	v_mul_f32_e32 v66, v29, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v34, v12
	v_fma_f32 v34, -v14, v66, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v2, -v11, v28, v2
	v_fmac_f32_e32 v66, v34, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v12, v28
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v12, -v14, v66, v29
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v218
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v212
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v10, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v3, v12, v3, v66
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v29, v4, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v3, v9, v27
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v23, v3
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v220
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v23, v4, v23
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v4, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s2
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v39
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v11, v30
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v39.l, 0x7fff, v5.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s3
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s3
	v_ldexp_f32 v11, v11, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v16
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v3.h
	v_mov_b16_e32 v11.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v30
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v8, v8, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v5, v3, v11, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v12, v9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v10
	v_div_scale_f32 v11, vcc_lo, v15, v8, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v7, null, v9, v9, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v17, v7
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 16, v228
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v22, v4, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v22, v246
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v22, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v10, v12, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v12, v22, v12
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v27, v11, v12 :: v_dual_and_b32 v14, 1, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v2, v14, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v2, 16, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v10, v27, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v14.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v14, -v7, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v30, v12
	v_dual_fmac_f32 v17, v14, v17 :: v_dual_mul_f32 v14, v4, v22
	v_div_scale_f32 v22, s0, v16, v9, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v10, -v10, v27, v11
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v14, v14, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v34, v22, v17
	v_div_fmas_f32 v10, v10, v12, v27
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v14
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v7, v34, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v8, v10, v8, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v34, v30, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v7, -v7, v34, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v7, v7, v17, v34
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v23, v201
	v_mul_f32_e32 v23, v29, v200
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v214
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v66
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v7, v9, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v17, v8
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v29, v4, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v2, v4, v2 :: v_dual_mul_f32 v7, v23, v7
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v215
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v5.h, vcc_lo
	v_mov_b16_e32 v13.l, v3.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v12, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v7.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v23, v4, v23
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v2, v2, v207
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.h, v13.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v23, v23, v194 :: v_dual_and_b32 v22, 1, v13
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v28, 0xbfb8aa3b, v2 :: v_dual_and_b32 v5, 1, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v8, v8, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v7, v5, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s1
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v15, v16, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v27, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v28, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_lshlrev_b32 v28, 16, v202
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v4, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, s0, v14, v8, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v10, null, v11, v11, v2
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v27, v27, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v9, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v10, v9, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v9, v17, v9
	v_div_scale_f32 v17, vcc_lo, v2, v11, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v30, v17, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v10, v30, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v58, v9
	v_fma_f32 v10, -v10, v30, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v10, v9, v30
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v9, v11, v2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v29, v193
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v209
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v12, 16, v204
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v66, v28, v16
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v2, v23, v2 :: v_dual_mul_f32 v29, v4, v29
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v12, v4, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v15, v66, v28
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v12, v12, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v66, v58, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v58.l, 0x7fff, v5.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v15, v66, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v16, v66
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v13.h
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v12
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v34, v17
	v_exp_f32_e32 v17, v67
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v10, v8, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v10, null, v15, v15, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v17, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v11, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v3, v22, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v14, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v8.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v58.h, 0x7fff, v11.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v11, 16, v197
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v9, v9, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v10, v14, 1.0
	v_div_scale_f32 v28, s1, v27, v9, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v16, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v8, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v14, v22, v14
	v_div_scale_f32 v7, vcc_lo, v12, v15, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v11, v4, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v23, v7, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v17, v16, 1.0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v11, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v10, v23, v7
	v_fmac_f32_e32 v16, v22, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v66, 0xbfb8aa3b, v11 :: v_dual_fmac_f32 v23, v30, v14
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v34, v28, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v4, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v7, -v10, v23, v7
	v_fma_f32 v30, -v17, v34, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v7, v7, v14, v23
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v30, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v66, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v17, v34, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v14, v63
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v28, 16, v203
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v16, v17, v16, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, s3
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v29, v186
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v7, v15, v12
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v16, v9, v27
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v27, 16, v188
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v22
	v_ldexp_f32 v14, v14, v23
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v17, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v13
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v191
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v10, v10
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v4, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v2, v3, 0x7fff
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v2, 16, v210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v63.h, 0x7fff, v3.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v2, v4, v2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v3, 1.0, v14 :: v_dual_mul_f32 v2, v2, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v2, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v7, v10, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v3, v3, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e32 v13.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v2, v2
	v_mov_b16_e32 v12.h, v13.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v7, v7, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v23, -v14, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v16, v23, v16 :: v_dual_mul_f32 v23, v4, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v8, v10
	v_div_scale_f32 v27, s1, v22, v7, v22
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v184
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v63.l, 0x7fff, v5.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v66, v27, v16 :: v_dual_and_b32 v5, 1, v13
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v67, 0xbfb8aa3b, v23 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v10, v8, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v2, v5, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v2, v4, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v67
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v8, v17, v8 :: v_dual_lshlrev_b32 v15, 16, v205
	v_div_scale_f32 v17, vcc_lo, v11, v3, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v4, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v29, v17, v8
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v15, v179
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v10, v29, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v34, v8
	v_fma_f32 v34, -v14, v66, v27
	v_fma_f32 v10, -v10, v29, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v34, v16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v34, 16, v196
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v10, v8, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v10, -v14, v66, v27
	s_mov_b32 vcc_lo, s1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v34, v4, v34 :: v_dual_lshlrev_b32 v27, 16, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v8, v3, v11
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v11, v28, v99 :: v_dual_lshlrev_b32 v28, 16, v198
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v99.h, 0x7fff, v5.h, s0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v15, v3
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v16, v66
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v4, v28
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v2, v2, v185
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v13.l, v3.h
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v30, 0, 0x42800000, s2
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v14, v30, v17
	v_exp_f32_e32 v17, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v17, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v5, 1.0, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v5, v5, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v17, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v9, v12, 0x7fff
	v_and_b32_e32 v9, 1, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v10, v7, v22
	v_div_scale_f32 v10, null, v14, v14, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v99.l, 0x7fff, v12.h, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v12, v4, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, vcc_lo, v2, v14, v2
	v_rcp_f32_e32 v8, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v3, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v12, v12, v178 :: v_dual_mul_f32 v7, v11, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v13.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v10, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v8, v22, v8 :: v_dual_and_b32 v11, 1, v11
	v_fma_f32 v22, -v15, v17, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v7, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v29, v16, v8
	v_dual_fmac_f32 v17, v22, v17 :: v_dual_mul_f32 v22, v4, v27
	v_div_scale_f32 v27, s0, v23, v5, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v10, v29, v16
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v67, v27, v17
	v_dual_fmac_f32 v29, v66, v8 :: v_dual_mul_f32 v68, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v15, v67, v27
	v_fma_f32 v10, -v10, v29, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v67, v66, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v8, v10, v8, v29
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v190
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v30
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v15, v67, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v17, v67
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v28, v172
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v12
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v8, v14, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v28, v34, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v10, v5, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v30, v30
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v17, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v110.h, 0x7fff, v9.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v175
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v28, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.h, v13.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v4, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.l, v5.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v30, v16
	v_exp_f32_e32 v16, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v110.l, 0x7fff, v11.h, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v171
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v14
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v13
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v7, v5, v7, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v16, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v3, 1.0, v8
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v3, v3, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v9, v16
	v_fma_f32 v23, -v16, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v9, v23, v9
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v23, 16, v173
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v15, v15, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v4, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v8, v10
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v23
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v14, -v10, v8, 1.0
	v_div_scale_f32 v27, s1, v22, v3, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v8, v14, v8
	v_div_scale_f32 v14, vcc_lo, v12, v15, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v34, v27, v9
	v_mul_f32_e32 v2, v14, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v10, v2, v14
	v_fmac_f32_e32 v2, v30, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v16, v34, v27
	v_fma_f32 v10, -v10, v2, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v30, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v14, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v10, v8, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v16, v34, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v23 :: v_dual_lshlrev_b32 v27, 16, v182
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v8, v9, v34
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v4, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v9, v28
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v4, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v14, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v8, v3, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s3
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v27, v27, v127 :: v_dual_lshlrev_b32 v66, 16, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v15, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v9, v8
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v66, v4, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, null, v10, v10, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v16, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v14, v66, v165
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v120.l, 0x7fff, v7.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v16, v2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v167
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v14, v3
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v8, v8, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_cndmask_b16 v120.h, 0x7fff, v11.h, s0
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v7, v14
	v_fma_f32 v15, -v9, v12, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, s1, v23, v8, v23
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 16, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v12, v15, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v4, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v2, vcc_lo, v17, v10, v17
	v_fma_f32 v16, -v14, v7, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v15, v15, v164 :: v_dual_mul_f32 v22, v4, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v28, v2, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v7, v16, v7 :: v_dual_lshlrev_b32 v16, 16, v166
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v9, v28, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v13.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v66, v29, v7
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v4, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v28, v34, v12
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v22, v133
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v14, v66, v29
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v163
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v2, -v9, v28, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v66, v34, v7 :: v_dual_and_b32 v5, 1, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v67, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v2, v12, v28
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v12, -v14, v66, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v67
	v_exp_f32_e32 v9, v30
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s2
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v174
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v7, v12, v7, v66
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v29, v4, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v7, v8, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v16
	v_ldexp_f32 v9, v9, v14
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v10, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v127.h, 0x7fff, v11.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v30
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v7, v27, v7 :: v_dual_mul_f32 v2, v22, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v13.h
	v_cndmask_b16 v127.l, 0x7fff, v5.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v9, v9, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v12, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v7.h
	v_and_b32_e32 v14, 1, v13
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v176
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v8, 1.0, v8 :: v_dual_and_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v2, v14, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v2, 16, v161
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v3, null, v8, v8, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v10, v12, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v133.h, 0x7fff, v14.h, s0
	v_add3_u32 v5, v7, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v3
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v2, v4, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v12, v22, v12
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v159
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, vcc_lo, v15, v9, v15
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v2, v2, v158 :: v_dual_mul_f32 v23, v4, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v27, v11, v12
	v_fma_f32 v14, -v3, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v10, v27, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v17, v14, v17 :: v_dual_mul_f32 v14, v4, v22
	v_div_scale_f32 v22, s0, v16, v8, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v27, v30, v12
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v14, v14, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v34, v22, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v27, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v3, v34, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v12, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v34, v30, v17
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v3, -v3, v34, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v3, v3, v17, v34
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v23, v152
	v_mul_f32_e32 v23, v29, v151
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v28, v11
	v_exp_f32_e32 v12, v66
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v3, v8, v16
	v_div_fixup_f32 v8, v10, v9, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_lshlrev_b32 v28, 16, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v23, v3
	v_mul_f32_e32 v7, v17, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v133.l, 0x7fff, v5.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v11, v11, v2
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v12, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v3.h
	v_mov_b16_e32 v12.h, v13.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v168
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v9, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v5, 1, v12
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v29, v4, v29 :: v_dual_lshlrev_b32 v12, 16, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v8, v8, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v13
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v4, v12 :: v_dual_lshlrev_b32 v23, 16, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v10, v9, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v3, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v12, v12, v150
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v23, v4, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v9, v17, v9
	v_div_scale_f32 v17, vcc_lo, v2, v11, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v23, v23, v144 :: v_dual_mul_f32 v30, v17, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v27, v16
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v4, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, s0, v14, v8, v14
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v10, v30, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v27, v27, v149
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v67, v28, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v30, v66, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v15, v67, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v34, v34
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v30, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v67, v66, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v10, v9, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v15, v67, v28
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v34, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v9, v11, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v16, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s2
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v29, v143
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v10, v8, v14
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v13.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v15, v15, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v11, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v7, v22, 0x7fff
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v14, v10
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v17, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v8.h
	v_cndmask_b16 v143.h, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v143.l, 0x7fff, v5.h, s0
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v11, 16, v147
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v2, v23, v2 :: v_dual_and_b32 v7, 1, v16
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v10, v14, 1.0
	v_div_scale_f32 v17, null, v9, v9, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v8, v7, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v7, vcc_lo, v12, v15, v12
	v_rcp_f32_e32 v16, v17
	v_dual_fmac_f32 v14, v22, v14 :: v_dual_mul_f32 v11, v4, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, s1, v27, v9, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v23, v7, v14
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v11, v142
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v17, v16, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v29, v4, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v10, v23, v7
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v2, v3, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v22, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v23, v30, v14 :: v_dual_lshlrev_b32 v22, 16, v145
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v66
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v2, 16, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v34, v28, v16
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v4, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v7, -v10, v23, v7
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v2, v4, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v17, v34, v28
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v141
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v7, v7, v14, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v11
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v2, v2, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v34, v30, v16 :: v_dual_mul_f32 v67, 0xbfb8aa3b, v22
	v_div_fixup_f32 v7, v7, v15, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v14, v66
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v17, v34, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v67
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v2, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v140
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v16, v17, v16, v34
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, s3
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s3
	v_ldexp_f32 v14, v14, v23
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v29, v135
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v135.h, 0x7fff, v3.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v3, 1.0, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v16, v9, v27
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v10, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v135.l, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e64 s0, v2, v2
	v_and_b32_e32 v5, 1, v13
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v27, 16, v137
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v9, v17, v9 :: v_dual_lshlrev_b32 v28, 16, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v2, v5, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v2, v4, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v7, v10, v12
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v3, v3, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v2, v2, v134 :: v_dual_lshlrev_b32 v15, 16, v156
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v8, v10
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v4, v28
	v_dual_mul_f32 v15, v4, v15 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v7, v7, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e32 v12.h, v13.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v17, -v10, v8, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v15, v15, v126 :: v_dual_and_b32 v12, 1, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v8, v17, v8
	v_div_scale_f32 v17, vcc_lo, v11, v3, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v23, -v14, v16, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v9, v12, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v29, v17, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v30, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v16, v23, v16 :: v_dual_mul_f32 v23, v4, v27
	v_div_scale_f32 v27, s1, v22, v7, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v10, v29, v17
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v66, v27, v16
	v_fmac_f32_e32 v29, v34, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v14, v66, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v10, v29, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v66, v34, v16
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v34, 16, v146
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v10, v8, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v14, v66, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v14, v30, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v8, v3, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v16, v66
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_mul_f32 v11, v28, v125
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v125.h, 0x7fff, v5.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v67
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v10, v7, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_div_scale_f32 v10, null, v14, v14, v2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v15, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v131
	v_lshlrev_b32_e32 v27, 16, v128
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v28, 16, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v3.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v17, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v125.l, 0x7fff, v12.h, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v12, v4, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, vcc_lo, v2, v14, v2
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v5, 1.0, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v12, v12, v124 :: v_dual_and_b32 v9, 1, v13
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v34, v4, v34
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v5, v5, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v3, v9, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v4, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v15
	v_fma_f32 v22, -v10, v8, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v30
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v11, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v8, v22, v8
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v15, v17, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v29, v16, v8
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v12 :: v_dual_and_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v17, v22, v17 :: v_dual_mul_f32 v22, v4, v27
	v_div_scale_f32 v27, s0, v23, v5, v23
	v_fma_f32 v66, -v10, v29, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v30, v30
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v22, v22, v123 :: v_dual_mul_f32 v67, v27, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v7, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v29, v66, v8 :: v_dual_mul_f32 v68, 0xbfb8aa3b, v22
	v_fma_f32 v66, -v15, v67, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v10, v29, v16
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v67, v66, v17
	v_div_fmas_f32 v8, v10, v8, v29
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v15, v67, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v30, v16
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v8, v14, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v17, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v28, v117
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v68
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v28, v34, v116
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v10, v5, v23
	v_div_scale_f32 v10, null, v15, v15, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v116.h, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v2, v17, v2 :: v_dual_mul_f32 v5, v28, v5
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v121
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.h, v13.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v16, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_mov_b16_e32 v14.l, v5.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v4, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v3, 1.0, v8
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v8, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v14
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v115
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v116.l, 0x7fff, v11.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v3, v3, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v9, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v10, v8, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, s1, v22, v3, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v8, v14, v8
	v_div_scale_f32 v14, vcc_lo, v12, v15, v12
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v23, -v16, v9, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v2, v14, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v7, v5, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v9, v23, v9
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v23, 16, v118
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v10, v2, v14
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v34, v27, v9 :: v_dual_mul_f32 v23, v4, v23
	v_fmac_f32_e32 v2, v30, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v16, v34, v27
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v2, v14
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v14, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v34, v30, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v10, v8, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v8, -v16, v34, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v66
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v4, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v14, v10
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v129
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v8, v9, v34
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s3
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v34, 16, v238
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v15, v12
	v_div_fixup_f32 v3, v8, v3, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s3
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v34, v4, v34
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v16, v107
	v_mul_f32_e32 v14, v18, v108
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v9, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b16 v107.h, 0x7fff, v11.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v2, v16, v2 :: v_dual_mul_f32 v3, v14, v3
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v107.l, 0x7fff, v7.h, vcc_lo
	v_mov_b16_e32 v5.h, v13.h
	v_mov_b16_e32 v13.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v9, v8
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, null, v10, v10, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v13
	v_mov_b16_e32 v5.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v11, v2, v11, 0x7fff
	v_and_b32_e32 v5, 1, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v8, v8, v23
	v_div_scale_f32 v2, s0, v17, v10, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v108.h, 0x7fff, v11.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v7, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v9, v12, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v3, v5, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 16, v241
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v29, v4, v29 :: v_dual_fmac_f32 v12, v15, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v4, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v108.l, 0x7fff, v5.h, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v16, -v14, v7, 1.0
	v_mul_f32_e32 v3, v2, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v15, v105
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v109
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v7, v16, v7
	v_div_scale_f32 v16, s2, v23, v8, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v11
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v4, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v9, v3, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v28, v16, v7
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v15, v15, v104
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v3, v27, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v14, v28, v16
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v30, 0xbfb8aa3b, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v2, -v9, v3, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v28, v27, v7 :: v_dual_lshlrev_b32 v27, 16, v242
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v2, v12, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v3, -v14, v28, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s3
	v_exp_f32_e32 v9, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, s4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v2, v10, v17
	v_div_fmas_f32 v3, v3, v7, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v7, v4, v22 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v15
	v_mul_f32_e32 v27, v4, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v3, v8, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v9, v12
	v_exp_f32_e32 v14, v18
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v12, v29, v97 :: v_dual_mul_f32 v7, v7, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s4
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v3, v12, v3 :: v_dual_mul_f32 v2, v7, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v8, v8, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v7, v14, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v22, vcc_lo, v11, v8, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v12, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v5, 1.0, v7
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v7, 16, v102
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v9.h, v13.h
	v_and_b32_e32 v16, 1, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v5, v5, v15
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v7, v4, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v10, v12, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v18, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v2, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v7, v7, v95 :: v_dual_fmac_f32 v12, v17, v12
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v101
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v3, v9, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v29, v22, v12
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v4, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v14, v18, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v10, v29, v22
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v18, v28, v18
	v_div_scale_f32 v28, s1, v15, v5, v15
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_dual_mul_f32 v30, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v29, v66, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v67, v28, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v29, v22
	v_fma_f32 v66, -v14, v67, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v30, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v12, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v66, v18
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v10, v8, v11
	v_fma_f32 v12, -v14, v67, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v22, v23, v68
	v_exp_f32_e32 v23, v30
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v30, 16, v65
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v18, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v4, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v12, v5, v15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v12, v27, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v18, null, v22, v22, v7
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v14, v23, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v23, v34, v89 :: v_dual_mul_f32 v2, v12, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.h, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_mul_f32 v5, v23, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v88.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v23, 16, v92
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v14, v14, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v5.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v18, v15, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v88.l, 0x7fff, v9.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v10
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v4, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v15, v12, v15
	v_div_scale_f32 v8, s0, v7, v22, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v34, 16, v240
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v16, v8, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v9, -v10, v11, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v23
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v34, v4, v34 :: v_dual_lshlrev_b32 v27, 16, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v18, v16, v8
	v_fmac_f32_e32 v11, v9, v11
	v_div_scale_f32 v9, s1, v17, v14, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v28, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v29, v9, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v8, -v18, v16, v8
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v30, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v10, v29, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v8, v15, v16
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v29, v28, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v4, v27
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v34, v87
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v10, v29, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v18
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v8, v22, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v2, v12, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v9, v11, v29
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_exp_f32_e32 v11, v28
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.h, 0x7fff, v12.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v9, v14, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v14, v15, v86
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v4, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v9, v16, v9 :: v_dual_lshlrev_b32 v12, 16, v244
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v8, v11, v27
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v14, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v10, v10
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v7, 1.0, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v9.h
	v_mov_b16_e32 v8.h, v13.h
	v_cndmask_b16 v61.l, 0x7fff, v3.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v7, v7, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v8, 1, v8
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v5, v10, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v14
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v4, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v9, v8, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v52, 0xbfb8aa3b, v22 :: v_dual_add_f32 v5, 1.0, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v8, null, v5, v5, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v14, v10, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v52, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v8
	v_dual_fmac_f32 v10, v15, v10 :: v_dual_and_b32 v11, 1, v13
	v_div_scale_f32 v15, vcc_lo, v23, v7, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v29
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v28, v15, v10
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v2, 16, v243
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v8, v17, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v12, v4, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v14, v28, v15
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v2, v4, v2 :: v_dual_fmac_f32 v17, v27, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, s1, v18, v5, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v29, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v28, v30, v10
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v2, v2, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v34, v27, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v12, v12, v84
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v29, v29
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v14, -v14, v28, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v8, v34, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v14, v10, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v14, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v34, v30, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v29, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v10, v7, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v52.h, 0x7fff, v11.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v8, -v8, v34, v27
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v27, 16, v93
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v2, v7
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v91
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v8, v17, v34
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v15, v15, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v8, v5, v18
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v14, v17
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v17, 16, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_cndmask_b16 v52.l, 0x7fff, v3.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v12, v5
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v7, 1.0, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v8, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v13
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v4, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, null, v7, v7, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v2, v12, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v2, s0, v16, v15, v16
	v_rcp_f32_e32 v3, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v10, v8, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.h, 0x7fff, v12.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v18, s1, v22, v7, v22
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v8, v14, v8
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v14, v4, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v5.h
	v_mov_b16_e32 v11.h, v13.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v9, v3, 1.0
	v_mul_f32_e32 v12, v2, v8
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v14, v14, v45 :: v_dual_and_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v3, v17, v3
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v98
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v14
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v10, v12, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v5, v11, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v29, v18, v3
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v4, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v23
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v12, v28, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v9, v29, v18
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v2, -v10, v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v29, v28, v3 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v2, v8, v12
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v8, -v9, v29, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v34
	v_exp_f32_e32 v10, v23
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v12, v4, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v3, v8, v3, v29
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v15, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v12, v12, v83
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v3, v7, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v17
	v_ldexp_f32 v9, v10, v9
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s3
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v10, v30, v82
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v12, v2
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v8, v23
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	s_waitcnt vmcnt(13)
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_lshlrev_b32 v22, 16, v64
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v10, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_cndmask_b16 v53.l, 0x7fff, v11.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v15, 16, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v13
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v7, v8, v7
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v8, null, v9, v9, v14
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v4, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v8
	v_div_scale_f32 v2, vcc_lo, v14, v9, v14
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v15, v15, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v7, v7, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v57
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v23, v4, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v12
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v18, -v8, v10, 1.0
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v29, v4, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v3.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v13.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v10, v18, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v18, -v12, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v2, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v15 :: v_dual_and_b32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v18, v16
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v18, v4, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v22, s1, v17, v7, v17
	v_fma_f32 v30, -v8, v27, v2
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v28, v28
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v18, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v34, v22, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v3, v5, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v27, v30, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v12, v34, v22
	v_fma_f32 v2, -v8, v27, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v34, v30, v16
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v50
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v2, v10, v27
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v12, v34, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v9, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v8, v28, v8
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v16, v34
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v16, v23, v81 :: v_dual_mul_f32 v23, v29, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v10, v7, v17
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v16, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v8, v8, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v23, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.h, 0x7fff, v11.h, s0
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v23, 16, v54
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v12, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v7.h
	v_mov_b16_e32 v12.h, v13.h
	v_cndmask_b16 v36.l, 0x7fff, v5.h, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v27, 16, v51
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_mul_f32 v30, v4, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v12
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v12, 16, v56
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v10, v11, 1.0
	v_div_scale_f32 v14, null, v9, v9, v18
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v4, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v4, v12 :: v_dual_fmac_f32 v11, v17, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v14
	v_div_scale_f32 v17, vcc_lo, v15, v8, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v12, v12, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	v_add3_u32 v3, v7, v3, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v28, v17, v11 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v5, 1, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v14, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v10, v28, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v2, v5, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v22, v16
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v4, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v23, s0, v18, v9, v18
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v28, v34, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v22, v22, v73 :: v_dual_mul_f32 v37, v23, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v28, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v14, v37, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_exp_f32_e32 v29, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v11, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v37, v34, v16
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v10, v8, v15
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v44, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v11, -v14, v37, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s2
	v_ldexp_f32 v14, v29, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v3.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v22
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v11, v16, v37
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v27, v79
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v27, v30, v78
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v44
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v11, v9, v18
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v16, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v14, v14, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v27, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v11
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v17, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v9.h
	v_cndmask_b16 v29.h, 0x7fff, v5.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v5, vcc_lo, v12, v14, v12
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v2, 1, v16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v16, -v11, v15, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v8.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v10, v10, v22
	v_div_scale_f32 v28, s0, v22, v10, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v16, v15
	v_rcp_f32_e32 v7, v17
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v23, v4, v23 :: v_dual_lshlrev_b32 v16, 16, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v27, v5, v15 :: v_dual_mul_f32 v30, v4, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v4, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v2, v9, v2, 0x7fff
	v_add3_u32 v3, v8, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v11, v27, v5
	v_fma_f32 v18, -v17, v7, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v16, v16, v74 :: v_dual_fmac_f32 v27, v34, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v7, v18, v7 :: v_dual_lshlrev_b32 v18, 16, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v5, -v11, v27, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v28, v7
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v18, v4, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v41
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v5, v5, v15, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v17, v37, v28
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v18, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v37, v34, v7 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v5, v14, v12
	v_fma_f32 v17, -v17, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	v_exp_f32_e32 v15, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v7, v17, v7, v37
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0x42800000, s2
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v23, v77
	v_mul_f32_e32 v23, v30, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v7, v10, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v15, v27
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v17, v5
	v_mul_f32_e32 v7, v23, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v11, v11
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v8, 1.0, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v3.l, v7.h
	v_mov_b16_e32 v3.h, v13.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s0, v5, v5
	v_and_b32_e32 v14, 1, v13
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v17, 16, v47
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v11, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v8, v8, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v9, v5, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v2.h, vcc_lo
	v_add3_u32 v2, v7, v3, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v3, v4, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v10, v10, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.h, 0x7fff, v9.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, vcc_lo, v16, v8, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v5, v15
	v_fma_f32 v14, -v11, v12, 1.0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v3, v3, v223
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v17, 16, v35
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v34, s0, v18, v10, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v12, v14, v12
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v30, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v17, v4, v17
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v27, 16, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v14, -v15, v5, 1.0
	v_mul_f32_e32 v28, v9, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v30
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v4, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v5, v14, v5 :: v_dual_lshlrev_b32 v14, 16, v46
	v_fma_f32 v35, -v11, v28, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v37, v34, v5 :: v_dual_mul_f32 v14, v4, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v35, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v35, -v15, v37, v34
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v14, v14, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v11, v28, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v11, v30
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v37, v35, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v14
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v9, v12, v28
	s_mov_b32 vcc_lo, s0
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v28, 16, v119
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v15, v37, v34
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v41
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v17, v225
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v11, v30
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v9, v8, v16
	v_div_fmas_f32 v5, v12, v5, v37
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v35, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v15, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v5, v10, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, null, v11, v11, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v35
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v27, v229
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v8, v9
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v30, 16, v38
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v27, 16, v122
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v17, v5
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v30, v4, v30 :: v_dual_lshlrev_b32 v17, 16, v40
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v4, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v12, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v5.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v16, -v9, v8, 1.0
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v4, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.h, v13.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_and_b32 v15, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v8, v16, v8
	v_div_scale_f32 v16, vcc_lo, v3, v11, v3
	v_div_scale_f32 v2, null, v10, v10, v14
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v35, v16, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v18, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v30, v30, v232 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v38, -v9, v35, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v5, v12, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v28, v4, v28 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v37
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v35, v38, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v2, v18, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v9, v35, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v18, v34, v18
	v_div_scale_f32 v34, s0, v14, v10, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v8, v9, v8, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v34, v18
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v37, v37
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v3, v8, v11, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v8, v7, v15, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v38, -v2, v40, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v12.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v40, v38, v18 :: v_dual_lshlrev_b32 v35, 16, v113
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v16, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v2, -v2, v40, v34
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v34, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v9, v41
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v41, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v2, v2, v18, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v2, v2, v10, v14
	v_div_scale_f32 v10, null, v16, v16, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v9, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v10
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v14, null, v9, v9, v30
	v_fma_f32 v15, -v10, v11, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v7, v14
	v_fmac_f32_e32 v11, v15, v11
	v_div_scale_f32 v15, vcc_lo, v17, v16, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v14, v7, 1.0
	v_fmac_f32_e32 v7, v18, v7
	v_div_scale_f32 v18, s1, v30, v9, v30
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v27, v27, v34
	scratch_load_b32 v34, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v27, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v3.h
	v_cmp_o_f32_e64 s0, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v13
	v_add3_u32 v12, v3, v12, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v3, v15, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v10, v3, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v3, v27, v11
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v27, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v3, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v3, v10, v11, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v11, v4, v15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	scratch_load_b32 v15, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v3, v16, v17
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v16, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v28, v28, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v28, v2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v28, v18, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v2, v2
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v2, v5, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v2, 16, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v5.h, s2
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v5, 16, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v21, -v14, v28, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v2, v4, v2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v5, v4, v5 :: v_dual_fmac_f32 v28, v21, v7
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, v2, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v14, v28, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v18.h, v13.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v7, v10, v7, v28
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v10, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v5, v5, v15
	scratch_load_b32 v15, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v7, v9, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v5, v5, v7 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v18.l, v5.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v5, v18, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v10, v11, v10 :: v_dual_mul_f32 v11, v4, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v10
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v11, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v11, v3
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v11, 16, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_ldexp_f32 v9, v14, v9
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v14, v4, v15
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	scratch_load_b32 v15, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v11, v4, v11
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v10
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v3.h
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v11, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v7, v7
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v9, v9, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v20, 0xbfb8aa3b, v11 :: v_dual_and_b32 v21, 1, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v21, v3, v21, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v3, v4, v6
	v_mul_f32_e32 v6, v4, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v11
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v30
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v31, null, v20, v20, v11
	v_rcp_f32_e32 v38, v31
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, 0xbfb8aa3b, v14
	v_ldexp_f32 v7, v7, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v24, null, v7, v7, v10
	v_fma_f32 v25, -v16, v15, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v14
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v27, v24
	v_div_scale_f32 v32, s0, v10, v7, v10
	v_fmac_f32_e32 v15, v25, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, vcc_lo, v2, v9, v2
	v_mul_f32_e32 v30, v25, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v17, v17, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v24, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v16, v30, v25
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v27, v28, v27
	v_fmac_f32_e32 v30, v37, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v17, v17, v14
	v_mul_f32_e32 v40, v32, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v16, v30, v25
	v_fma_f32 v25, -v31, v38, 1.0
	v_rcp_f32_e32 v34, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v24, v40, v32
	v_div_fmas_f32 v15, v16, v15, v30
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v38, v25, v38
	v_div_scale_f32 v25, s3, v11, v20, v11
	v_fmac_f32_e32 v40, v35, v27
	v_div_fixup_f32 v2, v15, v9, v2
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v9, 16, v103
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v37, -v28, v34, 1.0
	v_div_scale_f32 v35, s2, v14, v17, v14
	v_fma_f32 v16, -v24, v40, v32
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	scratch_load_b32 v32, off, off offset:28 ; 4-byte Folded Reload
	v_mul_f32_e32 v3, v3, v41
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v9, v4, v9 :: v_dual_fmac_f32 v34, v37, v34
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v16, v16, v27, v40
	v_mul_f32_e32 v30, v25, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v3, v2
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v3, 16, v130
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v24, v35, v34
	v_div_fixup_f32 v7, v16, v7, v10
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v3, v4, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v28, v24, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v27, v34
	v_fma_f32 v10, -v28, v24, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v34, v24
	s_mov_b32 vcc_lo, s3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v6, v6, v32
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v32, -v31, v30, v25
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v4, v6, v7
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v6, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v30, v32, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v31, v30, v25
	v_div_fmas_f32 v15, v15, v38, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_and_b32_e32 v5, 1, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v15, v20, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v2, v5, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v6, v9, v6
	scratch_load_b32 v9, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v6, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v10, v17, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v10.l, v4.h
	v_mov_b16_e32 v10.h, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v3, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v6.h
	v_and_b32_e32 v7, 1, v10
	v_cndmask_b16 v10.l, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v13.l, v3.h
	v_cndmask_b16 v10.h, 0x7fff, v21.h, s1
	v_add3_u32 v7, v4, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v3, v3
	v_mov_b16_e32 v9.h, v13.h
	v_and_b32_e32 v11, 1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v4, v3, v11, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	scratch_load_b32 v5, off, off offset:32 ; 4-byte Folded Reload
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s0
	v_add3_u32 v2, v6, v9, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v4.l, 0x7fff, v2.h, s2
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_cndmask_b32_e32 v34, v8, v22, vcc_lo
	v_cndmask_b32_e32 v8, v22, v8, vcc_lo
	v_cndmask_b32_e32 v35, v3, v12, vcc_lo
	v_dual_cndmask_b32 v3, v12, v3 :: v_dual_mov_b32 v12, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_dual_cndmask_b32 v2, v19, v33 :: v_dual_cndmask_b32 v31, v36, v52
	v_cndmask_b32_e32 v32, v52, v36, vcc_lo
	v_cndmask_b32_e32 v36, v4, v10, vcc_lo
	v_cndmask_b32_e32 v4, v10, v4, vcc_lo
	v_cndmask_b32_e32 v10, 0x1054, v12, vcc_lo
	v_cndmask_b32_e32 v12, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v22, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v5, v26, v0 :: v_dual_cndmask_b32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v10, 8, v10
	v_lshl_or_b32 v10, v12, 8, v12
	v_cndmask_b32_e32 v9, v39, v58, vcc_lo
	v_cndmask_b32_e32 v13, v43, v63, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, v99, v120 :: v_dual_and_b32 v2, 0x540054, v2
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v6, v33, v19, vcc_lo
	v_cndmask_b32_e32 v7, v58, v39, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v11, v63, v43, vcc_lo
	v_cndmask_b32_e32 v14, v120, v99, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v2
	v_and_b32_e32 v38, 0x7060706, v10
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v0, v5, v37
	v_perm_b32 v3, v0, v5, v38
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_cndmask_b32_e32 v33, v23, v29, vcc_lo
	v_cndmask_b32_e32 v23, v29, v23, vcc_lo
	v_permlanex16_b32 v29, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v22, v6, v37
	v_perm_b32 v5, v22, v6, v38
	v_perm_b32 v6, v9, v7, v37
	v_perm_b32 v7, v9, v7, v38
	v_perm_b32 v8, v13, v11, v37
	v_perm_b32 v9, v13, v11, v38
	v_perm_b32 v10, v12, v14, v37
	v_perm_b32 v11, v12, v14, v38
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	scratch_load_b32 v14, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v17, v110, v127, vcc_lo
	v_cndmask_b32_e32 v19, v133, v135, vcc_lo
	v_cndmask_b32_e32 v21, v143, v125, vcc_lo
	v_cndmask_b32_e32 v25, v116, v108, vcc_lo
	v_dual_cndmask_b32 v27, v107, v88 :: v_dual_cndmask_b32 v30, v61, v53
	v_cndmask_b32_e32 v16, v127, v110, vcc_lo
	v_cndmask_b32_e32 v18, v135, v133, vcc_lo
	v_cndmask_b32_e32 v20, v125, v143, vcc_lo
	v_cndmask_b32_e32 v24, v108, v116, vcc_lo
	v_cndmask_b32_e32 v26, v88, v107, vcc_lo
	v_cndmask_b32_e32 v28, v53, v61, vcc_lo
	v_permlanex16_b32 v15, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v15, v16, v37
	v_perm_b32 v13, v15, v16, v38
	v_perm_b32 v15, v17, v18, v37
	v_perm_b32 v16, v17, v18, v38
	v_perm_b32 v17, v19, v20, v37
	v_perm_b32 v18, v19, v20, v38
	v_perm_b32 v19, v21, v24, v37
	v_perm_b32 v20, v21, v24, v38
	v_perm_b32 v21, v25, v26, v37
	v_perm_b32 v22, v25, v26, v38
	v_perm_b32 v23, v27, v28, v37
	v_perm_b32 v24, v27, v28, v38
	v_perm_b32 v25, v29, v31, v37
	v_perm_b32 v26, v29, v31, v38
	v_perm_b32 v27, v30, v33, v37
	v_perm_b32 v28, v30, v33, v38
	v_perm_b32 v29, v32, v34, v37
	v_perm_b32 v30, v32, v34, v38
	v_perm_b32 v31, v39, v35, v37
	v_perm_b32 v32, v39, v35, v38
	v_perm_b32 v33, v40, v36, v37
	v_perm_b32 v34, v40, v36, v38
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v0, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, v1, v14, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_nc_u32_e32 v0, 32, v1
	v_add_nc_u32_e32 v14, 64, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[2:5], v35, s[8:11], 0 offen
	buffer_store_b128 v[6:9], v0, s[8:11], 0 offen
	buffer_store_b128 v[10:13], v14, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_add_nc_u32_e32 v2, 0x80, v1
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[8:11], 0 offen
	buffer_store_b128 v[19:22], v2, s[8:11], 0 offen
	buffer_store_b128 v[23:26], v3, s[8:11], 0 offen
	buffer_store_b128 v[27:30], v4, s[8:11], 0 offen
	buffer_store_b128 v[31:34], v1, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 76
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
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.private_seg_size, 76
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24220
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 76
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 76
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 27
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
