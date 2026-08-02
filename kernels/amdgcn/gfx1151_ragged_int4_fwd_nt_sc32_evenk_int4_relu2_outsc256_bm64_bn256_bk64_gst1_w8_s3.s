	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_and_b32_e32 v12, 8, v0
	v_lshlrev_b32_e32 v13, 4, v0
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
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[6:7], 0x0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v9, 15, v0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v10, 0xf0, v0
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v11, 3, v0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v17, 2, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v17
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
	v_mov_b32_e32 v14, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s5, s[24:25], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, vcc_lo, v1, 48
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s2, s2, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s7, s10, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s34, v9
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	v_bfe_i32 v6, v0, 5, 1
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v7, 0x70, v13
	v_bfe_i32 v8, v0, 3, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, 0, v2, vcc_lo
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v21, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[3:4]
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s33, s5
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v3, 32, v1
	s_mul_i32 s6, s5, s40
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_add3_u32 v24, s6, s7, v0
	s_lshl_b32 s6, s9, 8
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v17, s34, v17
	v_add3_u32 v25, s5, s7, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v24, s6, v24
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v5, 0x37c, v5
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v6, 0x88, v6
	v_and_or_b32 v7, 0x88, v8, v7
	v_lshrrev_b32_e32 v8, 1, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[15:16]
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v22, 2, v10
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v23, 1, v0
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v21, 32, v21
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v4, s40, v4
	v_mul_lo_u32 v3, s40, v3
	v_mul_lo_u32 v2, s40, v2
	v_mul_lo_u32 v1, s40, v1
	v_mul_lo_u32 v17, v17, s11
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v49, 1, v24
	v_subrev_nc_u32_e32 v24, s6, v25
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v15, 0, v9
	v_xor_b32_e32 v5, v6, v5
	v_xor_b32_e32 v6, 8, v7
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v8, 0x70, v8
	v_or_b32_e32 v16, 0x300, v0
	v_or_b32_e32 v18, 0x700, v0
	v_or_b32_e32 v19, 0xb00, v0
	v_or_b32_e32 v20, 0xf00, v0
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v23, 28, v23
	v_add3_u32 v21, 0, v22, v21
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v22, 1, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s4, s8
	s_mov_b32 s4, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v57, s11, v24
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v51, 1, v4
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v52, 1, v3
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v53, 1, v2
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v55, 1, v1
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v66, 0, v5
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v68, 0, v7
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v69, 0, v6
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v78, v15, v8
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_lshl_add_u32 v59, v11, 2, v17
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v70, 0, v0
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v71, 0, v16
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v72, 0, v18
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v74, 0, v19
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v76, 0, v20
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v85, v21, v23
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v87, 0, v22
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v6, s9
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
	v_cndmask_b32_e32 v100, 0x80000000, v59, vcc_lo
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	buffer_load_b128 v[96:99], v57, s[12:15], 0 offen
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
	ds_store_b32 v66, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[126:129], v68 offset1:32
	ds_load_2addr_b64 v[166:169], v68 offset0:64 offset1:96
	ds_load_2addr_b64 v[136:139], v69 offset1:32
	ds_load_2addr_b64 v[170:173], v69 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v70, v96
	ds_store_b8_d16_hi v70, v96 offset:512
	ds_store_b8 v70, v97 offset:1024
	ds_store_b8_d16_hi v70, v97 offset:1536
	ds_store_b8 v70, v98 offset:2048
	ds_store_b8_d16_hi v70, v98 offset:2560
	ds_store_b8 v70, v99 offset:3072
	ds_store_b8_d16_hi v70, v99 offset:3584
	ds_store_b8 v70, v101 offset:256
	ds_store_b8 v70, v102 offset:1280
	ds_store_b8 v70, v103 offset:2304
	ds_store_b8 v70, v104 offset:3328
	ds_store_b8 v71, v105
	ds_store_b8 v72, v106
	ds_store_b8 v74, v107
	ds_store_b8 v76, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v96, v78 offset:1280
	ds_load_u8 v97, v78 offset:1024
	ds_load_u8 v98, v78 offset:1920
	ds_load_u8 v99, v78 offset:1664
	ds_load_u8 v100, v78 offset:1408
	ds_load_u8 v101, v78 offset:1152
	ds_load_u8 v102, v78 offset:1792
	ds_load_u8 v103, v78 offset:1536
	ds_load_u8 v104, v78 offset:256
	ds_load_u8 v105, v78
	ds_load_u8 v106, v78 offset:896
	ds_load_u8 v107, v78 offset:640
	ds_load_u8 v108, v78 offset:384
	ds_load_u8 v109, v78 offset:128
	ds_load_u8 v110, v78 offset:768
	ds_load_u8 v111, v78 offset:512
	ds_load_u8 v112, v78 offset:3328
	ds_load_u8 v113, v78 offset:3072
	ds_load_u8 v114, v78 offset:3840
	ds_load_u8 v115, v78 offset:3584
	ds_load_u8 v116, v78 offset:2304
	ds_load_u8 v117, v78 offset:2048
	ds_load_u8 v118, v78 offset:2816
	ds_load_u8 v119, v78 offset:2560
	ds_load_u8 v120, v78 offset:3968
	ds_load_u8 v121, v78 offset:3712
	ds_load_u8 v122, v78 offset:3456
	ds_load_u8 v123, v78 offset:3200
	ds_load_u8 v124, v78 offset:2944
	ds_load_u8 v125, v78 offset:2432
	ds_load_u8 v130, v78 offset:2176
	ds_load_u8 v131, v78 offset:2688
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v99, v109, v108, 0xc0c0004
	v_perm_b32 v101, v107, v106, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v97, v103, v102, 0xc0c0004
	v_perm_b32 v102, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_lshl_or_b32 v177, v98, 16, v100
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v121, v120, 0xc0c0004
	v_lshl_or_b32 v176, v101, 16, v99
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v123, v122, 0xc0c0004
	v_lshl_or_b32 v175, v105, 16, v104
	v_lshl_or_b32 v174, v111, 16, v110
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v108, v130, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v131, v124, 0xc0c0004
	v_lshl_or_b32 v179, v107, 16, v106
	v_wmma_i32_16x16x16_iu4 v[152:159], v[176:177], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v97, 16, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v178, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[104:111], v[176:177], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v103, 16, v102
	v_wmma_i32_16x16x16_iu4 v[152:159], v[178:179], v[170:171], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[178:179], v[136:137], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[164:165], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[164:165], v[126:127], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v108
	v_cvt_f32_i32_e32 v149, v109
	v_cvt_f32_i32_e32 v150, v110
	v_cvt_f32_i32_e32 v151, v111
	v_cvt_f32_i32_e32 v108, v156
	v_cvt_f32_i32_e32 v109, v157
	v_cvt_f32_i32_e32 v110, v158
	v_cvt_f32_i32_e32 v111, v159
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[156:163], v[164:165], v[168:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[174:175], v[138:139], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[176:177], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[156:163], v[174:175], v[172:173], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[164:165], v[166:167], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v104
	v_cvt_f32_i32_e32 v145, v105
	v_cvt_f32_i32_e32 v146, v106
	v_cvt_f32_i32_e32 v147, v107
	v_cvt_f32_i32_e32 v104, v116
	v_cvt_f32_i32_e32 v105, v117
	v_cvt_f32_i32_e32 v106, v118
	v_cvt_f32_i32_e32 v107, v119
	v_cvt_f32_i32_e32 v116, v152
	v_cvt_f32_i32_e32 v117, v153
	v_cvt_f32_i32_e32 v118, v154
	v_cvt_f32_i32_e32 v119, v155
	v_cvt_f32_i32_e32 v152, v160
	v_cvt_f32_i32_e32 v153, v161
	v_cvt_f32_i32_e32 v154, v162
	v_cvt_f32_i32_e32 v155, v163
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[160:167], v[176:177], v[168:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[174:175], v[136:137], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[178:179], v[138:139], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[174:175], v[170:171], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[178:179], v[172:173], v[160:167] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v140, v100
	v_cvt_f32_i32_e32 v100, v120
	v_cvt_f32_i32_e32 v120, v132
	v_cvt_f32_i32_e32 v132, v160
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v160, 0x80000000, v55, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v141, v101
	v_cvt_f32_i32_e32 v101, v121
	v_cvt_f32_i32_e32 v121, v133
	v_cvt_f32_i32_e32 v133, v161
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v161, 0x80000000, v53, s1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v102
	v_cvt_f32_i32_e32 v102, v122
	v_cvt_f32_i32_e32 v122, v134
	v_cvt_f32_i32_e32 v134, v162
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v162, 0x80000000, v52, s2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v96
	v_cvt_f32_i32_e32 v137, v97
	v_cvt_f32_i32_e32 v96, v124
	v_cvt_f32_i32_e32 v97, v125
	v_cvt_f32_i32_e32 v124, v164
	v_cvt_f32_i32_e32 v125, v165
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2
	buffer_load_u16 v160, v160, s[28:31], 0 offen
	buffer_load_u16 v164, v161, s[28:31], 0 offen
	buffer_load_u16 v165, v162, s[28:31], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v51, s3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v98
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v126, v166
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v166, v161, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v161, v49, s[16:19], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v99
	v_cvt_f32_i32_e32 v99, v127
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v127, v167
	v_cvt_f32_i32_e32 v143, v103
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v103, v123
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v123, v135
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v135, v163
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v53, 2, v53
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v173, 16, v164
	v_lshlrev_b32_e32 v167, 16, v160
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v174, 16, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v176, v112, v173
	v_mul_f32_e32 v169, v136, v167
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v170, v137, v167 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v175, 16, v166
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v171, v138, v167 :: v_dual_mul_f32 v180, v128, v174
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v85, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v161, v143, v167 :: v_dual_mul_f32 v168, v129, v174
	v_mul_f32_e32 v136, v148, v167
	v_dual_mul_f32 v138, v150, v167 :: v_dual_mul_f32 v129, v123, v174
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v166, v131, v174 :: v_dual_mul_f32 v165, v156, v175
	v_mul_f32_e32 v128, v122, v174
	v_mul_f32_e32 v164, v157, v175
	v_dual_mul_f32 v172, v139, v167 :: v_dual_mul_f32 v177, v113, v173
	v_dual_mul_f32 v162, v140, v167 :: v_dual_mul_f32 v179, v115, v173
	v_dual_mul_f32 v163, v141, v167 :: v_dual_mul_f32 v178, v114, v173
	v_mul_f32_e32 v160, v142, v167
	v_mul_f32_e32 v140, v144, v167
	v_mul_f32_e32 v141, v145, v167
	v_mul_f32_e32 v142, v146, v167
	v_dual_mul_f32 v143, v147, v167 :: v_dual_mul_f32 v150, v104, v173
	v_dual_mul_f32 v137, v149, v167 :: v_dual_mul_f32 v146, v106, v173
	v_dual_mul_f32 v139, v151, v167 :: v_dual_mul_f32 v148, v120, v174
	v_mul_f32_e32 v167, v130, v174
	v_dual_mul_f32 v157, v158, v175 :: v_dual_mul_f32 v112, v100, v173
	v_dual_mul_f32 v156, v159, v175 :: v_dual_mul_f32 v113, v101, v173
	v_mul_f32_e32 v151, v105, v173
	v_mul_f32_e32 v147, v107, v173
	v_dual_mul_f32 v149, v121, v174 :: v_dual_mul_f32 v130, v152, v175
	v_mul_f32_e32 v115, v103, v173
	v_dual_mul_f32 v131, v153, v175 :: v_dual_mul_f32 v114, v102, v173
	v_dual_mul_f32 v144, v154, v175 :: v_dual_mul_f32 v117, v117, v174
	v_dual_mul_f32 v145, v155, v175 :: v_dual_mul_f32 v116, v116, v174
	v_dual_mul_f32 v118, v118, v174 :: v_dual_mul_f32 v121, v133, v175
	v_dual_mul_f32 v119, v119, v174 :: v_dual_mul_f32 v120, v132, v175
	v_dual_mul_f32 v122, v134, v175 :: v_dual_mul_f32 v97, v97, v173
	v_dual_mul_f32 v123, v135, v175 :: v_dual_mul_f32 v96, v96, v173
	v_dual_mul_f32 v98, v98, v173 :: v_dual_mul_f32 v101, v109, v174
	v_dual_mul_f32 v99, v99, v173 :: v_dual_mul_f32 v100, v108, v174
	v_dual_mul_f32 v102, v110, v174 :: v_dual_mul_f32 v105, v125, v175
	v_dual_mul_f32 v103, v111, v174 :: v_dual_mul_f32 v104, v124, v175
	v_mul_f32_e32 v106, v126, v175
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[108:111], v87
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v107, v127, v175
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[124:127], v87 offset:16
	ds_load_b128 v[132:135], v87 offset:512
	ds_load_b128 v[152:155], v87 offset:528
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v51, 2, v51
	v_add_nc_u32_e32 v52, 2, v52
	v_add_nc_u32_e32 v55, 2, v55
	v_add_nc_u32_e32 v57, 16, v57
	v_add_nc_u32_e32 v59, 16, v59
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v28, v157, v110 :: v_dual_add_nc_u32 v49, s42, v49
	v_dual_fmac_f32 v14, v169, v108 :: v_dual_fmac_f32 v95, v170, v109
	v_dual_fmac_f32 v94, v171, v110 :: v_dual_fmac_f32 v93, v172, v111
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v92, v162, v124
	v_dual_fmac_f32 v77, v176, v108 :: v_dual_fmac_f32 v64, v151, v125
	v_dual_fmac_f32 v75, v177, v109 :: v_dual_fmac_f32 v90, v160, v126
	v_dual_fmac_f32 v73, v178, v110 :: v_dual_fmac_f32 v62, v147, v127
	v_dual_fmac_f32 v67, v179, v111 :: v_dual_fmac_f32 v42, v148, v124
	v_fmac_f32_e32 v46, v180, v108
	v_dual_fmac_f32 v45, v168, v109 :: v_dual_fmac_f32 v26, v130, v124
	v_dual_fmac_f32 v44, v167, v110 :: v_dual_fmac_f32 v43, v166, v111
	v_fmac_f32_e32 v40, v128, v126
	v_dual_fmac_f32 v30, v165, v108 :: v_dual_fmac_f32 v29, v164, v109
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v84, v142, v134 :: v_dual_fmac_f32 v27, v156, v111
	v_fmac_f32_e32 v86, v141, v133
	v_dual_fmac_f32 v91, v163, v125 :: v_dual_fmac_f32 v24, v144, v126
	v_dual_fmac_f32 v89, v161, v127 :: v_dual_fmac_f32 v88, v140, v132
	v_dual_fmac_f32 v65, v150, v124 :: v_dual_fmac_f32 v60, v113, v133
	v_dual_fmac_f32 v63, v146, v126 :: v_dual_fmac_f32 v56, v115, v135
	v_dual_fmac_f32 v41, v149, v125 :: v_dual_fmac_f32 v58, v114, v134
	v_dual_fmac_f32 v39, v129, v127 :: v_dual_fmac_f32 v38, v116, v132
	v_dual_fmac_f32 v25, v131, v125 :: v_dual_fmac_f32 v36, v118, v134
	v_dual_fmac_f32 v23, v145, v127 :: v_dual_fmac_f32 v22, v120, v132
	v_dual_fmac_f32 v83, v143, v135 :: v_dual_fmac_f32 v20, v122, v134
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v61, v112, v132 :: v_dual_fmac_f32 v80, v138, v154
	v_dual_fmac_f32 v37, v117, v133 :: v_dual_fmac_f32 v82, v136, v152
	v_dual_fmac_f32 v35, v119, v135 :: v_dual_fmac_f32 v54, v96, v152
	v_dual_fmac_f32 v21, v121, v133 :: v_dual_fmac_f32 v48, v98, v154
	v_dual_fmac_f32 v19, v123, v135 :: v_dual_fmac_f32 v50, v97, v153
	v_dual_fmac_f32 v81, v137, v153 :: v_dual_fmac_f32 v34, v100, v152
	v_dual_fmac_f32 v79, v139, v155 :: v_dual_fmac_f32 v32, v102, v154
	v_dual_fmac_f32 v47, v99, v155 :: v_dual_fmac_f32 v18, v104, v152
	v_dual_fmac_f32 v33, v101, v153 :: v_dual_fmac_f32 v16, v106, v154
	v_fmac_f32_e32 v31, v103, v155
	v_fmac_f32_e32 v17, v105, v153
	v_fmac_f32_e32 v15, v107, v155
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v1, v14, v14 :: v_dual_max_f32 v2, v95, v95
	v_dual_max_f32 v5, v92, v92 :: v_dual_max_f32 v6, v91, v91
	v_dual_max_f32 v7, v90, v90 :: v_dual_max_f32 v8, v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v14, v88, v88 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v52, v83, v83 :: v_dual_max_f32 v53, v82, v82
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v49, v86, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v51, v84, v84
	v_dual_max_f32 v55, v81, v81 :: v_dual_max_f32 v68, 0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v53, 0, v53 :: v_dual_max_f32 v52, v79, v79
	v_dual_max_f32 v49, 0, v49 :: v_dual_max_f32 v70, 0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v57, 0, v51 :: v_dual_max_f32 v66, v73, v73
	v_max_f32_e32 v59, v75, v75
	v_dual_max_f32 v73, 0, v52 :: v_dual_max_f32 v52, v65, v65
	v_max_f32_e32 v55, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v51, v80, v80 :: v_dual_max_f32 v80, 0, v59
	v_dual_max_f32 v59, v63, v63 :: v_dual_max_f32 v56, v56, v56
	v_dual_max_f32 v76, 0, v55 :: v_dual_max_f32 v55, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v54, v54, v54 :: v_dual_max_f32 v71, 0, v51
	v_dual_max_f32 v62, v62, v62 :: v_dual_max_f32 v51, v67, v67
	v_dual_max_f32 v83, 0, v55 :: v_dual_max_f32 v88, 0, v56
	v_dual_max_f32 v55, v58, v58 :: v_dual_max_f32 v48, v48, v48
	v_dual_max_f32 v81, 0, v66 :: v_dual_max_f32 v82, 0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v52, v60, v60 :: v_dual_max_f32 v65, 0, v51
	v_dual_max_f32 v51, v61, v61 :: v_dual_max_f32 v50, v50, v50
	v_dual_max_f32 v87, 0, v55 :: v_dual_max_f32 v46, v46, v46
	v_max_f32_e32 v47, v47, v47
	v_max_f32_e32 v45, v45, v45
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v38, v38, v38
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v36, v36, v36
	v_max_f32_e32 v35, v35, v35
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v26, v26, v26
	v_max_f32_e32 v25, v25, v25
	v_dual_max_f32 v3, v94, v94 :: v_dual_max_f32 v4, v93, v93
	v_dual_max_f32 v90, 0, v50 :: v_dual_max_f32 v91, 0, v47
	v_max_f32_e32 v44, v44, v44
	v_dual_max_f32 v92, 0, v46 :: v_dual_max_f32 v93, 0, v45
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v41, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max_f32_e32 v94, 0, v44
	v_dual_max_f32 v100, 0, v38 :: v_dual_max_f32 v101, 0, v37
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v103, 0, v35
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v31, v31, v31
	v_max_f32_e32 v104, 0, v34
	v_dual_max_f32 v110, 0, v28 :: v_dual_max_f32 v111, 0, v27
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v113, 0, v25
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v23, v23, v23
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v114, 0, v24 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v17, v17, v17
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v15, v15, v15
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v84, 0, v59 :: v_dual_max_f32 v85, 0, v62
	v_max_f32_e32 v58, 0, v51
	v_dual_max_f32 v86, 0, v52 :: v_dual_max_f32 v89, 0, v54
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v95, 0, v43
	v_dual_max_f32 v96, 0, v42 :: v_dual_max_f32 v97, 0, v41
	v_dual_max_f32 v98, 0, v40 :: v_dual_max_f32 v99, 0, v39
	v_dual_max_f32 v102, 0, v36 :: v_dual_max_f32 v105, 0, v33
	v_dual_max_f32 v106, 0, v32 :: v_dual_max_f32 v107, 0, v31
	v_dual_max_f32 v108, 0, v30 :: v_dual_max_f32 v109, 0, v29
	v_dual_max_f32 v112, 0, v26 :: v_dual_max_f32 v115, 0, v23
	v_dual_max_f32 v116, 0, v22 :: v_dual_max_f32 v117, 0, v21
	v_dual_max_f32 v118, 0, v20 :: v_dual_max_f32 v19, 0, v19
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v52, v2, v2
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v119, 0, v18 :: v_dual_mul_f32 v56, v4, v4
	v_dual_max_f32 v17, 0, v17 :: v_dual_mul_f32 v60, v6, v6
	v_dual_max_f32 v120, 0, v16 :: v_dual_max_f32 v121, 0, v15
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v64, v8, v8 :: v_dual_mul_f32 v51, v1, v1
	v_dual_mul_f32 v66, v14, v14 :: v_dual_mul_f32 v55, v3, v3
	v_dual_mul_f32 v72, v68, v68 :: v_dual_mul_f32 v59, v5, v5
	v_mul_f32_e32 v78, v71, v71
	v_dual_mul_f32 v63, v7, v7 :: v_dual_mul_f32 v74, v53, v53
	v_mul_f32_e32 v67, v49, v49
	v_dual_mul_f32 v69, v57, v57 :: v_dual_mul_f32 v68, v82, v82
	v_dual_mul_f32 v75, v70, v70 :: v_dual_mul_f32 v70, v65, v65
	v_dual_mul_f32 v79, v73, v73 :: v_dual_mul_f32 v62, v84, v84
	v_dual_mul_f32 v77, v76, v76 :: v_dual_mul_f32 v58, v58, v58
	v_dual_mul_f32 v76, v80, v80 :: v_dual_mul_f32 v71, v81, v81
	v_mul_f32_e32 v54, v87, v87
	v_dual_mul_f32 v65, v83, v83 :: v_dual_mul_f32 v50, v89, v89
	v_dual_mul_f32 v61, v85, v85 :: v_dual_mul_f32 v46, v91, v91
	v_dual_mul_f32 v57, v86, v86 :: v_dual_mul_f32 v44, v93, v93
	v_dual_mul_f32 v53, v88, v88 :: v_dual_mul_f32 v42, v95, v95
	v_dual_mul_f32 v49, v90, v90 :: v_dual_mul_f32 v40, v97, v97
	v_dual_mul_f32 v47, v48, v48 :: v_dual_mul_f32 v38, v99, v99
	v_dual_mul_f32 v45, v92, v92 :: v_dual_mul_f32 v36, v101, v101
	v_dual_mul_f32 v43, v94, v94 :: v_dual_mul_f32 v34, v103, v103
	v_dual_mul_f32 v41, v96, v96 :: v_dual_mul_f32 v32, v105, v105
	v_dual_mul_f32 v39, v98, v98 :: v_dual_mul_f32 v30, v107, v107
	v_dual_mul_f32 v37, v100, v100 :: v_dual_mul_f32 v28, v109, v109
	v_dual_mul_f32 v35, v102, v102 :: v_dual_mul_f32 v26, v111, v111
	v_dual_mul_f32 v33, v104, v104 :: v_dual_mul_f32 v24, v113, v113
	v_dual_mul_f32 v31, v106, v106 :: v_dual_mul_f32 v22, v115, v115
	v_dual_mul_f32 v29, v108, v108 :: v_dual_mul_f32 v20, v117, v117
	v_dual_mul_f32 v27, v110, v110 :: v_dual_mul_f32 v16, v19, v19
	v_dual_mul_f32 v25, v112, v112 :: v_dual_mul_f32 v18, v118, v118
	v_dual_mul_f32 v23, v114, v114 :: v_dual_mul_f32 v14, v17, v17
	v_dual_mul_f32 v21, v116, v116 :: v_dual_mov_b32 v2, v13
	v_dual_mul_f32 v15, v119, v119 :: v_dual_mul_f32 v8, v120, v120
	v_mul_f32_e32 v7, v121, v121
	v_mov_b32_e32 v1, v12
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v52, v52 :: v_dual_max_f32 v4, v51, v51
	v_max3_f32 v5, v56, v59, v60
	v_max3_f32 v6, v67, v69, v72
	v_max3_f32 v12, v74, v75, v78
	v_max_f32_e32 v13, v77, v77
	v_max_f32_e32 v3, v4, v3
	v_max_f32_e32 v4, v76, v76
	v_max3_f32 v48, v57, v54, v53
	v_max3_f32 v6, v6, v12, v79
	v_max_f32_e32 v12, v45, v45
	v_max3_f32 v73, v50, v49, v47
	v_max_f32_e32 v4, v13, v4
	v_max3_f32 v3, v3, v55, v5
	v_max_f32_e32 v5, v44, v44
	v_max3_f32 v13, v70, v68, v65
	v_max3_f32 v17, v63, v64, v66
	v_max3_f32 v19, v62, v61, v58
	v_max3_f32 v80, v36, v35, v34
	v_max_f32_e32 v5, v12, v5
	v_max3_f32 v12, v42, v41, v40
	v_max3_f32 v81, v33, v32, v31
	v_max3_f32 v4, v4, v71, v13
	v_max3_f32 v13, v48, v73, v46
	v_max3_f32 v48, v39, v38, v37
	v_max3_f32 v5, v5, v43, v12
	v_max3_f32 v12, v80, v81, v30
	v_dual_max_f32 v73, v28, v28 :: v_dual_max_f32 v80, v29, v29
	v_max3_f32 v3, v3, v17, v6
	v_max3_f32 v4, v4, v19, v13
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v5, v5, v48, v12
	v_max_f32_e32 v6, v80, v73
	v_max3_f32 v12, v26, v25, v24
	v_max3_f32 v17, v20, v18, v16
	v_max3_f32 v19, v15, v14, v8
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v48, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v73, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v23, v22, v21
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v80, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v27, v12
	v_max3_f32 v12, v17, v19, v7
	v_max_f32_e32 v17, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v19, v73, v73 :: v_dual_max_f32 v48, v80, v80
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v73, 0x80, v0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v13, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v3, v3, v17 :: v_dual_max_f32 v4, v4, v19
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v19, 4, v0
	v_lshl_add_u32 v13, v11, 9, 0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v48 :: v_dual_lshlrev_b32 v12, 5, v11
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v48, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v80, v19, 2, v13
	v_and_or_b32 v2, 0x680, v2, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v48, v48, v48 :: v_dual_lshlrev_b32 v13, 1, v73
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v81, v12, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v80, v1, 4, v80
	v_lshrrev_b32_e32 v82, 3, v73
	v_xor_b32_e32 v2, v2, v17
	v_lshl_add_u32 v83, v19, 6, 0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v48
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v48, v80, v13, v81
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v2, v83, v82, v2
	v_lshl_add_u32 v11, v11, 4, 0
	ds_store_b128 v48, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v6, v2 :: v_dual_lshlrev_b32 v1, 3, v1
	v_mov_b32_e32 v48, v3
	v_mov_b32_e32 v80, v4
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v5, v5
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v48, v48, v48 :: v_dual_add_nc_u32 v73, 0, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v2, v2, v6 :: v_dual_max_f32 v3, v3, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, v81, v5 :: v_dual_max_f32 v6, v80, v80
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v3 :: v_dual_mov_b32 v81, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v48, v2 :: v_dual_max_f32 v3, v3, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v6
	v_max_f32_e32 v48, v48, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v48
	v_dual_max_f32 v48, v81, v81 :: v_dual_mov_b32 v81, v3
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v2 :: v_dual_max_f32 v5, v5, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v48, v5
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v81 :: v_dual_max_f32 v2, v2, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v48, v48, v48
	v_max_f32_e32 v6, v6, v6
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v80, 1, v17
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v48 :: v_dual_max_f32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v4, v4, v6
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v6, 5, v19
	v_add3_u32 v19, v73, v80, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, v11, v6, v1
	ds_store_b128 v19, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v11, 4, v10
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[80:83], v1
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v5, 63, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v11
	v_or_b32_e32 v73, 32, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v80, v80 :: v_dual_max_f32 v82, v82, v82
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v80, 16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v83, v83, v83 :: v_dual_max_f32 v6, 0x2b8cbccc, v1
	v_max_f32_e32 v82, 0x2b8cbccc, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v86, vcc_lo, v6, 0x40e00000, v6
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v3
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s34, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v84, -v19, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v84, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s0, s34, v73
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v73, v81, v81
	v_rcp_f32_e32 v81, v87
	v_mul_f32_e32 v88, v86, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v73, 0x2b8cbccc, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v19, v88, v86
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[84:85]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v73
	v_fma_f32 v90, -v87, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v3, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v80, 0x2b8cbccc, v83 :: v_dual_fmac_f32 v81, v90, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v19, v88, v86
	v_rcp_f32_e32 v83, v89
	v_div_scale_f32 v86, s6, v82, 0x40e00000, v82
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v19, v19, v48, v88
	v_mul_f32_e32 v48, v86, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v88, v90
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[84:85]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v84, -v89, v83, 1.0
	v_div_fixup_f32 v6, v19, 0x40e00000, v6
	v_fma_f32 v19, -v87, v48, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, 0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, s7, v73, 0x40e00000, v73
	v_fmac_f32_e32 v48, v19, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v19.l, v6.h
	v_mov_b16_e32 v19.h, v85.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v90, v88, 1.0
	v_mul_f32_e32 v92, v84, v83
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v87, v48, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v19
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s8, v80, 0x40e00000, v80
	v_fma_f32 v19, -v89, v92, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v6, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v86, v91, v88
	v_div_fmas_f32 v48, v3, v81, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v19, v83 :: v_dual_and_b32 v81, 0xffff0000, v6
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v19, -v90, v86, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v48, v48, 0x40e00000, v82
	v_fma_f32 v82, -v89, v92, v84
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v81, v81, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v86, v19, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v48.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v19, v82, v83, v92
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v83, -v90, v86, v91
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v19, v19, 0x40e00000, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v73, v83, v88, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v81, v81, v52
	v_fma_f32 v87, -v84, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v86, 1, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v73, v73, 0x40e00000, v80
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v19.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v51, v81, v51
	v_rcp_f32_e32 v88, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, v85.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v48, v86, 0x7fff
	v_mov_b16_e32 v85.l, v73.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v86, v87, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v89, null, v81, v81, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v84, v86, v87
	v_div_scale_f32 v91, null, v81, v81, v56
	v_fma_f32 v48, -v83, v88, 1.0
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v82
	v_rcp_f32_e32 v85, v91
	v_div_scale_f32 v92, s8, v52, v81, v52
	v_fmac_f32_e32 v88, v48, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v84, v86, v87
	v_div_scale_f32 v96, null, v81, v81, v59
	v_mul_f32_e32 v93, v92, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v89, v90, 1.0
	v_fma_f32 v95, -v91, v85, 1.0
	v_div_fmas_f32 v82, v84, v82, v86
	v_rcp_f32_e32 v86, v96
	v_fma_f32 v87, -v83, v93, v92
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s9, v55, v81, v55
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v87, v88 :: v_dual_mul_f32 v84, v94, v90
	v_div_scale_f32 v87, s10, v56, v81, v56
	v_rcp_f32_e32 v97, v95
	v_div_fixup_f32 v51, v82, v81, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v82, -v83, v93, v92
	v_fma_f32 v83, -v89, v84, v94
	v_mul_f32_e32 v92, v87, v85
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v98, -v96, v86, 1.0
	v_div_fmas_f32 v82, v82, v88, v93
	v_fmac_f32_e32 v84, v83, v90
	v_fma_f32 v83, -v91, v92, v87
	v_fma_f32 v93, -v95, v97, 1.0
	v_fmac_f32_e32 v86, v98, v86
	v_div_scale_f32 v88, s8, v59, v81, v59
	v_div_fixup_f32 v52, v82, v81, v52
	v_fma_f32 v82, -v89, v84, v94
	v_fmac_f32_e32 v92, v83, v85
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v93, null, v81, v81, v63
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v83, v88, v86
	v_div_scale_f32 v89, s11, v60, v81, v60
	v_div_fmas_f32 v82, v82, v90, v84
	v_fma_f32 v84, -v91, v92, v87
	v_rcp_f32_e32 v90, v93
	v_div_scale_f32 v94, null, v81, v81, v64
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v96, v83, v88
	v_mul_f32_e32 v91, v89, v97
	v_div_fmas_f32 v84, v84, v85, v92
	v_rcp_f32_e32 v85, v94
	v_div_fixup_f32 v55, v82, v81, v55
	v_fmac_f32_e32 v83, v87, v86
	v_fma_f32 v87, -v95, v91, v89
	v_fma_f32 v92, -v93, v90, 1.0
	v_div_fixup_f32 v56, v84, v81, v56
	v_div_scale_f32 v84, s9, v63, v81, v63
	v_fma_f32 v82, -v96, v83, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v87, v97 :: v_dual_fmac_f32 v90, v92, v90
	v_fma_f32 v87, -v94, v85, 1.0
	v_div_scale_f32 v88, null, v81, v81, v66
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v81, v81, v67
	v_div_fmas_f32 v82, v82, v86, v83
	v_fma_f32 v83, -v95, v91, v89
	v_dual_mul_f32 v86, v84, v90 :: v_dual_fmac_f32 v85, v87, v85
	v_rcp_f32_e32 v87, v88
	v_div_scale_f32 v89, s8, v64, v81, v64
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v59, v82, v81, v59
	v_div_fmas_f32 v83, v83, v97, v91
	v_fma_f32 v91, -v93, v86, v84
	v_mul_f32_e32 v95, v89, v85
	v_rcp_f32_e32 v97, v92
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v88, v87, 1.0
	v_fmac_f32_e32 v86, v91, v90
	v_fma_f32 v82, -v94, v95, v89
	v_div_fixup_f32 v60, v83, v81, v60
	v_div_scale_f32 v83, s10, v66, v81, v66
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v91, null, v81, v81, v69
	v_fma_f32 v84, -v93, v86, v84
	v_fmac_f32_e32 v95, v82, v85
	v_fma_f32 v96, -v92, v97, 1.0
	v_mul_f32_e32 v82, v83, v87
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v84, v84, v90, v86
	v_fma_f32 v86, -v94, v95, v89
	v_div_scale_f32 v98, null, v81, v81, v72
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v67, v81, v67
	v_fma_f32 v89, -v88, v82, v83
	v_div_fmas_f32 v85, v86, v85, v95
	v_rcp_f32_e32 v86, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v96, v97
	v_fma_f32 v94, -v91, v93, 1.0
	v_fmac_f32_e32 v82, v89, v87
	v_div_fixup_f32 v64, v85, v81, v64
	v_div_fixup_f32 v63, v84, v81, v63
	v_fma_f32 v89, -v92, v90, v96
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, s8, v69, v81, v69
	v_fma_f32 v83, -v88, v82, v83
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v81, v81, v74
	v_fmac_f32_e32 v90, v89, v97
	v_mul_f32_e32 v84, v94, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v72, v81, v72
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v92, v90, v96
	v_fma_f32 v87, -v91, v84, v94
	v_div_scale_f32 v92, null, v81, v81, v75
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v85, 1.0
	v_fmac_f32_e32 v84, v87, v93
	v_rcp_f32_e32 v87, v92
	v_div_fmas_f32 v83, v83, v97, v90
	v_mul_f32_e32 v90, v89, v86
	v_div_fixup_f32 v66, v82, v81, v66
	v_fma_f32 v82, -v91, v84, v94
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v78
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v67, v83, v81, v67
	v_fma_f32 v83, -v98, v90, v89
	v_div_scale_f32 v91, s10, v74, v81, v74
	v_fma_f32 v94, -v92, v87, 1.0
	v_div_fmas_f32 v82, v82, v93, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v90, v83, v86
	v_mul_f32_e32 v83, v91, v85
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v93, s8, v75, v81, v75
	v_div_scale_f32 v94, null, v81, v81, v79
	v_div_fixup_f32 v69, v82, v81, v69
	v_fma_f32 v82, -v98, v90, v89
	v_fma_f32 v89, -v88, v83, v91
	v_mul_f32_e32 v96, v93, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v19, v19, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v90
	v_fmac_f32_e32 v83, v89, v85
	v_fma_f32 v86, -v92, v96, v93
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v89, s9, v78, v81, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v73, v80, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v19
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v90, -v94, v97, 1.0
	v_div_fixup_f32 v72, v82, v81, v72
	v_fma_f32 v82, -v88, v83, v91
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v86, v89, v84
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v90, v97
	v_div_scale_f32 v88, s11, v79, v81, v79
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v92, v96, v93
	v_fma_f32 v85, -v95, v86, v89
	v_div_scale_f32 v93, null, v80, v80, v76
	v_mul_f32_e32 v92, v88, v97
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v74, v82, v81, v74
	v_fma_f32 v82, -v95, v86, v89
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v75, v83, v81, v75
	v_dual_fmac_f32 v92, v87, v97 :: v_dual_and_b32 v73, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v87, -v93, v85, 1.0
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v94, v92, v88
	v_div_fixup_f32 v78, v82, v81, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v90, null, v80, v80, v77
	v_div_scale_f32 v83, s8, v77, v80, v77
	v_div_scale_f32 v89, null, v80, v80, v71
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v88, s9, v76, v80, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v94, null, v80, v80, v70
	v_div_fmas_f32 v84, v84, v97, v92
	v_mul_f32_e32 v95, v88, v85
	v_div_scale_f32 v82, s10, v71, v80, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v90, v91, 1.0
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v79, v84, v81, v79
	v_fma_f32 v81, -v93, v95, v88
	v_dual_fmac_f32 v91, v96, v91 :: v_dual_and_b32 v48, 0xffff0000, v4
	v_fma_f32 v96, -v89, v87, 1.0
	v_div_scale_f32 v84, null, v80, v80, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v81, v85 :: v_dual_mul_f32 v86, v83, v91
	v_fmac_f32_e32 v87, v96, v87
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v80, v80, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v90, v86, v83
	v_mul_f32_e32 v81, v82, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v92, v91
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v83, -v90, v86, v83
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s11, v70, v80, v70
	v_div_fmas_f32 v83, v83, v91, v86
	v_fma_f32 v86, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v89, v81, v82
	v_mul_f32_e32 v91, v92, v97
	v_div_fixup_f32 v77, v83, v80, v77
	v_div_fmas_f32 v85, v86, v85, v95
	v_rcp_f32_e32 v86, v96
	v_fma_f32 v93, -v84, v90, 1.0
	v_fmac_f32_e32 v81, v88, v87
	v_fma_f32 v88, -v94, v91, v92
	v_div_fixup_f32 v76, v85, v80, v76
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v93, s8, v68, v80, v68
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v96, v86, 1.0
	v_div_scale_f32 v88, null, v80, v80, v62
	v_fma_f32 v82, -v89, v81, v82
	v_mul_f32_e32 v83, v93, v90
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v89, s9, v65, v80, v65
	v_div_fmas_f32 v81, v82, v87, v81
	v_fma_f32 v82, -v94, v91, v92
	v_fma_f32 v87, -v84, v83, v93
	v_div_scale_f32 v92, null, v80, v80, v61
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v71, v81, v80, v71
	v_fmac_f32_e32 v83, v87, v90
	v_rcp_f32_e32 v87, v92
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v91, v89, v86
	v_fma_f32 v81, -v84, v83, v93
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v80, v80, v58
	v_div_fixup_f32 v70, v82, v80, v70
	v_fma_f32 v82, -v96, v91, v89
	v_div_scale_f32 v84, s10, v62, v80, v62
	v_fma_f32 v93, -v92, v87, 1.0
	v_div_fmas_f32 v81, v81, v90, v83
	v_rcp_f32_e32 v83, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v82, v86 :: v_dual_mul_f32 v82, v84, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v90, s8, v61, v80, v61
	v_div_scale_f32 v93, null, v80, v80, v57
	v_div_fixup_f32 v68, v81, v80, v68
	v_fma_f32 v81, -v96, v91, v89
	v_fma_f32 v89, -v88, v82, v84
	v_mul_f32_e32 v95, v90, v87
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v89, v85
	v_div_fmas_f32 v81, v81, v86, v91
	v_fma_f32 v86, -v92, v95, v90
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v58, v80, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v65, v81, v80, v65
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v88, v82, v84
	v_fmac_f32_e32 v95, v86, v87
	v_mul_f32_e32 v84, v89, v83
	v_div_scale_f32 v88, null, v80, v80, v54
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v86, s11, v57, v80, v57
	v_div_fmas_f32 v81, v81, v85, v82
	v_fma_f32 v82, -v92, v95, v90
	v_fma_f32 v85, -v94, v84, v89
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v92, null, v80, v80, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v96 :: v_dual_fmac_f32 v84, v85, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v82, v82, v87, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v62, v81, v80, v62
	v_fma_f32 v95, -v88, v90, 1.0
	v_fma_f32 v81, -v94, v84, v89
	v_div_fixup_f32 v61, v82, v80, v61
	v_fmac_f32_e32 v91, v87, v96
	v_div_scale_f32 v82, s8, v54, v80, v54
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v89, null, v80, v80, v50
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v97, null, v80, v80, v46
	v_div_fmas_f32 v81, v81, v83, v84
	v_fma_f32 v83, -v93, v91, v86
	v_dual_mul_f32 v84, v82, v90 :: v_dual_fmac_f32 v85, v87, v85
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v87, s9, v53, v80, v53
	v_div_scale_f32 v93, null, v80, v80, v49
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v84, v82
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v86, 1.0
	v_div_fixup_f32 v58, v81, v80, v58
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v90
	v_div_fixup_f32 v57, v83, v80, v57
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v83, s10, v50, v80, v50
	v_div_scale_f32 v91, null, v80, v80, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v82, -v88, v84, v82
	v_fmac_f32_e32 v94, v81, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v83, v86
	v_rcp_f32_e32 v88, v91
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v49, v80, v49
	v_div_fmas_f32 v82, v82, v90, v84
	v_fma_f32 v84, -v92, v94, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v89, v81, v83
	v_mul_f32_e32 v90, v95, v96
	v_div_fixup_f32 v54, v82, v80, v54
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v92, -v91, v88, 1.0
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v90, v95
	v_div_fixup_f32 v53, v84, v80, v53
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v47, v80, v47
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v73, v73, v45
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v92, v88
	v_fmac_f32_e32 v85, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v89, s9, v46, v80, v46
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v90, v95
	v_fma_f32 v86, -v91, v83, v92
	v_div_scale_f32 v93, null, v73, v73, v44
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v50, v81, v80, v50
	v_fmac_f32_e32 v83, v86, v88
	v_rcp_f32_e32 v86, v93
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fmas_f32 v82, v82, v96, v90
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v81, -v91, v83, v92
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v73, v73, v43
	v_div_fixup_f32 v49, v82, v80, v49
	v_fma_f32 v82, -v97, v90, v89
	v_div_scale_f32 v91, s10, v45, v73, v45
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_fmas_f32 v81, v81, v88, v83
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v90, v82, v85
	v_mul_f32_e32 v82, v91, v84
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v88, s8, v44, v73, v44
	v_div_scale_f32 v92, null, v73, v73, v42
	v_div_fixup_f32 v47, v81, v80, v47
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v89, v84
	v_div_fmas_f32 v81, v81, v85, v90
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v43, v73, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v46, v81, v80, v46
	v_fma_f32 v90, -v92, v96, 1.0
	v_fma_f32 v80, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	v_mul_f32_e32 v81, v89, v83
	v_div_scale_f32 v87, null, v73, v73, v41
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v85, s11, v42, v73, v42
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v81, v89
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v73, v73, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v85, v96 :: v_dual_fmac_f32 v81, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v82, v82, v86, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v92, v90, v85
	v_div_fixup_f32 v45, v80, v73, v45
	v_fma_f32 v93, -v87, v88, 1.0
	v_fma_f32 v80, -v94, v81, v89
	v_div_fixup_f32 v44, v82, v73, v44
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v82, s8, v41, v73, v41
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v86, -v91, v84, 1.0
	v_div_scale_f32 v89, null, v73, v73, v39
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v90, v85
	v_mul_f32_e32 v83, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v86, s9, v40, v73, v40
	v_div_scale_f32 v92, null, v73, v73, v38
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v81, v81, v96, v90
	v_fma_f32 v90, -v87, v83, v82
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_fixup_f32 v43, v80, v73, v43
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v73, v73, v37
	v_div_fixup_f32 v42, v81, v73, v42
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v81, s10, v39, v73, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v82, -v87, v83, v82
	v_fmac_f32_e32 v93, v80, v84
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v80, v81, v85 :: v_dual_fmac_f32 v95, v94, v95
	v_div_scale_f32 v94, s11, v38, v73, v38
	v_div_fmas_f32 v82, v82, v88, v83
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v96, null, v73, v73, v36
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v89, v80, v81
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v88, v94
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v37, v73, v37
	v_div_fixup_f32 v41, v82, v73, v41
	v_div_fixup_f32 v40, v83, v73, v40
	v_fma_f32 v81, -v89, v80, v81
	v_fmac_f32_e32 v88, v86, v95
	v_mul_f32_e32 v82, v91, v87
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v73, v73, v35
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v36, v73, v36
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v94
	v_fma_f32 v85, -v90, v82, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v73, v73, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v39, v80, v73, v39
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v95, v88
	v_mul_f32_e32 v88, v89, v84
	v_fma_f32 v80, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v38, v81, v73, v38
	v_fma_f32 v81, -v96, v88, v89
	v_div_scale_f32 v90, s10, v35, v73, v35
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v73, v73, v33
	v_div_fmas_f32 v80, v80, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v81, v84 :: v_dual_fmac_f32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v73, v73, v32
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s8, v34, v73, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v37, v80, v73, v37
	v_fma_f32 v80, -v96, v88, v89
	v_fma_f32 v89, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v88
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v33, v73, v33
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v36, v80, v73, v36
	v_fma_f32 v80, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v73, v73, v31
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v32, v73, v32
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v92, null, v73, v73, v30
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v35, v80, v73, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v34, v81, v73, v34
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s8, v31, v73, v31
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v48, v48, v28
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v48, v48, v29
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s9, v30, v73, v30
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v86, v83
	v_div_fixup_f32 v33, v80, v73, v33
	v_div_fixup_f32 v32, v82, v73, v32
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v80, -v92, v91, v86
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v48, v48, v26
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v81, -v89, v84, v81
	v_div_scale_f32 v89, null, v48, v48, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v80, v83 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s10, v29, v48, v29
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v80, v88
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v87, s8, v28, v48, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v80
	v_fma_f32 v92, -v89, v90, 1.0
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v83, v84, v83, v91
	v_mul_f32_e32 v96, v87, v82
	v_fmac_f32_e32 v86, v94, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v27, v48, v27
	v_div_fixup_f32 v31, v81, v73, v31
	v_div_fixup_f32 v30, v83, v73, v30
	v_fma_f32 v73, -v85, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v92, v90
	v_div_scale_f32 v83, null, v48, v48, v25
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v81, -v95, v97, 1.0
	v_fma_f32 v80, -v89, v91, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v84, v82 :: v_dual_fmac_f32 v97, v81, v97
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s9, v26, v48, v26
	v_div_fmas_f32 v73, v73, v88, v86
	v_fma_f32 v84, -v93, v96, v87
	v_div_scale_f32 v86, null, v48, v48, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v81, v97
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v29, v73, v48, v29
	v_fma_f32 v87, -v83, v80, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v89, v91, v92
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v89, -v95, v85, v81
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s8, v25, v48, v25
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v85, v89, v97
	v_div_fmas_f32 v84, v84, v90, v91
	v_mul_f32_e32 v73, v87, v80
	v_div_fixup_f32 v28, v82, v48, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fma_f32 v81, -v95, v85, v81
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v83, v73, v87
	v_div_fixup_f32 v27, v84, v48, v27
	v_div_scale_f32 v84, null, v48, v48, v23
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s10, v24, v48, v24
	v_div_fmas_f32 v81, v81, v97, v85
	v_fmac_f32_e32 v73, v89, v80
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v82, v88
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v26, v81, v48, v26
	v_fma_f32 v81, -v83, v73, v87
	v_div_scale_f32 v89, null, v48, v48, v22
	v_fma_f32 v83, -v86, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v81, v80, v73
	v_div_scale_f32 v80, null, v48, v48, v21
	v_fma_f32 v87, -v84, v90, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v80
	v_div_scale_f32 v81, s8, v23, v48, v23
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v48, v48, v20
	v_div_fixup_f32 v25, v73, v48, v25
	v_fma_f32 v82, -v86, v85, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v89, v91, 1.0
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v80, v83, 1.0
	v_mul_f32_e32 v86, v81, v90
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v73, v91
	v_div_scale_f32 v73, s9, v22, v48, v22
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v48, v48, v18
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v81
	v_mul_f32_e32 v88, v73, v91
	v_div_scale_f32 v94, s10, v21, v48, v21
	v_fma_f32 v95, -v87, v93, 1.0
	v_rcp_f32_e32 v96, v92
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v73
	v_mul_f32_e32 v97, v94, v83
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s11, v20, v48, v20
	v_div_fixup_f32 v24, v82, v48, v24
	v_fma_f32 v81, -v84, v86, v81
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v82, -v80, v97, v94
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v73, -v89, v88, v73
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s8, v18, v48, v18
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v80, -v80, v97, v94
	v_fmac_f32_e32 v84, v82, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v85, v96
	v_div_scale_f32 v86, null, v48, v48, v16
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v23, v81, v48, v23
	v_div_fmas_f32 v73, v73, v91, v88
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v88, v86
	v_div_fmas_f32 v80, v80, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_div_fixup_f32 v22, v73, v48, v22
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v21, v80, v48, v21
	v_div_fmas_f32 v83, v83, v93, v84
	v_fmac_f32_e32 v82, v87, v96
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v86, v88, 1.0
	v_div_scale_f32 v80, null, v48, v48, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v92, v82, v85
	v_div_fixup_f32 v20, v83, v48, v20
	v_fmac_f32_e32 v88, v81, v88
	v_div_scale_f32 v81, null, v48, v48, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v73, v73, v96, v82
	v_div_scale_f32 v84, vcc_lo, v16, v48, v16
	v_rcp_f32_e32 v82, v80
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v73, v48, v18
	v_mul_f32_e32 v89, v84, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v48, v48, v8
	v_div_scale_f32 v90, null, v48, v48, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v89, v84
	v_fma_f32 v73, -v80, v82, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v81, v85, 1.0
	v_rcp_f32_e32 v87, v83
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v89, v93, v88
	v_fmac_f32_e32 v82, v73, v82
	v_div_scale_f32 v73, s8, v15, v48, v15
	v_fmac_f32_e32 v85, v91, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v86, v89, v84
	v_div_scale_f32 v91, s9, v14, v48, v14
	v_fma_f32 v94, -v83, v87, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v90, v92, 1.0
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_mul_f32_e32 v97, v91, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v86, -v81, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v105, v20
	v_cvt_i32_f32_e32 v89, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v94, s10, v8, v48, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v77
	v_and_b32_e32 v77, 15, v105
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v73, v82
	v_fmac_f32_e32 v97, v86, v85
	v_div_fixup_f32 v16, v84, v48, v16
	v_mul_f32_e32 v98, v94, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v80, v95, v73
	v_fma_f32 v81, -v81, v97, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v93, v82
	v_fma_f32 v93, -v83, v98, v94
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v73, -v80, v95, v73
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v93, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v82, v95
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v97
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v15, v73, v48, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v81, v48, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v106, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s11, v7, v48, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v103, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v80, v92
	v_fma_f32 v80, -v83, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v14, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v75
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v82, -v90, v99, v96
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v99
	v_div_fixup_f32 v8, v80, v48, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v7, v82, v48, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v55
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v55, v56
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v69
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v78, v47
	v_cvt_i32_f32_e32 v82, v43
	v_and_b32_e32 v22, 15, v52
	v_and_b32_e32 v52, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v80, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v79, v46
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v20, 15, v48
	v_and_b32_e32 v46, 15, v54
	v_and_b32_e32 v47, 15, v53
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v81, 4, v9
	v_and_b32_e32 v14, 0x1800, v14
	v_lshlrev_b32_e32 v82, 6, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v18, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v83, v42
	v_cvt_i32_f32_e32 v96, v29
	v_cvt_i32_f32_e32 v97, v28
	v_cvt_i32_f32_e32 v98, v27
	v_cvt_i32_f32_e32 v99, v26
	v_cvt_i32_f32_e32 v104, v21
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v21, 15, v51
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v79, 15, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v17, v81, v17
	v_add3_u32 v81, 0, v14, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v16, 15, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v8, 0x1b00, v18, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v88, v37
	v_cvt_i32_f32_e32 v90, v35
	v_cvt_i32_f32_e32 v91, v34
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_cvt_i32_f32_e32 v85, v40
	v_cvt_i32_f32_e32 v86, v39
	v_cvt_i32_f32_e32 v87, v38
	v_cvt_i32_f32_e32 v94, v31
	v_cvt_i32_f32_e32 v100, v25
	v_cvt_i32_f32_e32 v101, v24
	v_cvt_i32_f32_e32 v102, v23
	v_and_b32_e32 v23, 15, v55
	v_and_b32_e32 v24, 15, v56
	v_and_b32_e32 v25, 15, v59
	v_and_b32_e32 v26, 15, v60
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v31, 15, v69
	v_and_b32_e32 v37, 15, v76
	v_and_b32_e32 v38, 15, v71
	v_and_b32_e32 v39, 15, v70
	v_and_b32_e32 v40, 15, v68
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v12, v81, v17, v13
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v7, v8, v10, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v84, v41
	v_cvt_i32_f32_e32 v92, v33
	v_cvt_i32_f32_e32 v93, v32
	v_cvt_i32_f32_e32 v95, v30
	v_and_b32_e32 v28, 15, v64
	v_and_b32_e32 v29, 15, v66
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v34, 15, v74
	v_and_b32_e32 v35, 15, v75
	v_and_b32_e32 v42, 15, v62
	v_and_b32_e32 v43, 15, v61
	v_and_b32_e32 v44, 15, v58
	v_and_b32_e32 v45, 15, v57
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v76, 15, v104
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[20:23]
	ds_store_b128 v12, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v7
	ds_load_b128 v[28:31], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[36:39]
	ds_store_b128 v12, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v7
	ds_load_b128 v[44:47], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[52:55]
	ds_store_b128 v12, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v7
	ds_load_b128 v[60:63], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[68:71]
	ds_store_b128 v12, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v7
	ds_load_b128 v[76:79], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[24:27]
	ds_store_b128 v12, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v7
	ds_load_b128 v[32:35], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v65
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_and_b32_e32 v74, 15, v102
	v_and_b32_e32 v75, 15, v103
	v_and_b32_e32 v49, 15, v49
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v106
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[40:43]
	ds_store_b128 v12, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v7
	ds_load_b128 v[48:51], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[56:59]
	ds_store_b128 v12, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v7
	ds_load_b128 v[64:67], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[72:75]
	ds_store_b128 v12, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v7
	ds_load_b128 v[72:75], v7 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v31, 4, v23
	v_lshl_or_b32 v23, v35, 4, v27
	v_lshl_or_b32 v27, v47, 4, v39
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v47, 3, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, s34, v11
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v8, v28, 4, v20
	v_lshl_or_b32 v20, v32, 4, v24
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s41, 7, v47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v44, 4, v36
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v29, 4, v21
	v_lshl_or_b32 v21, v33, 4, v25
	v_lshl_or_b32 v25, v45, 4, v37
	v_lshl_or_b32 v17, v30, 4, v22
	v_lshl_or_b32 v22, v34, 4, v26
	v_lshl_or_b32 v26, v46, 4, v38
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v48, 4, v40
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v72, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v73, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v74, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v9
	v_mad_u64_u32 v[10:11], null, v9, s8, v[7:8]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[7:8]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[7:8]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v49, 4, v41
	v_lshl_or_b32 v30, v50, 4, v42
	v_lshl_or_b32 v31, v51, 4, v43
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v18.l
	v_and_b16 v4.l, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v7.l, 0xff, v8.l
	v_lshlrev_b16 v7.h, 8, v23.l
	v_and_b16 v8.l, 0xff, v22.l
	v_lshlrev_b16 v8.h, 8, v21.l
	v_and_b16 v9.l, 0xff, v20.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v64, 4, v56
	v_lshl_or_b32 v37, v65, 4, v57
	v_lshl_or_b32 v38, v66, 4, v58
	v_lshl_or_b32 v39, v67, 4, v59
	v_lshl_or_b32 v48, v75, 4, v15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v7.h, 8, v31.l
	v_and_b16 v8.l, 0xff, v30.l
	v_lshlrev_b16 v8.h, 8, v29.l
	v_and_b16 v9.l, 0xff, v28.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v60, 4, v52
	v_lshl_or_b32 v33, v61, 4, v53
	v_lshl_or_b32 v34, v62, 4, v54
	v_lshl_or_b32 v35, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v27.l
	v_and_b16 v4.l, 0xff, v26.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v39.l
	v_and_b16 v8.l, 0xff, v38.l
	v_lshlrev_b16 v8.h, 8, v37.l
	v_and_b16 v9.l, 0xff, v36.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v76, 4, v68
	v_lshl_or_b32 v41, v77, 4, v69
	v_lshl_or_b32 v42, v78, 4, v70
	v_lshl_or_b32 v43, v79, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v7.l, v6.l
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v3.l, 8, v35.l
	v_and_b16 v4.l, 0xff, v34.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	v_or_b16 v11.h, v8.l, v7.h
	v_or_b16 v11.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v48.l
	v_and_b16 v8.l, 0xff, v46.l
	v_lshlrev_b16 v8.h, 8, v45.l
	v_and_b16 v9.l, 0xff, v44.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v43.l
	v_and_b16 v4.l, 0xff, v42.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	v_or_b16 v15.h, v8.l, v7.h
	v_or_b16 v15.l, v9.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v80
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
	v_add_nc_u32_e32 v7, 0, v47
	v_mov_b16_e32 v4.l, v19.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v9, v8, v47
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
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 181
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 181
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14388
; TotalNumSgprs: 45
; NumVgprs: 181
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 181
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     181
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
