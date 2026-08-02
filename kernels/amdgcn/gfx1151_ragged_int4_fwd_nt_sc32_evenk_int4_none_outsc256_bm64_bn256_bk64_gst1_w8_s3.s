	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v76, 8, v0
	v_lshlrev_b32_e32 v77, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s41, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s11, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s11
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s11
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s9, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_load_b64 s[12:13], s[0:1], 0x38
	s_xor_b32 s10, s3, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s41, s10, s9
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s41, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_mov_b32 s8, 0
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s12, s2
	s_addc_u32 s7, s13, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
	v_lshlrev_b32_e32 v2, 4, v0
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow374
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[6:7], 0x0
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v9, 15, v0
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v10, 0xf0, v0
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v75, 3, v0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v59, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v13, 2, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s24, s4, s2
	s_addc_u32 s25, s5, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[1:2]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[5:6]
	v_cmp_le_i64_e64 s2, s[36:37], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[38:39], v[5:6]
	v_cmp_gt_i64_e64 s7, s[38:39], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v11, vcc_lo, v1, 48
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s5, s[24:25], 0x0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s2, s2, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s7, s10, 8
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v1, s34, v9
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	v_bfe_i32 v6, v0, 5, 1
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v7, 0x70, v77
	v_bfe_i32 v8, v0, 3, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, 0, v2, vcc_lo
	v_lshlrev_b32_e32 v17, 5, v0
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[3:4]
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s33, s5
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v4, 48, v1
	s_mul_i32 s6, s5, s40
	v_add3_u32 v21, s5, s7, v0
	v_add3_u32 v20, s6, s7, v0
	s_lshl_b32 s6, s9, 8
	v_add_nc_u32_e32 v13, s34, v13
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v5, 0x37c, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v20, s6, v20
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v6, 0x88, v6
	v_and_or_b32 v7, 0x88, v8, v7
	v_lshrrev_b32_e32 v8, 1, v0
	v_lshlrev_b32_e32 v78, 1, v20
	v_subrev_nc_u32_e32 v20, s6, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[11:12]
	v_or_b32_e32 v12, 0x300, v0
	v_or_b32_e32 v14, 0x700, v0
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v18, 2, v10
	v_lshlrev_b32_e32 v19, 1, v0
	v_and_b32_e32 v17, 32, v17
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v4, s40, v4
	v_mul_lo_u32 v3, s40, v3
	v_mul_lo_u32 v2, s40, v2
	v_mul_lo_u32 v1, s40, v1
	v_mul_lo_u32 v83, s11, v20
	v_mov_b32_e32 v20, 0
	v_mul_lo_u32 v13, v13, s11
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v11, 0, v9
	v_xor_b32_e32 v5, v6, v5
	v_xor_b32_e32 v6, 8, v7
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v8, 0x70, v8
	v_or_b32_e32 v15, 0xb00, v0
	v_or_b32_e32 v16, 0xf00, v0
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v89, 0, v12
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v90, 0, v14
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v19, 28, v19
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v12, 0
	v_add3_u32 v17, 0, v18, v17
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v18, 1, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s4, s8
	s_mov_b32 s4, 0
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v79, 1, v4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v21, 0 :: v_dual_lshlrev_b32 v80, 1, v3
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v81, 1, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshlrev_b32_e32 v82, 1, v1
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v85, 0, v5
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v86, 0, v7
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v87, 0, v6
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v93, v11, v8
	v_mov_b32_e32 v1, s4
	v_lshl_add_u32 v84, v75, 2, v13
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v88, 0, v0
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v91, 0, v15
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v92, 0, v16
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v94, v17, v19
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v95, 0, v18
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v19, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s42, s33, 1
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cndmask_b32_e32 v100, 0x80000000, v84, vcc_lo
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	buffer_load_b128 v[96:99], v83, s[12:15], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s40, s40, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s40, 0
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b32 v100, v100, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v101, 8, v96
	v_lshrrev_b32_e32 v102, 8, v97
	v_lshrrev_b32_e32 v103, 8, v98
	v_lshrrev_b32_e32 v104, 8, v99
	v_lshrrev_b32_e32 v105, 24, v96
	v_lshrrev_b32_e32 v106, 24, v97
	v_lshrrev_b32_e32 v107, 24, v98
	v_lshrrev_b32_e32 v108, 24, v99
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b32 v85, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[126:129], v86 offset1:32
	ds_load_2addr_b64 v[166:169], v86 offset0:64 offset1:96
	ds_load_2addr_b64 v[130:133], v87 offset1:32
	ds_load_2addr_b64 v[170:173], v87 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v88, v96
	ds_store_b8_d16_hi v88, v96 offset:512
	ds_store_b8 v88, v97 offset:1024
	ds_store_b8_d16_hi v88, v97 offset:1536
	ds_store_b8 v88, v98 offset:2048
	ds_store_b8_d16_hi v88, v98 offset:2560
	ds_store_b8 v88, v99 offset:3072
	ds_store_b8_d16_hi v88, v99 offset:3584
	ds_store_b8 v88, v101 offset:256
	ds_store_b8 v88, v102 offset:1280
	ds_store_b8 v88, v103 offset:2304
	ds_store_b8 v88, v104 offset:3328
	ds_store_b8 v89, v105
	ds_store_b8 v90, v106
	ds_store_b8 v91, v107
	ds_store_b8 v92, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v96, v93 offset:1280
	ds_load_u8 v97, v93 offset:1024
	ds_load_u8 v98, v93 offset:1920
	ds_load_u8 v99, v93 offset:1664
	ds_load_u8 v100, v93 offset:1408
	ds_load_u8 v101, v93 offset:1152
	ds_load_u8 v102, v93 offset:1792
	ds_load_u8 v103, v93 offset:1536
	ds_load_u8 v104, v93 offset:256
	ds_load_u8 v105, v93
	ds_load_u8 v106, v93 offset:896
	ds_load_u8 v107, v93 offset:640
	ds_load_u8 v108, v93 offset:384
	ds_load_u8 v109, v93 offset:128
	ds_load_u8 v110, v93 offset:768
	ds_load_u8 v111, v93 offset:512
	ds_load_u8 v112, v93 offset:3328
	ds_load_u8 v113, v93 offset:3072
	ds_load_u8 v114, v93 offset:3840
	ds_load_u8 v115, v93 offset:3584
	ds_load_u8 v116, v93 offset:2304
	ds_load_u8 v117, v93 offset:2048
	ds_load_u8 v118, v93 offset:2816
	ds_load_u8 v119, v93 offset:2560
	ds_load_u8 v120, v93 offset:3968
	ds_load_u8 v121, v93 offset:3712
	ds_load_u8 v122, v93 offset:3456
	ds_load_u8 v123, v93 offset:3200
	ds_load_u8 v124, v93 offset:2944
	ds_load_u8 v125, v93 offset:2432
	ds_load_u8 v134, v93 offset:2176
	ds_load_u8 v135, v93 offset:2688
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v97, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v102, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v111, v110, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v99, v109, v108, 0xc0c0004
	v_perm_b32 v101, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_lshl_or_b32 v147, v97, 16, v96
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v121, v120, 0xc0c0004
	v_lshl_or_b32 v146, v103, 16, v102
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v123, v122, 0xc0c0004
	v_lshl_or_b32 v175, v98, 16, v100
	v_lshl_or_b32 v174, v101, 16, v99
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v108, v134, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v135, v124, 0xc0c0004
	v_lshl_or_b32 v165, v105, 16, v104
	v_lshl_or_b32 v164, v111, 16, v110
	v_lshl_or_b32 v177, v107, 16, v106
	v_wmma_i32_16x16x16_iu4 v[96:103], v[146:147], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[104:111], v[174:175], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[174:175], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[146:147], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[164:165], v[130:131], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[176:177], v[132:133], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[146:147], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[164:165], v[170:171], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[176:177], v[130:131], v[104:111] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v96
	v_cvt_f32_i32_e32 v138, v97
	v_cvt_f32_i32_e32 v140, v99
	v_cvt_f32_i32_e32 v144, v103
	v_cvt_f32_i32_e32 v96, v125
	v_cvt_f32_i32_e32 v97, v126
	v_cvt_f32_i32_e32 v103, v123
	v_cvt_f32_i32_e32 v99, v124
	v_cvt_f32_i32_e32 v128, v152
	v_cvt_f32_i32_e32 v129, v153
	v_cvt_f32_i32_e32 v130, v154
	v_cvt_f32_i32_e32 v131, v155
	v_cvt_f32_i32_e32 v123, v156
	v_cvt_f32_i32_e32 v124, v157
	v_cvt_f32_i32_e32 v125, v158
	v_cvt_f32_i32_e32 v126, v159
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[152:159], v[174:175], v[166:167], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v104
	v_cvt_f32_i32_e32 v134, v111
	v_cvt_f32_i32_e32 v149, v105
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[152:159], v[176:177], v[170:171], v[152:159] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v106
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[164:165], v[132:133], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v109
	v_cvt_f32_i32_e32 v133, v110
	v_cvt_f32_i32_e32 v104, v157
	v_cvt_f32_i32_e32 v105, v158
	v_cvt_f32_i32_e32 v106, v159
	v_cvt_f32_i32_e32 v111, v156
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[156:163], v[146:147], v[168:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v107
	v_cvt_f32_i32_e32 v145, v108
	v_cvt_f32_i32_e32 v107, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[156:163], v[164:165], v[172:173], v[156:163] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v110, v119
	v_cvt_f32_i32_e32 v116, v152
	v_cvt_f32_i32_e32 v117, v153
	v_cvt_f32_i32_e32 v118, v154
	v_cvt_f32_i32_e32 v119, v155
	v_cvt_f32_i32_e32 v152, v160
	v_cvt_f32_i32_e32 v153, v161
	v_cvt_f32_i32_e32 v154, v162
	v_cvt_f32_i32_e32 v155, v163
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[160:167], v[174:175], v[168:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v98
	v_cvt_f32_i32_e32 v98, v127
	v_cvt_f32_i32_e32 v141, v100
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[160:167], v[176:177], v[172:173], v[160:167] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v100, v120
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v142, v101
	v_cvt_f32_i32_e32 v135, v160
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v160, 0x80000000, v82, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v161
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v161, 0x80000000, v81, s1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v162
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v162, 0x80000000, v80, s2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v163
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2
	buffer_load_u16 v160, v160, s[28:31], 0 offen
	buffer_load_u16 v163, v161, s[28:31], 0 offen
	buffer_load_u16 v162, v162, s[28:31], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v79, s3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v164
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v164, v161, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v161, v78, s[16:19], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v165
	v_cvt_f32_i32_e32 v143, v102
	v_cvt_f32_i32_e32 v101, v121
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v121, v166
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v102, v122
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v122, v167
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v80, 2, v80
	v_add_nc_u32_e32 v81, 2, v81
	v_add_nc_u32_e32 v79, 2, v79
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v170, 16, v163
	v_lshlrev_b32_e32 v165, 16, v160
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v174, v170, v113 :: v_dual_lshlrev_b32 v171, 16, v162
	v_mul_f32_e32 v166, v165, v137
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v167, v165, v138 :: v_dual_lshlrev_b32 v172, 16, v164
	v_mul_f32_e32 v132, v132, v165
	v_dual_mul_f32 v168, v165, v139 :: v_dual_mul_f32 v137, v136, v165
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v94, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v161, v165, v141
	v_dual_mul_f32 v169, v165, v140 :: v_dual_mul_f32 v134, v134, v165
	v_dual_mul_f32 v140, v165, v149 :: v_dual_mul_f32 v177, v171, v128
	v_dual_mul_f32 v139, v165, v150 :: v_dual_mul_f32 v162, v172, v156
	v_mul_f32_e32 v138, v165, v151
	v_dual_mul_f32 v133, v133, v165 :: v_dual_mul_f32 v164, v171, v130
	v_dual_mul_f32 v136, v165, v145 :: v_dual_mul_f32 v163, v171, v131
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v157, v172, v157 :: v_dual_mul_f32 v160, v165, v142
	v_dual_mul_f32 v173, v170, v112 :: v_dual_mul_f32 v142, v165, v143
	v_mul_f32_e32 v175, v170, v114
	v_dual_mul_f32 v141, v165, v144 :: v_dual_mul_f32 v176, v170, v115
	v_mul_f32_e32 v165, v171, v129
	v_dual_mul_f32 v151, v172, v159 :: v_dual_mul_f32 v144, v171, v124
	v_dual_mul_f32 v143, v170, v109 :: v_dual_mul_f32 v124, v171, v126
	v_dual_mul_f32 v131, v170, v110 :: v_dual_mul_f32 v130, v172, v152
	v_dual_mul_f32 v145, v171, v123 :: v_dual_mul_f32 v128, v172, v154
	v_dual_mul_f32 v129, v172, v153 :: v_dual_mul_f32 v112, v170, v103
	v_dual_mul_f32 v126, v172, v155 :: v_dual_mul_f32 v113, v170, v102
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[152:155], v95
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v156, v172, v158 :: v_dual_mul_f32 v149, v170, v108
	v_dual_mul_f32 v150, v170, v107 :: v_dual_mul_f32 v125, v171, v125
	v_dual_mul_f32 v108, v100, v170 :: v_dual_mul_f32 v117, v171, v117
	v_dual_mul_f32 v114, v170, v101 :: v_dual_mul_f32 v109, v116, v171
	v_mul_f32_e32 v116, v171, v118
	v_dual_mul_f32 v115, v171, v119 :: v_dual_mul_f32 v118, v172, v148
	v_dual_mul_f32 v110, v135, v172 :: v_dual_mul_f32 v123, v172, v146
	v_mul_f32_e32 v119, v172, v147
	v_dual_mul_f32 v96, v96, v170 :: v_dual_mul_f32 v107, v170, v99
	v_dual_mul_f32 v97, v97, v170 :: v_dual_mul_f32 v102, v120, v172
	v_dual_mul_f32 v98, v98, v170 :: v_dual_mul_f32 v99, v104, v171
	v_mul_f32_e32 v100, v105, v171
	v_mul_f32_e32 v101, v106, v171
	v_dual_mul_f32 v105, v171, v111 :: v_dual_mul_f32 v104, v122, v172
	v_dual_mul_f32 v103, v121, v172 :: v_dual_mul_f32 v106, v172, v127
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v74, v166, v152
	v_dual_fmac_f32 v73, v167, v153 :: v_dual_add_nc_u32 v82, 2, v82
	v_dual_fmac_f32 v72, v168, v154 :: v_dual_add_nc_u32 v83, 16, v83
	v_dual_fmac_f32 v71, v169, v155 :: v_dual_add_nc_u32 v84, 16, v84
	v_dual_fmac_f32 v58, v173, v152 :: v_dual_fmac_f32 v55, v176, v155
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[166:169], v95 offset:16
	ds_load_b128 v[170:173], v95 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v56, v175, v154 :: v_dual_fmac_f32 v41, v165, v153
	v_dual_fmac_f32 v42, v177, v152 :: v_dual_fmac_f32 v39, v163, v155
	v_dual_fmac_f32 v40, v164, v154 :: v_dual_fmac_f32 v25, v157, v153
	v_dual_fmac_f32 v26, v162, v152 :: v_dual_fmac_f32 v23, v151, v155
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[162:165], v95 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v57, v174, v153 :: v_dual_add_nc_u32 v78, s42, v78
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v24, v156, v154 :: v_dual_fmac_f32 v67, v141, v169
	v_dual_fmac_f32 v70, v161, v166 :: v_dual_fmac_f32 v69, v160, v167
	v_dual_fmac_f32 v68, v142, v168 :: v_dual_fmac_f32 v53, v149, v167
	v_dual_fmac_f32 v54, v150, v166 :: v_dual_fmac_f32 v51, v131, v169
	v_dual_fmac_f32 v52, v143, v168 :: v_dual_fmac_f32 v37, v144, v167
	v_dual_fmac_f32 v38, v145, v166 :: v_dual_fmac_f32 v35, v124, v169
	v_dual_fmac_f32 v36, v125, v168 :: v_dual_fmac_f32 v19, v126, v169
	v_dual_fmac_f32 v22, v130, v166 :: v_dual_fmac_f32 v21, v129, v167
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v20, v128, v168 :: v_dual_fmac_f32 v59, v137, v170
	v_dual_fmac_f32 v66, v140, v171 :: v_dual_fmac_f32 v65, v139, v172
	v_dual_fmac_f32 v64, v138, v173 :: v_dual_fmac_f32 v33, v117, v171
	v_dual_fmac_f32 v50, v108, v170 :: v_dual_fmac_f32 v49, v114, v171
	v_dual_fmac_f32 v48, v113, v172 :: v_dual_fmac_f32 v47, v112, v173
	v_dual_fmac_f32 v34, v109, v170 :: v_dual_fmac_f32 v31, v115, v173
	v_dual_fmac_f32 v32, v116, v172 :: v_dual_fmac_f32 v17, v123, v171
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v18, v110, v170 :: v_dual_fmac_f32 v61, v133, v164
	v_dual_fmac_f32 v16, v119, v172 :: v_dual_fmac_f32 v15, v118, v173
	v_dual_fmac_f32 v63, v136, v162 :: v_dual_fmac_f32 v60, v134, v165
	v_dual_fmac_f32 v62, v132, v163 :: v_dual_fmac_f32 v43, v98, v165
	v_dual_fmac_f32 v46, v107, v162 :: v_dual_fmac_f32 v45, v96, v163
	v_dual_fmac_f32 v44, v97, v164 :: v_dual_fmac_f32 v29, v99, v163
	v_dual_fmac_f32 v30, v105, v162 :: v_dual_fmac_f32 v13, v103, v164
	v_dual_fmac_f32 v28, v100, v164 :: v_dual_fmac_f32 v27, v101, v165
	v_dual_fmac_f32 v11, v106, v162 :: v_dual_fmac_f32 v12, v104, v165
	v_fmac_f32_e32 v14, v102, v163
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, v76 :: v_dual_mov_b32 v2, v77
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v3, |v73|, |v73|
	v_max_f32_e64 v4, |v74|, |v74|
	v_max3_f32 v5, |v71|, |v70|, |v69|
	v_max3_f32 v6, |v66|, |v65|, |v64|
	v_max3_f32 v7, |v63|, |v62|, |v61|
	v_max_f32_e64 v8, |v58|, |v58|
	v_max_f32_e32 v3, v4, v3
	v_max_f32_e64 v4, |v57|, |v57|
	v_max3_f32 v78, |v49|, |v48|, |v47|
	v_max3_f32 v6, v6, v7, |v60|
	v_max_f32_e64 v7, |v42|, |v42|
	v_max3_f32 v3, v3, |v72|, v5
	v_max_f32_e64 v5, |v41|, |v41|
	v_max_f32_e32 v4, v8, v4
	v_max3_f32 v8, |v55|, |v54|, |v53|
	v_max3_f32 v79, |v46|, |v45|, |v44|
	v_max3_f32 v80, |v33|, |v32|, |v31|
	v_max_f32_e32 v5, v7, v5
	v_max3_f32 v7, |v39|, |v38|, |v37|
	v_max3_f32 v81, |v30|, |v29|, |v28|
	v_max3_f32 v76, |v68|, |v67|, |v59|
	v_max3_f32 v77, |v52|, |v51|, |v50|
	v_max3_f32 v4, v4, |v56|, v8
	v_max3_f32 v8, v78, v79, |v43|
	v_max3_f32 v78, |v36|, |v35|, |v34|
	v_max3_f32 v5, v5, |v40|, v7
	v_max3_f32 v7, v80, v81, |v27|
	v_max_f32_e64 v79, |v25|, |v25|
	v_max_f32_e64 v80, |v26|, |v26|
	v_max3_f32 v3, v3, v76, v6
	v_max3_f32 v4, v4, v77, v8
	v_max3_f32 v5, v5, v78, v7
	v_max3_f32 v7, |v23|, |v22|, |v21|
	v_max_f32_e32 v6, v80, v79
	v_max3_f32 v76, |v17|, |v16|, |v15|
	v_max3_f32 v77, |v11|, |v14|, |v13|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v8, |v20|, |v19|, |v18|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v79, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v24|, v7
	v_max3_f32 v7, v76, v77, |v12|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v76, v78, v78 :: v_dual_max_f32 v77, v79, v79
	v_max_f32_e32 v78, v80, v80
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v8, v7
	v_dual_max_f32 v3, v3, v76 :: v_dual_max_f32 v4, v4, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v5, v5, v78
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v76, v75, 9, 0
	v_permlanex16_b32 v78, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 4, v0
	v_lshlrev_b32_e32 v8, 5, v75
	v_and_b32_e32 v77, 0x60, v0
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v78, v78 :: v_dual_and_b32 v79, 0x80, v0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v80, v7, 2, v76
	v_and_or_b32 v2, 0x680, v2, v8
	v_xor_b32_e32 v81, v8, v77
	v_lshl_add_u32 v83, v7, 6, 0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v78
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v76, 1, v79
	v_lshl_add_u32 v80, v1, 4, v80
	v_lshrrev_b32_e32 v82, 3, v79
	v_xor_b32_e32 v2, v2, v77
	v_lshlrev_b32_e32 v1, 3, v1
	v_add_nc_u32_e32 v79, 0, v79
	v_add3_u32 v78, v80, v76, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v83, v82, v2
	ds_store_b128 v78, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v5, v5
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v3
	v_mov_b32_e32 v6, v2
	v_dual_mov_b32 v80, v4 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v81, v5 :: v_dual_max_f32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v6, v6, v6 :: v_dual_mov_b32 v81, v5
	v_max_f32_e32 v3, v3, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, v2, v6
	v_max_f32_e32 v6, v80, v80
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v80, v3
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
	v_dual_max_f32 v3, v3, v80 :: v_dual_mov_b32 v78, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v78
	v_max_f32_e32 v78, v81, v81
	v_dual_max_f32 v4, v4, v4 :: v_dual_mov_b32 v81, v3
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v2 :: v_dual_max_f32 v5, v5, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v78, v5
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v80, v80, v80
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v81 :: v_dual_max_f32 v2, v2, v80
	v_max_f32_e32 v78, v78, v78
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v6, v4
	v_lshrrev_b32_e32 v80, 1, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v78
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v4, v4, v6
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v6, 5, v7
	v_lshl_add_u32 v7, v75, 4, 0
	v_add3_u32 v75, v79, v80, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, v7, v6, v1
	ds_store_b128 v75, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp37:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v7, 4, v10
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[78:81], v1
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v5, 63, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v7
	v_or_b32_e32 v82, 32, v7
	v_or_b32_e32 v84, 16, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v78, v78 :: v_dual_max_f32 v80, v80, v80
	v_max_f32_e32 v79, v79, v79
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, 0x2b8cbccc, v1
	v_max_f32_e32 v80, 0x2b8cbccc, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v75, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v85, vcc_lo, v6, 0x40e00000, v6
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v78, v75
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v3
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v87, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s0, s34, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v79, 0x2b8cbccc, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v75, v78, 1.0
	v_max_f32_e32 v81, 0x2b8cbccc, v81
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s34, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v83, v78
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v90, -v86, v87, 1.0
	v_mul_f32_e32 v88, v85, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v90, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v75, v88, v85
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v81
	v_fmac_f32_e32 v88, v3, v78
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v84, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v75, -v75, v88, v85
	v_div_scale_f32 v85, s6, v80, 0x40e00000, v80
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[82:83]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v83.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v75, v75, v78, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v78, v85, v87
	v_rcp_f32_e32 v88, v90
	v_fma_f32 v82, -v89, v84, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v6, v75, 0x40e00000, v6
	v_fma_f32 v75, -v86, v78, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v82, v84
	v_div_scale_f32 v82, s7, v79, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v75, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v75.l, v6.h
	v_mov_b16_e32 v75.h, v83.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v90, v88, 1.0
	v_mul_f32_e32 v92, v82, v84
	v_fma_f32 v3, -v86, v78, v85
	s_mov_b32 vcc_lo, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v75
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s8, v81, 0x40e00000, v81
	v_fma_f32 v75, -v89, v92, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v6, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v78, v3, v87, v78
	v_mul_f32_e32 v85, v91, v88
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v92, v75, v84
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v86, 0xffff0000, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v78, v78, 0x40e00000, v80
	v_fma_f32 v75, -v90, v85, v91
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v89, v92, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v86, v86, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v75, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v75, v80, v84, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v82
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v90, v85, v91
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v78.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v75, v75, 0x40e00000, v79
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v79, v80, v88, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v86, v86, v73
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v82, v84, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v79, v79, 0x40e00000, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v75.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.h, v83.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, vcc_lo, v74, v86, v74
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v79.h
	v_and_b32_e32 v4, 1, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v81, v87, v84
	v_div_scale_f32 v89, null, v86, v86, v72
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v78, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v85, v88, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v82, v81, v87
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v91, null, v86, v86, v71
	v_fmac_f32_e32 v88, v78, v88
	v_div_scale_f32 v92, s8, v73, v86, v73
	v_fmac_f32_e32 v81, v83, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v91
	v_div_scale_f32 v96, null, v86, v86, v70
	v_mul_f32_e32 v93, v92, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v89, v90, 1.0
	v_fma_f32 v82, -v82, v81, v87
	v_fma_f32 v87, -v85, v93, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s9, v72, v86, v72
	v_fma_f32 v95, -v91, v83, 1.0
	v_div_fmas_f32 v81, v82, v84, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v87, v88 :: v_dual_mul_f32 v82, v94, v90
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v87, s10, v71, v86, v71
	v_div_scale_f32 v95, null, v86, v86, v69
	v_div_fixup_f32 v74, v81, v86, v74
	v_fma_f32 v81, -v85, v93, v92
	v_fma_f32 v85, -v89, v82, v94
	v_mul_f32_e32 v92, v87, v83
	v_rcp_f32_e32 v97, v95
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v98, -v96, v84, 1.0
	v_div_fmas_f32 v81, v81, v88, v93
	v_fmac_f32_e32 v82, v85, v90
	v_fma_f32 v85, -v91, v92, v87
	v_div_scale_f32 v88, s8, v70, v86, v70
	v_fmac_f32_e32 v84, v98, v84
	v_div_fixup_f32 v73, v81, v86, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v97, 1.0
	v_fma_f32 v81, -v89, v82, v94
	v_fmac_f32_e32 v92, v85, v83
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v85, v88, v84
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v89, s11, v69, v86, v69
	v_div_scale_f32 v93, null, v86, v86, v68
	v_div_fmas_f32 v81, v81, v90, v82
	v_fma_f32 v82, -v91, v92, v87
	v_div_scale_f32 v94, null, v86, v86, v67
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v96, v85, v88
	v_rcp_f32_e32 v90, v93
	v_mul_f32_e32 v91, v89, v97
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v87, v84
	v_div_fixup_f32 v72, v81, v86, v72
	v_fma_f32 v87, -v95, v91, v89
	v_div_fixup_f32 v71, v82, v86, v71
	v_div_scale_f32 v82, s9, v68, v86, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v93, v90, 1.0
	v_fma_f32 v81, -v96, v85, v88
	v_fmac_f32_e32 v91, v87, v97
	v_fma_f32 v87, -v94, v83, 1.0
	v_div_scale_f32 v88, null, v86, v86, v59
	v_fmac_f32_e32 v90, v92, v90
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v87, v83
	v_rcp_f32_e32 v87, v88
	v_div_fmas_f32 v81, v81, v84, v85
	v_fma_f32 v84, -v95, v91, v89
	v_mul_f32_e32 v85, v82, v90
	v_div_scale_f32 v89, s8, v67, v86, v67
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v70, v81, v86, v70
	v_div_fmas_f32 v84, v84, v97, v91
	v_fma_f32 v91, -v93, v85, v82
	v_mul_f32_e32 v95, v89, v83
	v_fma_f32 v96, -v88, v87, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v69, v84, v86, v69
	v_fmac_f32_e32 v85, v91, v90
	v_fma_f32 v81, -v94, v95, v89
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s10, v59, v86, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v93, v85, v82
	v_fmac_f32_e32 v95, v81, v83
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v81, v84, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v90, v85
	v_fma_f32 v85, -v94, v95, v89
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v89, -v88, v81, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v85, v83, v95
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v81, v89, v87
	v_div_scale_f32 v92, null, v86, v86, v66
	v_div_scale_f32 v91, null, v86, v86, v65
	v_div_scale_f32 v98, null, v86, v86, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v97, v92
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v68, v82, v86, v68
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v85, v98
	v_div_fixup_f32 v67, v83, v86, v67
	v_fma_f32 v82, -v88, v81, v84
	v_div_scale_f32 v88, null, v86, v86, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v92, v97, 1.0
	v_fma_f32 v94, -v91, v93, 1.0
	v_div_fmas_f32 v81, v82, v87, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v98, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v66, v86, v66
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, s8, v65, v86, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v90, v96, v97
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v88
	v_mul_f32_e32 v83, v94, v93
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v89, -v92, v90, v96
	v_div_fixup_f32 v59, v81, v86, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v91, v83, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v89, v97
	v_div_scale_f32 v89, s9, v64, v86, v64
	v_fmac_f32_e32 v83, v87, v93
	v_fma_f32 v95, -v88, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v92, v90, v96
	v_div_scale_f32 v92, null, v86, v86, v62
	v_fma_f32 v81, -v91, v83, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v95, v84
	v_div_fmas_f32 v82, v82, v97, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v92
	v_mul_f32_e32 v90, v89, v85
	v_div_scale_f32 v95, null, v86, v86, v61
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v66, v82, v86, v66
	v_fma_f32 v82, -v98, v90, v89
	v_div_scale_f32 v91, s10, v63, v86, v63
	v_div_fmas_f32 v81, v81, v93, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v87, 1.0
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v90, v82, v85
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v93, s8, v62, v86, v62
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, null, v86, v86, v60
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v75, v75, v4, 0x7fff
	v_add3_u32 v4, v79, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v65, v81, v86, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v81, -v98, v90, v89
	v_fma_f32 v89, -v88, v82, v91
	v_mul_f32_e32 v96, v93, v87
	v_fma_f32 v98, -v95, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v90
	v_fmac_f32_e32 v82, v89, v84
	v_fma_f32 v85, -v92, v96, v93
	v_fmac_f32_e32 v83, v98, v83
	v_div_scale_f32 v89, s9, v61, v86, v61
	v_fma_f32 v90, -v94, v97, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v64, v81, v86, v64
	v_fma_f32 v81, -v88, v82, v91
	v_fmac_f32_e32 v96, v85, v87
	v_mul_f32_e32 v85, v89, v83
	v_fmac_f32_e32 v97, v90, v97
	v_div_scale_f32 v90, null, v80, v80, v58
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s11, v60, v86, v60
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v92, v96, v93
	v_fma_f32 v84, -v95, v85, v89
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v93, null, v80, v80, v57
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v63, v81, v86, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v81, -v95, v85, v89
	v_div_fixup_f32 v62, v82, v86, v62
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v82, s8, v58, v80, v58
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v84, 1.0
	v_div_scale_f32 v89, null, v80, v80, v56
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v94, v92, v88
	v_dual_mul_f32 v85, v82, v91 :: v_dual_fmac_f32 v84, v87, v84
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v88, s9, v57, v80, v57
	v_div_scale_f32 v94, null, v80, v80, v55
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v84
	v_div_fmas_f32 v83, v83, v97, v92
	v_fma_f32 v92, -v90, v85, v82
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v87, 1.0
	v_div_fixup_f32 v61, v81, v86, v61
	v_fma_f32 v81, -v93, v95, v88
	v_fmac_f32_e32 v85, v92, v91
	v_div_fixup_f32 v60, v83, v86, v60
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v83, s10, v56, v80, v56
	v_div_scale_f32 v86, null, v80, v80, v54
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_fmac_f32_e32 v95, v81, v84
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v83, v87
	v_rcp_f32_e32 v90, v86
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s11, v55, v80, v55
	v_div_fmas_f32 v82, v82, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	v_div_scale_f32 v96, null, v80, v80, v53
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v89, v81, v83
	v_mul_f32_e32 v91, v92, v97
	v_div_fmas_f32 v84, v85, v84, v95
	v_rcp_f32_e32 v85, v96
	v_fma_f32 v93, -v86, v90, 1.0
	v_fmac_f32_e32 v81, v88, v87
	v_fma_f32 v88, -v94, v91, v92
	v_div_fixup_f32 v57, v84, v80, v57
	v_div_fixup_f32 v58, v82, v80, v58
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v93, s8, v54, v80, v54
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v96, v85, 1.0
	v_div_scale_f32 v88, null, v80, v80, v52
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v93, v90
	v_fmac_f32_e32 v85, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v88
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v53, v80, v53
	v_div_fmas_f32 v81, v82, v87, v81
	v_fma_f32 v87, -v86, v83, v93
	v_fma_f32 v82, -v94, v91, v92
	v_div_scale_f32 v92, null, v80, v80, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v56, v81, v80, v56
	v_fmac_f32_e32 v83, v87, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v88, v84, 1.0
	v_rcp_f32_e32 v87, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v86, v83, v93
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v80, v80, v50
	v_div_fmas_f32 v82, v82, v97, v91
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v91, v89, v85
	v_div_fmas_f32 v81, v81, v90, v83
	v_rcp_f32_e32 v83, v94
	v_div_fixup_f32 v55, v82, v80, v55
	v_fma_f32 v93, -v92, v87, 1.0
	v_fma_f32 v82, -v96, v91, v89
	v_div_scale_f32 v90, s8, v51, v80, v51
	v_div_scale_f32 v86, s10, v52, v80, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v91, v82, v85
	v_fmac_f32_e32 v87, v93, v87
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_fixup_f32 v54, v81, v80, v54
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v96, v91, v89
	v_div_scale_f32 v93, null, v80, v80, v49
	v_fmac_f32_e32 v83, v97, v83
	v_mul_f32_e32 v95, v90, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v85, v91
	v_rcp_f32_e32 v96, v93
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v97, null, v80, v80, v43
	v_fma_f32 v85, -v92, v95, v90
	v_mul_f32_e32 v82, v86, v84
	v_div_fixup_f32 v53, v81, v80, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v85, v87
	v_fma_f32 v89, -v88, v82, v86
	v_fma_f32 v91, -v93, v96, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v89, v84
	v_div_scale_f32 v89, s9, v50, v80, v50
	v_fmac_f32_e32 v96, v91, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v88, v82, v86
	v_div_scale_f32 v88, null, v80, v80, v48
	v_mul_f32_e32 v85, v89, v83
	v_div_scale_f32 v86, s11, v49, v80, v49
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v92, v95, v90
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v84, -v94, v85, v89
	v_div_scale_f32 v92, null, v80, v80, v47
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v91, v86, v96
	v_div_fmas_f32 v82, v82, v87, v95
	v_div_fixup_f32 v52, v81, v80, v52
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v88, v90, 1.0
	v_fmac_f32_e32 v85, v84, v83
	v_rcp_f32_e32 v84, v92
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v51, v82, v80, v51
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v81, -v94, v85, v89
	v_div_scale_f32 v82, s8, v48, v80, v48
	v_fmac_f32_e32 v91, v87, v96
	v_div_scale_f32 v89, null, v80, v80, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v92, v84, 1.0
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v93, v91, v86
	v_mul_f32_e32 v85, v82, v90
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s9, v47, v80, v47
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v85, v82
	v_div_fixup_f32 v50, v81, v80, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v87, v84
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v93, null, v80, v80, v45
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v85, v91, v90
	v_div_scale_f32 v91, null, v80, v80, v44
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v81, v84
	v_fma_f32 v82, -v88, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v88, v91
	v_fma_f32 v95, -v89, v86, 1.0
	v_div_fixup_f32 v49, v83, v80, v49
	v_div_scale_f32 v83, s10, v46, v80, v46
	v_div_fmas_f32 v82, v82, v90, v85
	v_fma_f32 v85, -v92, v94, v87
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v85, v84, v94
	v_rcp_f32_e32 v85, v97
	v_div_fixup_f32 v48, v82, v80, v48
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v44, v80, v44
	v_fmac_f32_e32 v86, v95, v86
	v_fma_f32 v95, -v93, v96, 1.0
	v_div_fixup_f32 v47, v84, v80, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v97, v85, 1.0
	v_mul_f32_e32 v81, v83, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v45, v80, v45
	v_fmac_f32_e32 v85, v84, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v89, v81, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v95, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v87, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v93, v90, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v92, v88
	v_fmac_f32_e32 v90, v87, v96
	v_div_scale_f32 v87, null, v79, v79, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v86, -v91, v83, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v93, v90, v95
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v79, v79, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	v_div_scale_f32 v89, s9, v43, v80, v43
	v_rcp_f32_e32 v86, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v46, v81, v80, v46
	v_div_fmas_f32 v82, v82, v96, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v81, -v91, v83, v92
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v45, v82, v80, v45
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v79, v79, v40
	v_fma_f32 v82, -v97, v90, v89
	v_div_scale_f32 v91, s10, v42, v79, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v92, v86
	v_div_fmas_f32 v81, v81, v88, v83
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v90, v82, v85
	v_div_scale_f32 v92, null, v79, v79, v39
	v_div_fixup_f32 v44, v81, v80, v44
	v_div_scale_f32 v88, s8, v41, v79, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v97, v90, v89
	v_rcp_f32_e32 v96, v92
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v94, v83, 1.0
	v_mul_f32_e32 v95, v88, v86
	v_div_fmas_f32 v81, v81, v85, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v83, v97, v83 :: v_dual_mul_f32 v82, v91, v84
	v_fma_f32 v85, -v93, v95, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v43, v81, v80, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v82, v91
	v_dual_fmac_f32 v95, v85, v86 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v85, s11, v39, v79, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v89, v84
	v_div_scale_f32 v89, s9, v40, v79, v40
	v_mul_f32_e32 v90, v85, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v87, v82, v91
	v_mul_f32_e32 v81, v89, v83
	v_div_scale_f32 v91, null, v79, v79, v37
	v_div_scale_f32 v87, null, v79, v79, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v81, v89
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v88, v87
	v_div_fixup_f32 v42, v80, v79, v42
	v_div_fmas_f32 v82, v82, v86, v95
	v_fmac_f32_e32 v81, v84, v83
	v_rcp_f32_e32 v84, v91
	v_fma_f32 v86, -v92, v90, v85
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v41, v82, v79, v41
	v_fma_f32 v80, -v94, v81, v89
	v_div_scale_f32 v89, null, v79, v79, v36
	v_fmac_f32_e32 v90, v86, v96
	v_fma_f32 v93, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v86, -v91, v84, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v92, v90, v85
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v92, null, v79, v79, v35
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s9, v37, v79, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v92
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v82, s8, v38, v79, v38
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_fixup_f32 v40, v80, v79, v40
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v81, v79, v39
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v81, s10, v36, v79, v36
	v_mul_f32_e32 v83, v82, v88
	v_fma_f32 v94, -v92, v95, 1.0
	v_div_scale_f32 v96, null, v79, v79, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v35, v79, v35
	v_dual_fmac_f32 v93, v80, v84 :: v_dual_mul_f32 v80, v81, v85
	v_fma_f32 v90, -v87, v83, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v79, v79, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v87, v83, v82
	v_rcp_f32_e32 v87, v90
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v82, v82, v88, v83
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v83, -v91, v93, v86
	v_fma_f32 v86, -v89, v80, v81
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v38, v82, v79, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v88, v94
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v34, v79, v34
	v_fma_f32 v81, -v89, v80, v81
	v_fmac_f32_e32 v88, v86, v95
	v_rcp_f32_e32 v84, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v91, v87
	v_div_fixup_f32 v37, v83, v79, v37
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v94
	v_div_scale_f32 v92, null, v79, v79, v31
	v_fma_f32 v85, -v90, v82, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v36, v80, v79, v36
	v_div_scale_f32 v86, null, v79, v79, v32
	v_fma_f32 v83, -v96, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s9, v33, v79, v33
	v_fma_f32 v80, -v90, v82, v91
	v_div_fmas_f32 v81, v81, v95, v88
	v_div_scale_f32 v90, s10, v32, v79, v32
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fixup_f32 v35, v81, v79, v35
	v_div_fmas_f32 v80, v80, v87, v82
	v_div_scale_f32 v87, s8, v31, v79, v31
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, null, v79, v79, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v34, v80, v79, v34
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v94, v87, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v89, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v96, v88, v89
	v_fma_f32 v93, -v86, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v81, v84
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v79, v79, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v96, v88, v89
	v_mul_f32_e32 v81, v90, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v82, v93
	v_fma_f32 v89, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v96, -v93, v82, 1.0
	v_fma_f32 v89, -v91, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v82, v96, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_fmas_f32 v80, v80, v84, v88
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v88, s9, v30, v79, v30
	v_div_scale_f32 v89, null, v79, v79, v28
	v_div_fixup_f32 v33, v80, v79, v33
	v_fma_f32 v80, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v84, v88, v82
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v29, v79, v29
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v92, null, v79, v79, v27
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v32, v80, v79, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v31, v81, v79, v31
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s8, v28, v79, v28
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v78, v78, v25
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v78, v78, v26
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s9, v27, v79, v27
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v86, v83
	v_div_fixup_f32 v30, v80, v79, v30
	v_div_fixup_f32 v29, v82, v79, v29
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v80, -v92, v91, v86
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v78, v78, v23
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v81, -v89, v84, v81
	v_div_scale_f32 v89, null, v78, v78, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v80, v83 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s10, v26, v78, v26
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v80, v88
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v87, s8, v25, v78, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v80
	v_fma_f32 v92, -v89, v90, 1.0
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v83, v84, v83, v91
	v_mul_f32_e32 v96, v87, v82
	v_fmac_f32_e32 v86, v94, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v24, v78, v24
	v_div_fixup_f32 v28, v81, v79, v28
	v_div_fixup_f32 v27, v83, v79, v27
	v_fma_f32 v79, -v85, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v92, v90
	v_div_scale_f32 v83, null, v78, v78, v22
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v81, -v95, v97, 1.0
	v_fma_f32 v80, -v89, v91, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v84, v82 :: v_dual_fmac_f32 v97, v81, v97
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s9, v23, v78, v23
	v_div_fmas_f32 v79, v79, v88, v86
	v_fma_f32 v84, -v93, v96, v87
	v_div_scale_f32 v86, null, v78, v78, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v81, v97
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v26, v79, v78, v26
	v_fma_f32 v87, -v83, v80, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v89, v91, v92
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v89, -v95, v85, v81
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s8, v22, v78, v22
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v85, v89, v97
	v_div_fmas_f32 v84, v84, v90, v91
	v_mul_f32_e32 v79, v87, v80
	v_div_fixup_f32 v25, v82, v78, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fma_f32 v81, -v95, v85, v81
	v_div_fixup_f32 v24, v84, v78, v24
	v_div_scale_f32 v84, null, v78, v78, v20
	v_fma_f32 v89, -v83, v79, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s10, v21, v78, v21
	v_rcp_f32_e32 v90, v84
	v_div_fmas_f32 v81, v81, v97, v85
	v_fmac_f32_e32 v79, v89, v80
	v_div_scale_f32 v89, null, v78, v78, v19
	v_mul_f32_e32 v85, v82, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v23, v81, v78, v23
	v_fma_f32 v81, -v83, v79, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v89
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v83, -v86, v85, v82
	v_fma_f32 v87, -v84, v90, 1.0
	v_div_fmas_f32 v79, v81, v80, v79
	v_div_scale_f32 v81, s8, v20, v78, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v83, v88
	v_fmac_f32_e32 v90, v87, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v22, v79, v78, v22
	v_fma_f32 v79, -v89, v91, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v86, v85, v82
	v_mul_f32_e32 v86, v81, v90
	v_div_scale_f32 v80, null, v78, v78, v18
	v_fmac_f32_e32 v91, v79, v91
	v_div_scale_f32 v79, s9, v19, v78, v19
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v81
	v_rcp_f32_e32 v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v79, v91
	v_div_scale_f32 v87, null, v78, v78, v17
	v_fmac_f32_e32 v86, v85, v90
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v89, v88, v79
	v_rcp_f32_e32 v93, v87
	v_div_scale_f32 v94, s10, v18, v78, v18
	v_fma_f32 v81, -v84, v86, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v92, -v80, v83, 1.0
	v_div_fixup_f32 v21, v82, v78, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v79, -v89, v88, v79
	v_div_scale_f32 v86, null, v78, v78, v15
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v78, v78, v16
	v_div_fmas_f32 v79, v79, v91, v88
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v95, -v87, v93, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v96, v92
	v_mul_f32_e32 v97, v94, v83
	v_div_fixup_f32 v20, v81, v78, v20
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s11, v17, v78, v17
	v_fma_f32 v82, -v80, v97, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v86, v88, 1.0
	v_div_fixup_f32 v19, v79, v78, v19
	v_fma_f32 v85, -v92, v96, 1.0
	v_div_scale_f32 v90, null, v78, v78, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v81, v88
	v_dual_mul_f32 v84, v95, v93 :: v_dual_fmac_f32 v97, v82, v83
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s8, v16, v78, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v87, v84, v95
	v_fma_f32 v80, -v80, v97, v94
	v_div_scale_f32 v81, null, v78, v78, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	v_div_fmas_f32 v80, v80, v83, v97
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_div_fixup_f32 v18, v80, v78, v18
	v_div_scale_f32 v80, null, v78, v78, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v83, v83, v93, v84
	v_fmac_f32_e32 v82, v87, v96
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v83, v78, v17
	v_fma_f32 v79, -v92, v82, v85
	v_rcp_f32_e32 v85, v81
	v_div_scale_f32 v83, null, v78, v78, v13
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v96, v82
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v84, vcc_lo, v15, v78, v15
	v_rcp_f32_e32 v87, v83
	v_div_fixup_f32 v16, v79, v78, v16
	v_fma_f32 v91, -v81, v85, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v89, v84, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v90, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v80, v82, 1.0
	v_fma_f32 v93, -v86, v89, v84
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s9, v14, v78, v14
	v_fmac_f32_e32 v82, v79, v82
	v_div_scale_f32 v79, s8, v11, v78, v11
	v_fmac_f32_e32 v89, v93, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v91, v85
	v_fma_f32 v94, -v83, v87, 1.0
	v_mul_f32_e32 v95, v79, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v86, v89, v84
	v_fma_f32 v86, -v81, v97, v91
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v93, -v80, v95, v79
	v_div_scale_f32 v94, s10, v13, v78, v13
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v95, v93, v82
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v97, v86, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v80, v95, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v81, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s11, v12, v78, v12
	v_div_fmas_f32 v79, v79, v82, v95
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v94, v87
	v_div_fmas_f32 v81, v81, v85, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v97, v23
	v_and_b32_e32 v23, 15, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v96, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_cvt_i32_f32_e32 v103, v17
	v_and_b32_e32 v17, 15, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v83, v98, v94
	v_fma_f32 v80, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v98, v93, v87 :: v_dual_fmac_f32 v99, v80, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v25, 15, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v81, v78, v14
	v_fma_f32 v80, -v83, v98, v94
	v_fma_f32 v82, -v90, v99, v96
	v_div_fixup_f32 v11, v79, v78, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v80, v78, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v84, v78, v15
	v_div_fixup_f32 v12, v82, v78, v12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v78, v42
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v104, v16
	v_cvt_i32_f32_e32 v107, v14
	v_and_b32_e32 v14, 15, v71
	v_and_b32_e32 v16, 15, v69
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v69, 10, v0
	v_and_b32_e32 v78, 16, v0
	v_lshlrev_b32_e32 v71, 4, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v79, v41
	v_cvt_i32_f32_e32 v106, v11
	v_cvt_i32_f32_e32 v108, v13
	v_cvt_i32_f32_e32 v109, v12
	v_and_b32_e32 v11, 15, v74
	v_and_b32_e32 v12, 15, v73
	v_and_b32_e32 v13, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v72, 0x1800, v69
	v_lshlrev_b32_e32 v73, 6, v78
	v_xor_b32_e32 v74, v71, v77
	v_lshlrev_b32_e32 v77, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v80, v40
	v_cvt_i32_f32_e32 v81, v39
	v_cvt_i32_f32_e32 v94, v26
	v_cvt_i32_f32_e32 v96, v24
	v_and_b32_e32 v41, 15, v44
	v_and_b32_e32 v44, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v79, 0, v72, v73
	v_and_or_b32 v8, 0x1b00, v77, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v86, v34
	v_cvt_i32_f32_e32 v87, v33
	v_cvt_i32_f32_e32 v88, v32
	v_cvt_i32_f32_e32 v89, v31
	v_cvt_i32_f32_e32 v102, v18
	v_cvt_i32_f32_e32 v105, v15
	v_cvt_i32_f32_e32 v90, v30
	v_cvt_i32_f32_e32 v91, v29
	v_cvt_i32_f32_e32 v92, v28
	v_cvt_i32_f32_e32 v93, v27
	v_cvt_i32_f32_e32 v101, v19
	v_and_b32_e32 v15, 15, v70
	v_and_b32_e32 v18, 15, v67
	v_and_b32_e32 v19, 15, v59
	v_and_b32_e32 v24, 15, v62
	v_and_b32_e32 v26, 15, v60
	v_and_b32_e32 v27, 15, v58
	v_and_b32_e32 v28, 15, v57
	v_and_b32_e32 v30, 15, v55
	v_and_b32_e32 v31, 15, v54
	v_and_b32_e32 v32, 15, v53
	v_and_b32_e32 v33, 15, v52
	v_and_b32_e32 v34, 15, v51
	v_and_b32_e32 v39, 15, v46
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v45, 15, v80
	v_and_b32_e32 v46, 15, v81
	v_and_b32_e32 v59, 15, v94
	v_and_b32_e32 v60, 15, v95
	v_and_b32_e32 v61, 15, v96
	v_and_b32_e32 v62, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v76, v79, v74, v76
	v_xad_u32 v8, v8, v10, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v29, 15, v56
	v_cvt_i32_f32_e32 v82, v38
	v_cvt_i32_f32_e32 v83, v37
	v_cvt_i32_f32_e32 v84, v36
	v_cvt_i32_f32_e32 v85, v35
	v_cvt_i32_f32_e32 v98, v22
	v_cvt_i32_f32_e32 v99, v21
	v_cvt_i32_f32_e32 v100, v20
	v_and_b32_e32 v20, 15, v66
	v_and_b32_e32 v21, 15, v65
	v_and_b32_e32 v22, 15, v64
	v_and_b32_e32 v35, 15, v50
	v_and_b32_e32 v36, 15, v49
	v_and_b32_e32 v37, 15, v48
	v_and_b32_e32 v38, 15, v47
	v_and_b32_e32 v51, 15, v86
	v_and_b32_e32 v52, 15, v87
	v_and_b32_e32 v53, 15, v88
	v_and_b32_e32 v54, 15, v89
	v_and_b32_e32 v67, 15, v102
	v_and_b32_e32 v68, 15, v103
	v_and_b32_e32 v69, 15, v104
	v_and_b32_e32 v70, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[11:14]
	ds_store_b128 v76, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v8
	ds_load_b128 v[19:22], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[27:30]
	ds_store_b128 v76, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v8
	ds_load_b128 v[35:38], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[43:46]
	ds_store_b128 v76, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v8
	ds_load_b128 v[51:54], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[59:62]
	ds_store_b128 v76, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v8
	ds_load_b128 v[67:70], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[15:18]
	ds_store_b128 v76, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v8
	ds_load_b128 v[23:26], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[31:34]
	ds_store_b128 v76, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v8
	ds_load_b128 v[39:42], v8 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v82
	v_and_b32_e32 v48, 15, v83
	v_and_b32_e32 v49, 15, v84
	v_and_b32_e32 v50, 15, v85
	v_and_b32_e32 v55, 15, v90
	v_and_b32_e32 v56, 15, v91
	v_and_b32_e32 v57, 15, v92
	v_and_b32_e32 v58, 15, v93
	v_and_b32_e32 v63, 15, v98
	v_and_b32_e32 v64, 15, v99
	v_and_b32_e32 v65, 15, v100
	v_and_b32_e32 v66, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[47:50]
	ds_store_b128 v76, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v8
	ds_load_b128 v[55:58], v8 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v106
	v_and_b32_e32 v72, 15, v107
	v_and_b32_e32 v73, 15, v108
	v_and_b32_e32 v74, 15, v109
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v20, 4, v11
	v_lshl_or_b32 v20, v22, 4, v13
	v_lshl_or_b32 v22, v35, 4, v27
	v_lshl_or_b32 v27, v40, 4, v32
	v_lshl_or_b32 v32, v53, 4, v45
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v45, 3, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, s34, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[63:66]
	ds_store_b128 v76, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v8
	ds_load_b128 v[71:74], v8 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v19, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s41, 7, v45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v21, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v9
	v_add_nc_u32_e32 v13, 32, v9
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v23, 4, v14
	v_lshl_or_b32 v15, v24, 4, v15
	v_lshl_or_b32 v16, v25, 4, v16
	v_lshl_or_b32 v17, v26, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v9
	v_mad_u64_u32 v[10:11], null, v9, s8, v[7:8]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[7:8]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[7:8]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v23, v36, 4, v28
	v_lshl_or_b32 v24, v37, 4, v29
	v_lshl_or_b32 v26, v39, 4, v31
	v_lshl_or_b32 v28, v41, 4, v33
	v_lshl_or_b32 v29, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v7.l, 0xff, v8.l
	v_lshlrev_b16 v7.h, 8, v17.l
	v_and_b16 v8.l, 0xff, v16.l
	v_lshlrev_b16 v8.h, 8, v15.l
	v_and_b16 v9.l, 0xff, v21.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v30
	v_lshl_or_b32 v34, v55, 4, v47
	v_lshl_or_b32 v35, v56, 4, v48
	v_lshl_or_b32 v36, v57, 4, v49
	v_lshl_or_b32 v37, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v7.h, 8, v29.l
	v_and_b16 v8.l, 0xff, v28.l
	v_lshlrev_b16 v8.h, 8, v27.l
	v_and_b16 v9.l, 0xff, v26.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v51, 4, v43
	v_lshl_or_b32 v31, v52, 4, v44
	v_lshl_or_b32 v33, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v71, 4, v63
	v_lshl_or_b32 v43, v72, 4, v64
	v_lshl_or_b32 v44, v73, 4, v65
	v_lshl_or_b32 v46, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v25.l
	v_and_b16 v4.l, 0xff, v24.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v7.l, 0xff, v22.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v37.l
	v_and_b16 v8.l, 0xff, v36.l
	v_lshlrev_b16 v8.h, 8, v35.l
	v_and_b16 v9.l, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v67, 4, v59
	v_lshl_or_b32 v39, v68, 4, v60
	v_lshl_or_b32 v40, v69, 4, v61
	v_lshl_or_b32 v41, v70, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v3.l, 8, v33.l
	v_and_b16 v4.l, 0xff, v32.l
	v_lshlrev_b16 v6.l, 8, v31.l
	v_and_b16 v7.l, 0xff, v30.l
	v_or_b16 v11.h, v8.l, v7.h
	v_or_b16 v11.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v46.l
	v_and_b16 v8.l, 0xff, v44.l
	v_lshlrev_b16 v8.h, 8, v43.l
	v_and_b16 v9.l, 0xff, v42.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v41.l
	v_and_b16 v4.l, 0xff, v40.l
	v_lshlrev_b16 v6.l, 8, v39.l
	v_and_b16 v7.l, 0xff, v38.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.l, v7.l, v6.l
	v_dual_cndmask_b32 v7, 0x80000000, v13 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v7, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v45
	v_mov_b16_e32 v4.l, v75.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v9, v8, v45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v7, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s41, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp40:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 178
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 178
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13740
; TotalNumSgprs: 45
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 178
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
