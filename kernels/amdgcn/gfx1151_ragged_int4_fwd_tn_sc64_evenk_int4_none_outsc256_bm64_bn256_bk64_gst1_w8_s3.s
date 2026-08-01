	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_dual_mov_b32 v127, v0 :: v_dual_mov_b32 v62, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s41, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v127
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v9, s34, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow560
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v128, 15, v127
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v129, 0xf0, v127
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v113, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s34, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s3
	s_clause 0x1
	s_load_b32 s16, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s17, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[0:1]
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v0, s34, v128
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v110, 0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[2:3]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v2, 32, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v0
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mul_lo_u32 v0, v0, s40
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[4:5]
	v_or_b32_e32 v4, 0x7f0, v127
	v_or_b32_e32 v5, 0xb00, v127
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[6:7]
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v131, 0, v128
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v127, off offset:48
	v_mul_lo_u32 v0, v1, s40
	v_or_b32_e32 v6, 0xf00, v127
	v_or_b32_e32 v7, 0x1300, v127
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v10, s41, 8, v127
	v_mov_b32_e32 v101, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s16, s33
	v_or_b32_e32 v8, 0x1700, v127
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v128, off offset:52
	v_mul_lo_u32 v0, v2, s40
	v_lshrrev_b32_e32 v2, 1, v127
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v15, 2, v129
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v16, 1, v127
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v2, 0x70, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:8
	scratch_store_b32 off, v129, off offset:56
	v_mul_lo_u32 v0, v3, s40
	v_or_b32_e32 v3, 0x3f0, v127
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v132, v131, v2
	v_mov_b32_e32 v95, 0
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v2, 5, v127
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s4, s17, v[10:11]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v127
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v2, 32, v2
	v_mov_b32_e32 v69, 0
	v_or_b32_e32 v13, 0x1b00, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v134, 0, v0
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v0, 0, v3
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v12, 28, v16
	v_add3_u32 v2, 0, v15, v2
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v0, 0, v4
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v144, v2, v12
	v_mov_b32_e32 v125, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	v_or_b32_e32 v14, 0x1f00, v127
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v15, 1, v129
	v_mov_b32_e32 v121, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v145, 0, v15
	v_or_b32_e32 v1, 0x700, v127
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v126, 6, v127
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v133, 0, v127
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v135, 0, v1
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v117, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[12:13], null, s33, 3, v[11:12]
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v0, 0, v14
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_mad_u64_u32 v[13:14], null, s33, 5, v[11:12]
	v_mad_u64_u32 v[14:15], null, s33, 6, v[11:12]
	v_mad_u64_u32 v[15:16], null, s33, 7, v[11:12]
	v_mad_u64_u32 v[16:17], null, s33, 9, v[11:12]
	v_mad_u64_u32 v[17:18], null, s33, 10, v[11:12]
	v_mad_u64_u32 v[18:19], null, s33, 11, v[11:12]
	v_mad_u64_u32 v[19:20], null, s33, 12, v[11:12]
	v_mad_u64_u32 v[20:21], null, s33, 13, v[11:12]
	v_mad_u64_u32 v[21:22], null, s33, 14, v[11:12]
	v_mad_u64_u32 v[22:23], null, s33, 15, v[11:12]
	v_mad_u64_u32 v[23:24], null, s33, 17, v[11:12]
	v_mad_u64_u32 v[24:25], null, s33, 18, v[11:12]
	v_mad_u64_u32 v[25:26], null, s33, 19, v[11:12]
	v_mad_u64_u32 v[26:27], null, s33, 20, v[11:12]
	v_mad_u64_u32 v[27:28], null, s33, 21, v[11:12]
	v_mad_u64_u32 v[28:29], null, s33, 22, v[11:12]
	v_mad_u64_u32 v[29:30], null, s33, 23, v[11:12]
	v_mad_u64_u32 v[30:31], null, s33, 24, v[11:12]
	v_mad_u64_u32 v[31:32], null, s33, 25, v[11:12]
	v_mad_u64_u32 v[32:33], null, s33, 26, v[11:12]
	v_mad_u64_u32 v[33:34], null, s33, 27, v[11:12]
	v_mad_u64_u32 v[34:35], null, s33, 28, v[11:12]
	v_mad_u64_u32 v[35:36], null, s33, 29, v[11:12]
	v_mad_u64_u32 v[36:37], null, s33, 30, v[11:12]
	v_mad_u64_u32 v[37:38], null, s33, 31, v[11:12]
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v62, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s3, s7
	s_mov_b32 s16, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s43, s40, s17
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_mov_b32 s44, s16
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s45, s44, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v126
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0x80000000, v0, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 4, v126
	v_or_b32_e32 v0, s45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	v_cndmask_b32_e64 v6, 0x80000000, v0, s2
	v_or_b32_e32 v0, 8, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, 0x80000000, v0, s2
	v_or_b32_e32 v0, 12, v126
	v_or_b32_e32 v0, s45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	v_cndmask_b32_e64 v38, 0x80000000, v0, s2
	v_or_b32_e32 v0, 16, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0x80000000, v0, s2
	v_or_b32_e32 v0, 20, v126
	v_or_b32_e32 v0, s45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	v_cndmask_b32_e64 v44, 0x80000000, v0, s2
	v_or_b32_e32 v0, 24, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s45, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0x80000000, v0, s2
	v_or_b32_e32 v0, 28, v126
	v_or_b32_e32 v0, s45, v0
	s_mul_i32 s45, s45, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v47, s45, v28
	v_mad_u64_u32 v[0:1], null, v0, s42, v[9:10]
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v128, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v29
	v_cndmask_b32_e64 v46, 0x80000000, v0, s2
	v_add_nc_u32_e32 v0, s45, v11
	buffer_load_u8 v129, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v30
	buffer_load_u8 v1, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v0, s33, v11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v136, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v31
	v_add_nc_u32_e32 v0, s45, v0
	buffer_load_u8 v137, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v32
	buffer_load_u8 v2, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 1, v11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v138, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v33
	v_add_nc_u32_e32 v0, s45, v0
	buffer_load_u8 v139, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v34
	buffer_load_u8 v3, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v12
	buffer_load_u8 v140, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v35
	buffer_load_u8 v4, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 2, v11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v141, v47, s[8:11], 0 offen
	v_add_nc_u32_e32 v47, s45, v36
	v_add_nc_u32_e32 v0, s45, v0
	s_clause 0x1
	buffer_load_u8 v142, v47, s[8:11], 0 offen
	buffer_load_u8 v8, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v13
	v_add_nc_u32_e32 v47, s45, v37
	buffer_load_u8 v130, v47, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	buffer_load_u8 v38, v38, s[28:31], 0 offen
	buffer_load_u8 v39, v39, s[28:31], 0 offen
	buffer_load_u8 v44, v44, s[28:31], 0 offen
	buffer_load_u8 v45, v45, s[28:31], 0 offen
	buffer_load_u8 v46, v46, s[28:31], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v40, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v14
	buffer_load_u8 v41, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v15
	buffer_load_u8 v42, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 3, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v43, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v16
	buffer_load_u8 v48, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v17
	buffer_load_u8 v49, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v18
	buffer_load_u8 v58, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v19
	buffer_load_u8 v57, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v20
	buffer_load_u8 v59, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v21
	buffer_load_u8 v191, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v22
	buffer_load_u8 v245, v0, s[8:11], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v0, s33, 4, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v254, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v23
	buffer_load_u8 v255, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v24
	buffer_load_u8 v61, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v25
	buffer_load_u8 v127, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v26
	buffer_load_u8 v60, v0, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, s45, v27
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s45, s44, s43
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s45, s45, s33
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(24)
	ds_store_b8 v133, v5
	s_waitcnt vmcnt(23)
	ds_store_b8 v133, v6 offset:256
	s_waitcnt vmcnt(22)
	ds_store_b8 v133, v7 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v134, v38
	s_waitcnt vmcnt(20)
	ds_store_b8 v133, v39 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b8 v133, v44 offset:1280
	s_waitcnt vmcnt(18)
	ds_store_b8 v133, v45 offset:1536
	s_waitcnt vmcnt(17)
	ds_store_b8 v135, v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v143, off, off offset:16 ; 4-byte Folded Reload
	ds_load_u8 v5, v131 offset:320
	ds_load_u8 v6, v131 offset:256
	s_waitcnt vmcnt(0)
	ds_load_u8 v190, v143
	ds_load_u8 v220, v131 offset:944
	ds_load_u8 v221, v131 offset:880
	ds_load_u8 v222, v131 offset:816
	ds_load_u8 v223, v131 offset:752
	ds_load_u8 v224, v131 offset:688
	ds_load_u8 v225, v131 offset:624
	ds_load_u8 v226, v131 offset:560
	ds_load_u8 v227, v131 offset:1264
	ds_load_u8 v228, v131 offset:1200
	ds_load_u8 v229, v131 offset:1136
	ds_load_u8 v230, v131 offset:1072
	ds_load_u8 v232, v131 offset:1520
	ds_load_u8 v233, v131 offset:1456
	ds_load_u8 v234, v131 offset:1392
	ds_load_u8 v235, v131 offset:1328
	scratch_load_b32 v143, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v131 offset:448
	ds_load_u8 v7, v131 offset:384
	s_waitcnt vmcnt(0)
	ds_load_u8 v236, v143
	ds_load_u8 v237, v131 offset:1968
	ds_load_u8 v238, v131 offset:1904
	ds_load_u8 v239, v131 offset:1840
	ds_load_u8 v240, v131 offset:1776
	ds_load_u8 v241, v131 offset:1712
	ds_load_u8 v242, v131 offset:1648
	ds_load_u8 v243, v131 offset:1584
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v131 offset:64
	ds_load_u8 v38, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v38, v7, 0xc0c0004
	ds_load_u8 v38, v131 offset:192
	ds_load_u8 v39, v131 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_lshl_or_b32 v39, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v38, 16, v7
	ds_load_u8 v246, v131 offset:704
	ds_load_u8 v247, v131 offset:640
	ds_load_u8 v248, v131 offset:576
	ds_load_u8 v249, v131 offset:512
	ds_load_u8 v250, v131 offset:960
	ds_load_u8 v251, v131 offset:896
	ds_load_u8 v252, v131 offset:832
	ds_load_u8 v253, v131 offset:768
	ds_load_u8 v44, v131 offset:1216
	ds_load_u8 v45, v131 offset:1152
	ds_load_u8 v50, v131 offset:1088
	ds_load_u8 v51, v131 offset:1024
	ds_load_u8 v55, v131 offset:1472
	ds_load_u8 v56, v131 offset:1408
	ds_load_u8 v188, v131 offset:1344
	ds_load_u8 v192, v131 offset:1280
	ds_load_u8 v5, v131 offset:1728
	ds_load_u8 v6, v131 offset:1664
	ds_load_u8 v7, v131 offset:1600
	ds_load_u8 v46, v131 offset:1536
	ds_load_u8 v47, v131 offset:1984
	ds_load_u8 v52, v131 offset:1920
	ds_load_u8 v53, v131 offset:1856
	ds_load_u8 v54, v131 offset:1792
	ds_load_u8 v146, v131 offset:208
	ds_load_u8 v147, v131 offset:144
	ds_load_u8 v148, v131 offset:80
	ds_load_u8 v149, v131 offset:464
	ds_load_u8 v150, v131 offset:400
	ds_load_u8 v205, v131 offset:336
	ds_load_u8 v208, v131 offset:272
	ds_load_u8 v193, v131 offset:720
	ds_load_u8 v194, v131 offset:656
	ds_load_u8 v197, v131 offset:592
	ds_load_u8 v199, v131 offset:528
	ds_load_u8 v203, v131 offset:976
	ds_load_u8 v206, v131 offset:912
	ds_load_u8 v211, v131 offset:848
	ds_load_u8 v213, v131 offset:784
	ds_load_u8 v196, v131 offset:1232
	ds_load_u8 v198, v131 offset:1168
	ds_load_u8 v201, v131 offset:1104
	ds_load_u8 v204, v131 offset:1040
	ds_load_u8 v209, v131 offset:1488
	ds_load_u8 v212, v131 offset:1424
	ds_load_u8 v215, v131 offset:1360
	ds_load_u8 v217, v131 offset:1296
	ds_load_u8 v200, v131 offset:1744
	ds_load_u8 v202, v131 offset:1680
	ds_load_u8 v207, v131 offset:1616
	ds_load_u8 v210, v131 offset:1552
	ds_load_u8 v214, v131 offset:2000
	ds_load_u8 v216, v131 offset:1936
	ds_load_u8 v218, v131 offset:1872
	ds_load_u8 v219, v131 offset:1808
	ds_load_u8 v156, v131 offset:224
	ds_load_u8 v157, v131 offset:160
	ds_load_u8 v158, v131 offset:96
	ds_load_u8 v159, v131 offset:480
	ds_load_u8 v160, v131 offset:416
	ds_load_u8 v174, v131 offset:352
	ds_load_u8 v177, v131 offset:288
	ds_load_u8 v163, v131 offset:736
	ds_load_u8 v164, v131 offset:672
	ds_load_u8 v166, v131 offset:608
	ds_load_u8 v168, v131 offset:544
	ds_load_u8 v172, v131 offset:992
	ds_load_u8 v175, v131 offset:928
	ds_load_u8 v180, v131 offset:864
	ds_load_u8 v182, v131 offset:800
	ds_load_u8 v165, v131 offset:1248
	ds_load_u8 v167, v131 offset:1184
	ds_load_u8 v170, v131 offset:1120
	ds_load_u8 v173, v131 offset:1056
	ds_load_u8 v178, v131 offset:1504
	ds_load_u8 v181, v131 offset:1440
	ds_load_u8 v184, v131 offset:1376
	ds_load_u8 v186, v131 offset:1312
	ds_load_u8 v169, v131 offset:1760
	ds_load_u8 v171, v131 offset:1696
	ds_load_u8 v176, v131 offset:1632
	ds_load_u8 v179, v131 offset:1568
	ds_load_u8 v183, v131 offset:2016
	ds_load_u8 v185, v131 offset:1952
	ds_load_u8 v187, v131 offset:1888
	ds_load_u8 v189, v131 offset:1824
	ds_load_u8 v151, v131 offset:240
	ds_load_u8 v152, v131 offset:176
	ds_load_u8 v153, v131 offset:112
	ds_load_u8 v154, v131 offset:496
	ds_load_u8 v155, v131 offset:432
	ds_load_u8 v161, v131 offset:368
	ds_load_u8 v162, v131 offset:304
	ds_load_u8 v244, v131 offset:16
	ds_load_u8 v231, v131 offset:32
	ds_load_u8 v195, v131 offset:48
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v133, v1
	ds_store_b8 v133, v2 offset:256
	ds_store_b8 v133, v3 offset:512
	ds_store_b8 v134, v4
	ds_store_b8 v133, v8 offset:1024
	ds_store_b8 v133, v40 offset:1280
	ds_store_b8 v133, v41 offset:1536
	ds_store_b8 v135, v42
	ds_store_b8 v133, v43 offset:2048
	ds_store_b8 v133, v48 offset:2304
	ds_store_b8 v133, v49 offset:2560
	scratch_load_b32 v1, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v58
	ds_store_b8 v133, v57 offset:3072
	ds_store_b8 v133, v59 offset:3328
	ds_store_b8 v133, v191 offset:3584
	scratch_load_b32 v1, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v154, v155, v154, 0xc0c0004
	v_perm_b32 v153, v195, v153, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v155, v222, v221, 0xc0c0004
	v_perm_b32 v162, v230, v229, 0xc0c0004
	v_lshl_or_b32 v152, v154, 16, v161
	v_perm_b32 v154, v224, v223, 0xc0c0004
	v_lshl_or_b32 v151, v151, 16, v153
	v_perm_b32 v153, v226, v225, 0xc0c0004
	v_perm_b32 v161, v220, v190, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v245
	ds_store_b8 v133, v254 offset:4096
	ds_store_b8 v133, v255 offset:4352
	ds_store_b8 v133, v61 offset:4608
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v153, v154, 16, v153
	v_lshl_or_b32 v154, v161, 16, v155
	v_perm_b32 v155, v235, v234, 0xc0c0004
	v_perm_b32 v161, v233, v232, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v127
	ds_store_b8 v133, v60 offset:5120
	ds_store_b8 v133, v0 offset:5376
	ds_store_b8 v133, v128 offset:5632
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v129
	ds_store_b8 v133, v136 offset:6144
	ds_store_b8 v133, v137 offset:6400
	ds_store_b8 v133, v138 offset:6656
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v129, v199, v197, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v139
	ds_store_b8 v133, v140 offset:7168
	ds_store_b8 v133, v141 offset:7424
	ds_store_b8 v133, v142 offset:7680
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v132 offset:1280
	ds_load_u8 v1, v132 offset:1024
	v_perm_b32 v130, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v132 offset:1792
	ds_load_u8 v2, v132 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v132 offset:256
	ds_load_u8 v3, v132
	v_lshl_or_b32 v41, v1, 16, v0
	v_perm_b32 v0, v253, v252, 0xc0c0004
	v_perm_b32 v1, v251, v250, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v1, 16, v0
	ds_load_u8 v0, v132 offset:3328
	ds_load_u8 v1, v132 offset:3072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v132 offset:768
	ds_load_u8 v4, v132 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v3, 16, v2
	v_perm_b32 v2, v249, v248, 0xc0c0004
	v_perm_b32 v3, v247, v246, 0xc0c0004
	v_lshl_or_b32 v48, v3, 16, v2
	ds_load_u8 v1, v132 offset:3840
	ds_load_u8 v2, v132 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v132 offset:2304
	ds_load_u8 v3, v132 offset:2048
	v_lshl_or_b32 v43, v1, 16, v0
	v_perm_b32 v0, v192, v188, 0xc0c0004
	v_perm_b32 v1, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v132 offset:2816
	ds_load_u8 v4, v132 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v3, 16, v2
	v_perm_b32 v2, v51, v50, 0xc0c0004
	v_lshl_or_b32 v51, v1, 16, v0
	ds_load_u8 v0, v132 offset:5376
	ds_load_u8 v1, v132 offset:5120
	v_perm_b32 v3, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v3, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v132 offset:5888
	ds_load_u8 v2, v132 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v132 offset:4352
	ds_load_u8 v3, v132 offset:4096
	v_lshl_or_b32 v45, v1, 16, v0
	v_perm_b32 v0, v54, v53, 0xc0c0004
	v_perm_b32 v1, v52, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v1, 16, v0
	ds_load_u8 v0, v132 offset:7424
	ds_load_u8 v1, v132 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v132 offset:4864
	ds_load_u8 v4, v132 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v3, 16, v2
	v_perm_b32 v2, v46, v7, 0xc0c0004
	v_perm_b32 v3, v6, v5, 0xc0c0004
	v_lshl_or_b32 v52, v3, 16, v2
	ds_load_u8 v1, v132 offset:7936
	ds_load_u8 v2, v132 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v132 offset:6400
	ds_load_u8 v3, v132 offset:6144
	v_lshl_or_b32 v47, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v132 offset:6912
	ds_load_u8 v4, v132 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v3, 16, v2
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_wmma_i32_16x16x16_iu4 v[54:61], v[40:41], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[42:43], v[48:49], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[44:45], v[50:51], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[46:47], v[52:53], v[54:61] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v249, v54
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v132 offset:1408
	ds_load_u8 v54, v132 offset:1152
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v248, v55
	v_cvt_f32_i32_e32 v247, v56
	v_cvt_f32_i32_e32 v246, v57
	v_cvt_f32_i32_e32 v245, v58
	v_cvt_f32_i32_e32 v192, v59
	v_cvt_f32_i32_e32 v191, v60
	v_cvt_f32_i32_e32 v188, v61
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v54, v0, 0xc0c0004
	ds_load_u8 v54, v132 offset:1920
	ds_load_u8 v55, v132 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v132 offset:384
	ds_load_u8 v56, v132 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v56, v55, 0xc0c0004
	ds_load_u8 v55, v132 offset:896
	ds_load_u8 v57, v132 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v55, 0xc0c0004
	v_lshl_or_b32 v55, v54, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v54, v57, 16, v56
	ds_load_u8 v0, v132 offset:3456
	ds_load_u8 v56, v132 offset:3200
	v_wmma_i32_16x16x16_iu4 v[136:143], v[54:55], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v56, v0, 0xc0c0004
	ds_load_u8 v56, v132 offset:3968
	ds_load_u8 v57, v132 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v132 offset:2432
	ds_load_u8 v58, v132 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v57, 0xc0c0004
	ds_load_u8 v57, v132 offset:2944
	ds_load_u8 v59, v132 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v57, 0xc0c0004
	v_lshl_or_b32 v57, v56, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v56, v59, 16, v58
	ds_load_u8 v0, v132 offset:5504
	ds_load_u8 v58, v132 offset:5248
	v_wmma_i32_16x16x16_iu4 v[136:143], v[56:57], v[48:49], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	ds_load_u8 v58, v132 offset:6016
	ds_load_u8 v59, v132 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v132 offset:4480
	ds_load_u8 v60, v132 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v60, v59, 0xc0c0004
	ds_load_u8 v59, v132 offset:4992
	ds_load_u8 v61, v132 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v61, v59, 0xc0c0004
	v_lshl_or_b32 v59, v58, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v58, v61, 16, v60
	ds_load_u8 v0, v132 offset:7552
	ds_load_u8 v60, v132 offset:7296
	v_wmma_i32_16x16x16_iu4 v[136:143], v[58:59], v[50:51], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v60, v0, 0xc0c0004
	ds_load_u8 v60, v132 offset:8064
	ds_load_u8 v61, v132 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v132 offset:6528
	ds_load_u8 v127, v132 offset:6272
	v_lshl_or_b32 v251, v60, 16, v0
	v_perm_b32 v60, v150, v149, 0xc0c0004
	v_perm_b32 v149, v164, v163, 0xc0c0004
	v_perm_b32 v150, v173, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v127, v61, 0xc0c0004
	ds_load_u8 v127, v132 offset:7040
	ds_load_u8 v128, v132 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_perm_b32 v128, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v250, v127, 16, v61
	v_perm_b32 v127, v244, v148, 0xc0c0004
	v_perm_b32 v148, v168, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[136:143], v[250:251], v[52:53], v[136:143] neg_lo:[1,1,0]
	v_perm_b32 v53, v208, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v48, v136
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v61, v60, 16, v53
	v_lshl_or_b32 v60, v128, 16, v127
	v_perm_b32 v53, v213, v211, 0xc0c0004
	v_perm_b32 v127, v206, v203, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v52, v137
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v136, v204, v201, 0xc0c0004
	v_perm_b32 v137, v198, v196, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v51, v138
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v128, v127, 16, v53
	v_lshl_or_b32 v127, v130, 16, v129
	v_perm_b32 v53, v217, v215, 0xc0c0004
	v_perm_b32 v129, v212, v209, 0xc0c0004
	v_perm_b32 v138, v202, v200, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v141
	v_cvt_f32_i32_e32 v38, v142
	v_cvt_f32_i32_e32 v39, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v130, v129, 16, v53
	v_lshl_or_b32 v129, v137, 16, v136
	v_perm_b32 v53, v219, v218, 0xc0c0004
	v_perm_b32 v136, v216, v214, 0xc0c0004
	v_perm_b32 v137, v210, v207, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v50, v139
	v_cvt_f32_i32_e32 v49, v140
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[196:203], v[54:55], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v136, 16, v53
	v_lshl_or_b32 v146, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[136:143], v[40:41], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[196:203], v[56:57], v[127:128], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[42:43], v[127:128], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[196:203], v[58:59], v[129:130], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[44:45], v[129:130], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[196:203], v[250:251], v[146:147], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[46:47], v[146:147], v[136:143] neg_lo:[1,1,0]
	v_perm_b32 v146, v157, v156, 0xc0c0004
	v_perm_b32 v156, v167, v165, 0xc0c0004
	v_perm_b32 v157, v171, v169, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v60, v202
	v_cvt_f32_i32_e32 v194, v137
	v_cvt_f32_i32_e32 v204, v138
	v_cvt_f32_i32_e32 v205, v139
	v_cvt_f32_i32_e32 v139, v141
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v137, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v141, v177, v174, 0xc0c0004
	v_perm_b32 v142, v160, v159, 0xc0c0004
	v_perm_b32 v143, v231, v158, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v193, v136
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v128, v196
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v142, v142, 16, v141
	v_lshl_or_b32 v141, v146, 16, v143
	v_perm_b32 v143, v182, v180, 0xc0c0004
	v_perm_b32 v146, v175, v172, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v197
	v_cvt_f32_i32_e32 v130, v198
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[163:170], v[40:41], v[141:142], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v147, v146, 16, v143
	v_lshl_or_b32 v146, v149, 16, v148
	v_perm_b32 v143, v186, v184, 0xc0c0004
	v_perm_b32 v148, v181, v178, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v199
	v_cvt_f32_i32_e32 v53, v201
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[163:170], v[42:43], v[146:147], v[163:170] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v61, v203
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v149, v148, 16, v143
	v_lshl_or_b32 v148, v156, 16, v150
	v_perm_b32 v143, v189, v187, 0xc0c0004
	v_perm_b32 v150, v185, v183, 0xc0c0004
	v_perm_b32 v156, v179, v176, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v200
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[163:170], v[44:45], v[148:149], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v172, v150, 16, v143
	v_lshl_or_b32 v171, v157, 16, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[163:170], v[46:47], v[171:172], v[163:170] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v173, v164
	v_cvt_f32_i32_e32 v174, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v175, v166
	v_cvt_f32_i32_e32 v160, v167
	v_cvt_f32_i32_e32 v159, v168
	v_cvt_f32_i32_e32 v158, v169
	v_cvt_f32_i32_e32 v157, v170
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[163:170], v[54:55], v[141:142], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[163:170], v[56:57], v[146:147], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[163:170], v[58:59], v[148:149], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[163:170], v[250:251], v[171:172], v[163:170] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v163
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v163, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v169
	v_cvt_f32_i32_e32 v146, v170
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v170, v161, 16, v155
	v_perm_b32 v155, v243, v242, 0xc0c0004
	v_lshl_or_b32 v169, v163, 16, v162
	v_perm_b32 v161, v241, v240, 0xc0c0004
	v_perm_b32 v162, v239, v238, 0xc0c0004
	v_perm_b32 v163, v237, v236, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v141, v168
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v150, v165
	v_cvt_f32_i32_e32 v149, v166
	v_cvt_f32_i32_e32 v147, v167
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v171, v161, 16, v155
	v_lshl_or_b32 v172, v163, 16, v162
	v_wmma_i32_16x16x16_iu4 v[161:168], v[40:41], v[151:152], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[42:43], v[153:154], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[44:45], v[169:170], v[161:168] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[46:47], v[171:172], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[54:55], v[151:152], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v1, off, off
	scratch_load_b32 v2, off, off offset:4
	scratch_load_b32 v3, off, off offset:8
	scratch_load_b32 v4, off, off offset:12
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[40:47], v[56:57], v[153:154], v[40:47] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v161
	v_cvt_f32_i32_e32 v161, v162
	v_cvt_f32_i32_e32 v162, v163
	v_cvt_f32_i32_e32 v163, v164
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[40:47], v[58:59], v[169:170], v[40:47] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v165
	v_cvt_f32_i32_e32 v165, v166
	v_cvt_f32_i32_e32 v166, v167
	v_cvt_f32_i32_e32 v167, v168
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[40:47], v[250:251], v[171:172], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v5, v40
	v_cvt_f32_i32_e32 v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v44, v10, s45, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v8, v47
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v1, s44, v1, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v2, s44, v2, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, s44, v3, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s44, v4, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s44, s44, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v45, v2, s[12:15], 0 offen
	buffer_load_u16 v46, v3, s[12:15], 0 offen
	buffer_load_u16 v47, v4, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s44, s40
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v2, 16, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v144, v2
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v44, 16, v1
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v145
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v54, v44, v249 :: v_dual_mul_f32 v5, v5, v47
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v125, v54, v1 :: v_dual_mul_f32 v54, v44, v248
	v_fmac_f32_e32 v124, v54, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v44, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v54, v3 :: v_dual_mul_f32 v54, v44, v246
	v_fmac_f32_e32 v122, v54, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v45, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v109, v54, v1 :: v_dual_mul_f32 v54, v45, v194
	v_fmac_f32_e32 v108, v54, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v45, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v107, v54, v3 :: v_dual_mul_f32 v54, v45, v205
	v_fmac_f32_e32 v106, v54, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v54, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v54, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v54, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v175
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v54, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v47, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v54, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v47, v161
	v_mul_f32_e32 v54, v44, v245
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v1, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v47, v162
	v_mul_f32_e32 v7, v7, v47
	v_mul_f32_e32 v43, v47, v43
	v_mul_f32_e32 v8, v8, v47
	v_mul_f32_e32 v6, v6, v47
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v1, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v47, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v1, v4
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[1:4], v145 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v121, v54, v1 :: v_dual_mul_f32 v54, v44, v192
	v_fmac_f32_e32 v120, v54, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v44, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v119, v54, v3 :: v_dual_mul_f32 v54, v44, v188
	v_fmac_f32_e32 v118, v54, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v45, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v105, v54, v1 :: v_dual_mul_f32 v54, v45, v139
	v_fmac_f32_e32 v104, v54, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v45, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v103, v54, v3 :: v_dual_mul_f32 v54, v45, v137
	v_fmac_f32_e32 v102, v54, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v54, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v54, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v54, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v46, v157
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v54, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v47, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v54, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v47, v165
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v1, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v1, v47, v166 :: v_dual_mul_f32 v48, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v1, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v47, v167
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v1, v4
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[1:4], v145 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v110, v48, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v48, v44, v52 :: v_dual_fmac_f32 v69, v5, v1
	v_mul_f32_e32 v5, v38, v44
	v_dual_mul_f32 v38, v39, v44 :: v_dual_mul_f32 v39, v44, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v48, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v44, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v48, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v44, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v48, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v128, v45
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v48, v1 :: v_dual_mul_f32 v48, v45, v136
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v49, v146, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v48, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v45, v130
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v99, v48, v3 :: v_dual_mul_f32 v48, v45, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v48, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v148, v46
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v48, v1 :: v_dual_mul_f32 v48, v46, v156
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v1, v47, v40 :: v_dual_mul_f32 v40, v53, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v48, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v46, v150
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v68, v1, v2 :: v_dual_mul_f32 v1, v47, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v41, v60, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v83, v48, v3 :: v_dual_mul_f32 v48, v46, v149
	v_fmac_f32_e32 v67, v1, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v1, v47, v42 :: v_dual_mul_f32 v42, v61, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v48, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v48, v142, v46
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v1, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v44
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[0:3], v145 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v44, v45, v127
	v_dual_mul_f32 v45, v141, v46 :: v_dual_mul_f32 v46, v46, v147
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v114, v39, v0 :: v_dual_fmac_f32 v113, v4, v1
	v_dual_fmac_f32 v112, v5, v2 :: v_dual_fmac_f32 v111, v38, v3
	v_fmac_f32_e32 v97, v44, v0
	v_dual_fmac_f32 v96, v40, v1 :: v_dual_fmac_f32 v95, v41, v2
	v_fmac_f32_e32 v94, v42, v3
	v_dual_fmac_f32 v81, v46, v0 :: v_dual_fmac_f32 v80, v45, v1
	v_dual_fmac_f32 v79, v48, v2 :: v_dual_fmac_f32 v78, v49, v3
	v_dual_fmac_f32 v62, v43, v0 :: v_dual_fmac_f32 v65, v6, v1
	v_dual_fmac_f32 v64, v7, v2 :: v_dual_fmac_f32 v63, v8, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v127, off, off offset:48
	scratch_load_b32 v128, off, off offset:52
	scratch_load_b32 v129, off, off offset:56
	v_mov_b32_e32 v3, v9
.LBB0_7:                                ; %._crit_edge
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v124|, |v124|
	v_max_f32_e64 v1, |v125|, |v125|
	v_max3_f32 v2, |v122|, |v121|, |v120|
	v_max3_f32 v4, |v117|, |v116|, |v115|
	v_max3_f32 v5, |v114|, |v113|, |v112|
	v_max_f32_e64 v6, |v109|, |v109|
	v_max_f32_e32 v0, v1, v0
	v_max_f32_e64 v1, |v108|, |v108|
	v_max3_f32 v9, |v100|, |v99|, |v98|
	v_max3_f32 v4, v4, v5, |v111|
	v_max_f32_e64 v5, |v93|, |v93|
	v_max3_f32 v10, |v97|, |v96|, |v95|
	v_max_f32_e32 v1, v6, v1
	v_max3_f32 v0, v0, |v123|, v2
	v_max_f32_e64 v2, |v92|, |v92|
	v_max3_f32 v6, |v106|, |v105|, |v104|
	v_max3_f32 v11, |v84|, |v83|, |v82|
	v_max3_f32 v12, |v81|, |v80|, |v79|
	v_max3_f32 v7, |v119|, |v118|, |v110|
	s_waitcnt vmcnt(2)
	v_dual_max_f32 v2, v5, v2 :: v_dual_and_b32 v13, 3, v127
	v_max3_f32 v5, |v90|, |v89|, |v88|
	v_max3_f32 v8, |v103|, |v102|, |v101|
	v_max3_f32 v1, v1, |v107|, v6
	v_max3_f32 v6, v9, v10, |v94|
	v_max3_f32 v9, |v87|, |v86|, |v85|
	v_max3_f32 v2, v2, |v91|, v5
	v_max3_f32 v5, v11, v12, |v78|
	v_max_f32_e64 v10, |v76|, |v76|
	v_max_f32_e64 v11, |v77|, |v77|
	v_max3_f32 v0, v0, v7, v4
	v_max3_f32 v1, v1, v8, v6
	v_max3_f32 v2, v2, v9, v5
	v_max3_f32 v5, |v74|, |v73|, |v72|
	v_max_f32_e32 v4, v11, v10
	v_max3_f32 v7, |v68|, |v67|, |v66|
	v_max3_f32 v8, |v62|, |v65|, |v64|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v6, |v71|, |v70|, |v69|
	v_max3_f32 v4, v4, |v75|, v5
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v5, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, v7, v8, |v63|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v9, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_and_b32 v14, 0x80, v127
	v_max3_f32 v4, v4, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v8, v9, v9 :: v_dual_max_f32 v11, v10, v10
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v6, 5, v13
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v1, v8 :: v_dual_max_f32 v11, v2, v11
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 4, v127
	v_lshl_add_u32 v2, v13, 9, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_lshlrev_b32 v5, 4, v127
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v8, 0x60, v127
	v_and_b32_e32 v15, 8, v127
	v_lshl_add_u32 v2, v1, 2, v2
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v4, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v5, 0x680, v5, v6
	v_lshlrev_b32_e32 v7, 1, v14
	v_xor_b32_e32 v16, v6, v8
	v_lshl_add_u32 v2, v15, 4, v2
	v_lshrrev_b32_e32 v17, 3, v14
	v_xor_b32_e32 v5, v5, v8
	v_lshl_add_u32 v18, v1, 6, 0
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v2, v7, v16
	s_barrier
.Ltmp17:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s25, 0xffff
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v18, v17, v5
	s_mov_b32 s15, 0x31027000
	ds_store_b128 v0, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s14, 0x7ffffffe
	v_mov_b32_e32 v0, v9
	v_dual_mov_b32 v2, v10 :: v_dual_max_f32 v5, v9, v9
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v10, v10 :: v_dual_max_f32 v10, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v4, v11
	v_add_nc_u32_e32 v14, 0, v14
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_lshlrev_b32 v15, 3, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v5, v0
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v11, v11
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v11, v0 :: v_dual_max_f32 v2, v9, v2
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v12, v12
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v5, v4 :: v_dual_max_f32 v5, v10, v9
	v_max_f32_e32 v0, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v9, v4 :: v_dual_mov_b32 v12, v2
	v_mov_b32_e32 v11, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v9 :: v_dual_max_f32 v9, v11, v11
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v16, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v0, v9
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v10, v10, v10
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v16, 1, v8
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v5, v5, v10
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 5, v1
	v_lshl_add_u32 v1, v13, 4, 0
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v12 :: v_dual_mov_b32 v17, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v1, v0, v15
	v_mov_b32_e32 v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v12, v12
	v_max_f32_e32 v10, v2, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v17, v17
	v_max_f32_e32 v12, v5, v2
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v14, v16, v15
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v5, 4, v129
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v2, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v0
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 16, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v9, v9 :: v_dual_max_f32 v11, v11, v11
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v19, v10, v10 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v11, 0x2b8cbccc, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v19, 0x2b8cbccc, v19
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v17, vcc_lo, v2, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v15, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v20, v18
	v_fma_f32 v13, -v4, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v13, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s0, s34, v9
	v_add_co_ci_u32_e64 v14, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v21, v17, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s0, s34, v16
	v_add_co_ci_u32_e64 v10, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v16, -v4, v21, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v12, v12
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v19
	v_fmac_f32_e32 v21, v16, v15
	v_fma_f32 v1, -v18, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v16, 0x2b8cbccc, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[13:14]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v0, -v4, v21, v17
	v_rcp_f32_e32 v17, v12
	v_fmac_f32_e32 v20, v1, v20
	v_div_scale_f32 v1, s7, v11, 0x40e00000, v11
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v16
	v_div_fmas_f32 v0, v0, v15, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v4, v1, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v15, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v12, v17, 1.0
	s_mov_b32 vcc_lo, s7
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[9:10]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v17, v13, v17
	v_div_scale_f32 v13, s8, v19, 0x40e00000, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v22, v15, 1.0
	v_mul_f32_e32 v23, v13, v17
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	v_fma_f32 v2, -v18, v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v15, v21, v15
	v_div_scale_f32 v21, s9, v16, 0x40e00000, v16
	v_fma_f32 v9, -v12, v23, v13
	v_fmac_f32_e32 v4, v2, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v14.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v10, v21, v15
	v_fmac_f32_e32 v23, v9, v17
	v_fma_f32 v1, -v18, v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v18, v1, v20, v4
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v0, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v22, v10, v21
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v18, 0x40e00000, v11
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v12, v23, v13
	v_fmac_f32_e32 v10, v2, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v12, null, v27, v27, v125
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v11, v17, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v22, v10, v21
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v11, v12
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v9.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v19
	v_div_fmas_f32 v10, v13, v15, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[0:1]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v13, null, v27, v27, v124
	v_div_scale_f32 v20, null, v27, v27, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v12, v11, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v9, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v18, v13
	v_div_scale_f32 v19, null, v27, v27, v123
	v_fmac_f32_e32 v11, v17, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v10, 0x40e00000, v16
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v2.h
	v_mov_b16_e32 v16.h, v14.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v17, vcc_lo, v125, v27, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v10.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v21, s9, v124, v27, v124
	v_dual_mul_f32 v15, v17, v11 :: v_dual_and_b32 v0, 1, v16
	v_fma_f32 v16, -v13, v18, 1.0
	v_div_scale_f32 v25, null, v27, v27, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v12, v15, v17
	v_div_scale_f32 v26, null, v27, v27, v120
	v_div_scale_f32 v30, null, v27, v27, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v0, v11
	v_rcp_f32_e32 v0, v20
	v_rcp_f32_e32 v28, v26
	v_div_scale_f32 v33, null, v27, v27, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v12, v15, v17
	v_div_scale_f32 v35, null, v27, v27, v113
	v_div_scale_f32 v36, null, v27, v27, v112
	v_div_fmas_f32 v11, v12, v11, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v20, v0, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v37, null, v27, v27, v111
	v_dual_fmac_f32 v0, v24, v0 :: v_dual_and_b32 v41, 0xffff0000, v9
	v_fmac_f32_e32 v18, v16, v18
	v_rcp_f32_e32 v16, v19
	v_div_scale_f32 v24, s11, v122, v27, v122
	v_rcp_f32_e32 v38, v37
	v_div_fixup_f32 v11, v11, v27, v125
	v_div_scale_f32 v45, null, v41, v41, v102
	v_div_scale_f32 v46, null, v41, v41, v101
	v_div_scale_f32 v52, null, v41, v41, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v19, v16, 1.0
	v_div_scale_f32 v54, null, v41, v41, v94
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v23, 0xffff0000, v1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v16, v22, v16
	v_div_scale_f32 v22, s10, v123, v27, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v56, null, v23, v23, v91
	v_div_scale_f32 v57, null, v23, v23, v90
	v_dual_mul_f32 v15, v22, v16 :: v_dual_and_b32 v14, 1, v14
	v_div_scale_f32 v61, null, v23, v23, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v57
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s34, v5
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v10, v14, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v14, v21, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v13, v14, v21
	v_fmac_f32_e32 v14, v17, v18
	v_rcp_f32_e32 v17, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v12, -v13, v14, v21
	v_fma_f32 v13, -v19, v15, v22
	v_mul_f32_e32 v21, v24, v0
	v_fma_f32 v29, -v25, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v13, v16
	v_fma_f32 v13, -v20, v21, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v29, v17
	v_fma_f32 v19, -v19, v15, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v21, v13, v0
	v_div_fmas_f32 v12, v12, v18, v14
	v_div_scale_f32 v18, s9, v121, v27, v121
	v_fma_f32 v14, -v26, v28, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v29, s12, v120, v27, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v22, v18, v17
	v_fmac_f32_e32 v28, v14, v28
	v_div_fmas_f32 v13, v19, v16, v15
	v_rcp_f32_e32 v19, v30
	v_fma_f32 v14, -v20, v21, v24
	v_fma_f32 v15, -v25, v22, v18
	v_mul_f32_e32 v16, v29, v28
	v_div_scale_f32 v20, null, v27, v27, v118
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v22, v15, v17
	v_div_fmas_f32 v0, v14, v0, v21
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v15, -v26, v16, v29
	v_fma_f32 v24, -v30, v19, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v14, v0, v27, v122
	v_fma_f32 v0, -v25, v22, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v16, v15, v28 :: v_dual_fmac_f32 v19, v24, v19
	v_div_scale_f32 v18, s10, v119, v27, v119
	v_div_scale_f32 v24, null, v27, v27, v110
	v_fma_f32 v15, -v20, v21, 1.0
	v_div_fmas_f32 v0, v0, v17, v22
	v_fma_f32 v17, -v26, v16, v29
	v_mul_f32_e32 v22, v18, v19
	v_rcp_f32_e32 v25, v24
	v_div_scale_f32 v29, null, v27, v27, v117
	s_mov_b32 vcc_lo, s12
	v_dual_fmac_f32 v21, v15, v21 :: v_dual_and_b32 v10, 0xffff0000, v2
	v_div_scale_f32 v26, s9, v118, v27, v118
	v_div_fmas_f32 v16, v17, v28, v16
	v_fma_f32 v17, -v30, v22, v18
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v28, v26, v21
	v_fma_f32 v31, -v24, v25, 1.0
	v_div_fixup_f32 v15, v0, v27, v121
	v_fmac_f32_e32 v22, v17, v19
	v_div_scale_f32 v34, s12, v117, v27, v117
	v_fma_f32 v0, -v20, v28, v26
	v_fmac_f32_e32 v25, v31, v25
	v_div_scale_f32 v31, s11, v110, v27, v110
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v17, -v29, v32, 1.0
	v_fma_f32 v18, -v30, v22, v18
	v_rcp_f32_e32 v30, v33
	v_fmac_f32_e32 v28, v0, v21
	v_mul_f32_e32 v0, v31, v25
	v_fmac_f32_e32 v32, v17, v32
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v12, v12, v27, v124
	v_div_fmas_f32 v17, v18, v19, v22
	v_fma_f32 v18, -v20, v28, v26
	v_fma_f32 v19, -v24, v0, v31
	v_mul_f32_e32 v20, v34, v32
	v_fma_f32 v22, -v33, v30, 1.0
	v_div_scale_f32 v26, null, v27, v27, v115
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v0, v19, v25
	v_div_fmas_f32 v18, v18, v21, v28
	v_rcp_f32_e32 v28, v26
	v_fma_f32 v19, -v29, v20, v34
	v_fmac_f32_e32 v30, v22, v30
	v_div_scale_f32 v21, s9, v116, v27, v116
	v_fma_f32 v22, -v24, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v19, v32
	v_div_scale_f32 v31, null, v27, v27, v114
	v_mul_f32_e32 v24, v21, v30
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v19, -v26, v28, 1.0
	v_div_fmas_f32 v0, v22, v25, v0
	v_fma_f32 v22, -v29, v20, v34
	v_fma_f32 v25, -v33, v24, v21
	v_rcp_f32_e32 v29, v31
	v_fmac_f32_e32 v28, v19, v28
	v_div_scale_f32 v34, s10, v115, v27, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v24, v25, v30
	v_rcp_f32_e32 v25, v35
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v19, v0, v27, v110
	v_div_fmas_f32 v20, v22, v32, v20
	v_mul_f32_e32 v22, v34, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v32, -v31, v29, 1.0
	v_fma_f32 v0, -v33, v24, v21
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v13, v13, v27, v123
	v_fma_f32 v21, -v26, v22, v34
	v_fmac_f32_e32 v29, v32, v29
	v_div_scale_f32 v32, s11, v114, v27, v114
	v_fma_f32 v33, -v35, v25, 1.0
	v_div_fmas_f32 v0, v0, v30, v24
	v_fmac_f32_e32 v22, v21, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v24, v32, v29
	v_rcp_f32_e32 v30, v36
	v_fmac_f32_e32 v25, v33, v25
	v_div_scale_f32 v33, s9, v113, v27, v113
	v_div_fixup_f32 v21, v0, v27, v116
	v_fma_f32 v0, -v26, v22, v34
	v_fma_f32 v26, -v31, v24, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v33, v25
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v16, v16, v27, v120
	v_fma_f32 v39, -v36, v30, 1.0
	v_div_fmas_f32 v0, v0, v28, v22
	v_fmac_f32_e32 v24, v26, v29
	v_fma_f32 v26, -v35, v34, v33
	v_div_scale_f32 v28, s10, v112, v27, v112
	v_fmac_f32_e32 v30, v39, v30
	v_fma_f32 v39, -v37, v38, 1.0
	v_div_fixup_f32 v22, v0, v27, v115
	v_fma_f32 v0, -v31, v24, v32
	v_fmac_f32_e32 v34, v26, v25
	v_div_scale_f32 v32, null, v41, v41, v109
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v26, v28, v30
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v31, s12, v111, v27, v111
	v_div_fmas_f32 v0, v0, v29, v24
	v_fma_f32 v24, -v35, v34, v33
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v29, -v36, v26, v28
	v_mul_f32_e32 v35, v31, v38
	v_div_scale_f32 v39, null, v41, v41, v108
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v26, v29, v30
	v_div_fmas_f32 v25, v24, v25, v34
	v_rcp_f32_e32 v29, v39
	v_fma_f32 v34, -v37, v35, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v33, 1.0
	v_div_fixup_f32 v24, v0, v27, v114
	v_fma_f32 v0, -v36, v26, v28
	v_div_scale_f32 v28, s9, v109, v41, v109
	v_fmac_f32_e32 v35, v34, v38
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v36, null, v41, v41, v107
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v34, -v39, v29, 1.0
	v_div_fmas_f32 v0, v0, v30, v26
	v_fma_f32 v26, -v37, v35, v31
	v_mul_f32_e32 v30, v28, v33
	v_rcp_f32_e32 v31, v36
	v_div_scale_f32 v37, null, v41, v41, v106
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v29, v34, v29
	v_div_scale_f32 v34, s10, v108, v41, v108
	v_div_fmas_f32 v35, v26, v38, v35
	v_fma_f32 v38, -v32, v30, v28
	v_rcp_f32_e32 v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v40, v34, v29
	v_fma_f32 v42, -v36, v31, 1.0
	v_div_fixup_f32 v17, v17, v27, v119
	v_fmac_f32_e32 v30, v38, v33
	v_div_scale_f32 v38, null, v41, v41, v105
	v_div_fixup_f32 v18, v18, v27, v118
	v_div_fixup_f32 v20, v20, v27, v117
	v_div_fixup_f32 v25, v25, v27, v113
	v_div_fixup_f32 v26, v0, v27, v112
	v_div_fixup_f32 v27, v35, v27, v111
	v_fma_f32 v0, -v39, v40, v34
	v_fmac_f32_e32 v31, v42, v31
	v_div_scale_f32 v35, s11, v107, v41, v107
	v_fma_f32 v42, -v37, v43, 1.0
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v28, -v32, v30, v28
	v_fmac_f32_e32 v40, v0, v29
	v_mul_f32_e32 v32, v35, v31
	v_fmac_f32_e32 v43, v42, v43
	v_div_scale_f32 v42, s12, v106, v41, v106
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v28, v33, v30
	v_fma_f32 v28, -v39, v40, v34
	v_fma_f32 v30, -v36, v32, v35
	v_mul_f32_e32 v33, v42, v43
	v_fma_f32 v34, -v38, v44, 1.0
	v_div_scale_f32 v39, null, v41, v41, v104
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v32, v30, v31
	v_div_fmas_f32 v28, v28, v29, v40
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v29, -v37, v33, v42
	v_fmac_f32_e32 v44, v34, v44
	v_div_scale_f32 v34, s9, v105, v41, v105
	v_fma_f32 v30, -v36, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v29, v43
	v_div_scale_f32 v36, null, v41, v41, v103
	v_mul_f32_e32 v35, v34, v44
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v39, v40, 1.0
	v_div_fmas_f32 v30, v30, v31, v32
	v_fma_f32 v31, -v37, v33, v42
	v_fma_f32 v32, -v38, v35, v34
	v_rcp_f32_e32 v37, v36
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v40, v29, v40
	v_div_scale_f32 v42, s10, v104, v41, v104
	v_div_fmas_f32 v31, v31, v43, v33
	v_fmac_f32_e32 v35, v32, v44
	v_rcp_f32_e32 v33, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v32, v42, v40
	v_div_fixup_f32 v29, v30, v41, v107
	v_fma_f32 v43, -v36, v37, 1.0
	v_div_fixup_f32 v30, v31, v41, v106
	v_fma_f32 v31, -v38, v35, v34
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v34, -v39, v32, v42
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v38, s11, v103, v41, v103
	v_fma_f32 v43, -v45, v33, 1.0
	v_div_fmas_f32 v31, v31, v44, v35
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v44, null, v41, v41, v100
	v_fmac_f32_e32 v32, v34, v40
	v_mul_f32_e32 v34, v38, v37
	v_fmac_f32_e32 v33, v43, v33
	v_div_scale_f32 v43, s9, v102, v41, v102
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v39, -v39, v32, v42
	v_fma_f32 v42, -v36, v34, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v43, v33
	v_fma_f32 v49, -v46, v35, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v0, v0, v41, v109
	v_div_fmas_f32 v32, v39, v40, v32
	v_fmac_f32_e32 v34, v42, v37
	v_fma_f32 v39, -v45, v47, v43
	v_fmac_f32_e32 v35, v49, v35
	v_div_scale_f32 v40, s10, v101, v41, v101
	v_fma_f32 v42, -v44, v48, 1.0
	v_fma_f32 v36, -v36, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v39, v33 :: v_dual_mul_f32 v38, v40, v35
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, null, v41, v41, v99
	v_div_scale_f32 v39, s12, v100, v41, v100
	v_div_fmas_f32 v34, v36, v37, v34
	v_fma_f32 v36, -v45, v47, v43
	v_fma_f32 v37, -v46, v38, v40
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v49, null, v41, v41, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v45, v39, v48 :: v_dual_fmac_f32 v38, v37, v35
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v37, v49
	v_div_fmas_f32 v36, v36, v33, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v47, -v44, v45, v39
	v_div_fixup_f32 v33, v34, v41, v103
	v_fma_f32 v50, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v34, v36, v41, v102
	v_fma_f32 v36, -v46, v38, v40
	v_fmac_f32_e32 v45, v47, v48
	v_fmac_f32_e32 v43, v50, v43
	v_div_scale_f32 v40, s9, v99, v41, v99
	v_fma_f32 v46, -v49, v37, 1.0
	v_div_scale_f32 v47, null, v41, v41, v97
	v_div_fmas_f32 v35, v36, v35, v38
	v_fma_f32 v36, -v44, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v38, v40, v43 :: v_dual_fmac_f32 v37, v46, v37
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v44, s10, v98, v41, v98
	v_div_scale_f32 v46, null, v41, v41, v96
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v28, v28, v41, v108
	v_div_fmas_f32 v36, v36, v48, v45
	v_fma_f32 v45, -v42, v38, v40
	v_mul_f32_e32 v48, v44, v37
	v_rcp_f32_e32 v51, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v47, v39, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v38, v45, v43
	v_fma_f32 v45, -v49, v48, v44
	v_div_fixup_f32 v31, v31, v41, v105
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v50, s11, v97, v41, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v48, v45, v37
	v_fma_f32 v53, -v46, v51, 1.0
	v_rcp_f32_e32 v45, v52
	v_fma_f32 v40, -v42, v38, v40
	v_mul_f32_e32 v42, v50, v39
	v_div_fixup_f32 v32, v32, v41, v104
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s12, v96, v41, v96
	v_div_fmas_f32 v38, v40, v43, v38
	v_fma_f32 v40, -v49, v48, v44
	v_fma_f32 v43, -v47, v42, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v53, v51
	v_fma_f32 v49, -v52, v45, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v35, v35, v41, v101
	v_div_fmas_f32 v40, v40, v37, v48
	v_fmac_f32_e32 v42, v43, v39
	v_rcp_f32_e32 v43, v54
	v_fma_f32 v48, -v46, v44, v53
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s9, v95, v41, v95
	v_div_fixup_f32 v37, v38, v41, v99
	v_div_fixup_f32 v38, v40, v41, v98
	v_fma_f32 v40, -v47, v42, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v44, v48, v51 :: v_dual_mul_f32 v47, v49, v45
	v_div_scale_f32 v50, null, v23, v23, v93
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v48, -v54, v43, 1.0
	v_div_fmas_f32 v39, v40, v39, v42
	v_fma_f32 v40, -v46, v44, v53
	v_fma_f32 v42, -v52, v47, v49
	v_rcp_f32_e32 v46, v50
	v_div_scale_f32 v53, null, v23, v23, v92
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v43, v48, v43
	v_div_scale_f32 v48, s10, v94, v41, v94
	v_div_fmas_f32 v40, v40, v51, v44
	v_fmac_f32_e32 v47, v42, v45
	v_rcp_f32_e32 v44, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v51, v48, v43
	v_fma_f32 v42, -v50, v46, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v49, -v52, v47, v49
	v_div_scale_f32 v55, s11, v93, v23, v93
	v_fma_f32 v52, -v54, v51, v48
	v_fmac_f32_e32 v46, v42, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v45, v49, v45, v47
	v_fma_f32 v42, -v53, v44, 1.0
	v_rcp_f32_e32 v49, v56
	v_fmac_f32_e32 v51, v52, v43
	v_mul_f32_e32 v47, v55, v46
	v_div_scale_f32 v52, s9, v92, v23, v92
	v_fmac_f32_e32 v44, v42, v44
	v_div_fixup_f32 v42, v45, v41, v95
	v_fma_f32 v45, -v54, v51, v48
	v_fma_f32 v48, -v50, v47, v55
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v54, v52, v44
	v_fma_f32 v59, -v56, v49, 1.0
	v_div_fmas_f32 v43, v45, v43, v51
	v_fmac_f32_e32 v47, v48, v46
	v_div_scale_f32 v48, s10, v91, v23, v91
	v_fma_f32 v45, -v53, v54, v52
	v_fmac_f32_e32 v49, v59, v49
	v_fma_f32 v51, -v57, v58, 1.0
	v_div_fixup_f32 v36, v36, v41, v100
	v_div_fixup_f32 v39, v39, v41, v97
	v_div_fixup_f32 v40, v40, v41, v96
	v_div_fixup_f32 v41, v43, v41, v94
	v_fma_f32 v43, -v50, v47, v55
	v_dual_fmac_f32 v54, v45, v44 :: v_dual_mul_f32 v45, v48, v49
	v_fmac_f32_e32 v58, v51, v58
	v_div_scale_f32 v50, s12, v90, v23, v90
	v_div_scale_f32 v51, null, v23, v23, v89
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v55, null, v23, v23, v88
	v_div_fmas_f32 v43, v43, v46, v47
	v_fma_f32 v46, -v53, v54, v52
	v_fma_f32 v47, -v56, v45, v48
	v_rcp_f32_e32 v52, v51
	v_mul_f32_e32 v53, v50, v58
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v59, null, v23, v23, v86
	v_div_fmas_f32 v44, v46, v44, v54
	v_fmac_f32_e32 v45, v47, v49
	v_rcp_f32_e32 v47, v55
	v_fma_f32 v46, -v57, v53, v50
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v51, v52, 1.0
	v_fma_f32 v48, -v56, v45, v48
	v_div_scale_f32 v56, null, v23, v23, v87
	v_fmac_f32_e32 v53, v46, v58
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s9, v89, v23, v89
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v55, v47, 1.0
	v_div_fmas_f32 v45, v48, v49, v45
	v_fma_f32 v48, -v57, v53, v50
	v_rcp_f32_e32 v50, v56
	v_mul_f32_e32 v49, v54, v52
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v57, s10, v88, v23, v88
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v60, v59
	v_div_fmas_f32 v46, v48, v58, v53
	v_fma_f32 v48, -v51, v49, v54
	v_mul_f32_e32 v53, v57, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v58, -v56, v50, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v45, v45, v23, v91
	v_fmac_f32_e32 v49, v48, v52
	v_fma_f32 v48, -v55, v53, v57
	v_fmac_f32_e32 v50, v58, v50
	v_div_scale_f32 v58, s11, v87, v23, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v51, v49, v54
	v_fmac_f32_e32 v53, v48, v47
	v_div_fixup_f32 v46, v46, v23, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v54, v58, v50
	v_fma_f32 v90, -v59, v60, 1.0
	v_rcp_f32_e32 v91, v61
	v_div_fmas_f32 v48, v51, v52, v49
	v_fma_f32 v49, -v55, v53, v57
	v_fma_f32 v51, -v56, v54, v58
	v_div_scale_f32 v57, null, v23, v23, v84
	v_fmac_f32_e32 v60, v90, v60
	v_div_scale_f32 v90, s12, v86, v23, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v51, v50
	v_rcp_f32_e32 v51, v57
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v52, v90, v60
	v_fma_f32 v55, -v61, v91, 1.0
	v_div_fmas_f32 v49, v49, v47, v53
	v_div_fixup_f32 v47, v48, v23, v89
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v53, -v59, v52, v90
	v_fmac_f32_e32 v91, v55, v91
	v_div_scale_f32 v55, s9, v85, v23, v85
	v_div_fixup_f32 v48, v49, v23, v88
	v_fma_f32 v49, -v56, v54, v58
	v_fma_f32 v56, -v57, v51, 1.0
	v_div_scale_f32 v58, null, v23, v23, v83
	v_dual_fmac_f32 v52, v53, v60 :: v_dual_mul_f32 v53, v55, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v56, v51
	v_rcp_f32_e32 v56, v58
	v_div_fmas_f32 v49, v49, v50, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v50, -v59, v52, v90
	v_fma_f32 v54, -v61, v53, v55
	v_div_scale_f32 v59, s10, v84, v23, v84
	v_div_scale_f32 v88, null, v23, v23, v82
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v53, v54, v91
	v_div_fmas_f32 v50, v50, v60, v52
	v_rcp_f32_e32 v52, v88
	v_mul_f32_e32 v54, v59, v51
	v_fma_f32 v60, -v58, v56, 1.0
	v_div_fixup_f32 v49, v49, v23, v87
	v_fma_f32 v55, -v61, v53, v55
	v_div_scale_f32 v87, null, v23, v23, v81
	v_fma_f32 v61, -v57, v54, v59
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s11, v83, v23, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v50, v50, v23, v86
	v_fma_f32 v86, -v88, v52, 1.0
	v_div_fmas_f32 v53, v55, v91, v53
	v_dual_fmac_f32 v54, v61, v51 :: v_dual_mul_f32 v55, v60, v56
	v_rcp_f32_e32 v61, v87
	v_div_scale_f32 v89, null, v23, v23, v80
	v_fmac_f32_e32 v52, v86, v52
	v_div_scale_f32 v86, s9, v82, v23, v82
	v_fma_f32 v57, -v57, v54, v59
	v_fma_f32 v59, -v58, v55, v60
	v_rcp_f32_e32 v90, v89
	v_div_fixup_f32 v53, v53, v23, v85
	v_mul_f32_e32 v85, v86, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v87, v61, 1.0
	v_fmac_f32_e32 v55, v59, v56
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v44, v44, v23, v92
	v_div_fmas_f32 v51, v57, v51, v54
	v_fma_f32 v54, -v88, v85, v86
	v_fmac_f32_e32 v61, v91, v61
	v_div_scale_f32 v57, s10, v81, v23, v81
	v_fma_f32 v59, -v89, v90, 1.0
	v_fma_f32 v58, -v58, v55, v60
	v_div_scale_f32 v60, null, v23, v23, v79
	v_div_fixup_f32 v51, v51, v23, v84
	v_dual_fmac_f32 v85, v54, v52 :: v_dual_mul_f32 v54, v57, v61
	v_fmac_f32_e32 v90, v59, v90
	v_div_scale_f32 v59, s12, v80, v23, v80
	v_rcp_f32_e32 v84, v60
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v43, v43, v23, v93
	v_div_fmas_f32 v55, v58, v56, v55
	v_fma_f32 v56, -v88, v85, v86
	v_fma_f32 v58, -v87, v54, v57
	v_mul_f32_e32 v86, v59, v90
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v23, v23, v78
	v_div_fmas_f32 v52, v56, v52, v85
	v_fmac_f32_e32 v54, v58, v61
	v_fma_f32 v58, -v89, v86, v59
	v_fma_f32 v85, -v60, v84, 1.0
	v_rcp_f32_e32 v56, v88
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v57, -v87, v54, v57
	v_fmac_f32_e32 v86, v58, v90
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v58, s9, v79, v23, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v54, v57, v61, v54
	v_fma_f32 v57, -v89, v86, v59
	v_div_scale_f32 v61, null, v10, v10, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v59, v58, v84
	v_div_fixup_f32 v55, v55, v23, v83
	v_div_fixup_f32 v52, v52, v23, v82
	v_fma_f32 v82, -v88, v56, 1.0
	v_rcp_f32_e32 v83, v61
	v_fma_f32 v85, -v60, v59, v58
	v_div_scale_f32 v87, null, v10, v10, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v82, v56
	v_div_scale_f32 v82, s10, v78, v23, v78
	v_fmac_f32_e32 v59, v85, v84
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v54, v54, v23, v81
	v_div_fmas_f32 v57, v57, v90, v86
	v_mul_f32_e32 v86, v82, v56
	v_rcp_f32_e32 v81, v87
	v_fma_f32 v85, -v61, v83, 1.0
	v_fma_f32 v58, -v60, v59, v58
	v_div_scale_f32 v60, null, v10, v10, v75
	v_div_fixup_f32 v57, v57, v23, v80
	v_fma_f32 v80, -v88, v86, v82
	v_fmac_f32_e32 v83, v85, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v60
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v87, v81, 1.0
	v_fmac_f32_e32 v86, v80, v56
	v_div_scale_f32 v80, s11, v77, v10, v77
	v_div_fmas_f32 v58, v58, v84, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v89, v81
	v_fma_f32 v59, -v88, v86, v82
	v_div_scale_f32 v84, s9, v76, v10, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v60, v85, 1.0
	v_mul_f32_e32 v82, v80, v83
	v_div_scale_f32 v90, null, v10, v10, v74
	v_mul_f32_e32 v91, v84, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s12, v75, v10, v75
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v89, -v61, v82, v80
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v56, v59, v56, v86
	v_fma_f32 v59, -v87, v91, v84
	v_mul_f32_e32 v86, v88, v85
	v_fmac_f32_e32 v82, v89, v83
	v_div_fixup_f32 v58, v58, v23, v79
	v_div_fixup_f32 v23, v56, v23, v78
	v_fmac_f32_e32 v91, v59, v81
	v_fma_f32 v59, -v60, v86, v88
	v_div_scale_f32 v78, null, v10, v10, v73
	v_fma_f32 v56, -v61, v82, v80
	v_fma_f32 v61, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v59, v85
	v_rcp_f32_e32 v59, v78
	v_fma_f32 v79, -v87, v91, v84
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v92, v61, v92
	v_div_scale_f32 v61, s10, v74, v10, v74
	v_div_fmas_f32 v56, v56, v83, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v60, -v60, v86, v88
	v_div_fmas_f32 v79, v79, v81, v91
	v_mul_f32_e32 v80, v61, v92
	v_div_scale_f32 v81, null, v10, v10, v72
	v_fma_f32 v82, -v78, v59, 1.0
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v84, -v90, v80, v61
	v_div_fmas_f32 v60, v60, v85, v86
	v_rcp_f32_e32 v83, v81
	v_fmac_f32_e32 v59, v82, v59
	v_div_scale_f32 v82, s9, v73, v10, v73
	v_fmac_f32_e32 v80, v84, v92
	v_div_fixup_f32 v60, v60, v10, v75
	v_div_fixup_f32 v56, v56, v10, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v75, v82, v59
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v61, -v90, v80, v61
	v_fma_f32 v77, -v81, v83, 1.0
	v_div_fixup_f32 v76, v79, v10, v76
	v_fma_f32 v84, -v78, v75, v82
	v_div_scale_f32 v79, null, v10, v10, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s11, v72, v10, v72
	v_div_fmas_f32 v61, v61, v92, v80
	v_fmac_f32_e32 v75, v84, v59
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v77, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v61, v61, v10, v74
	v_fma_f32 v74, -v78, v75, v82
	v_div_scale_f32 v84, null, v10, v10, v70
	v_fma_f32 v78, -v81, v80, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v74, v59, v75
	v_div_scale_f32 v74, null, v10, v10, v69
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v74
	v_div_scale_f32 v75, s9, v71, v10, v71
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v10, v10, v68
	v_div_fixup_f32 v59, v59, v10, v73
	v_fma_f32 v77, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v74, v78, 1.0
	v_mul_f32_e32 v81, v75, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v73, v86
	v_div_scale_f32 v73, s10, v70, v10, v70
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v10, v10, v67
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v79, v81, v75
	v_mul_f32_e32 v83, v73, v86
	v_div_scale_f32 v89, s11, v69, v10, v69
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v73
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v68, v10, v68
	v_div_fixup_f32 v72, v77, v10, v72
	v_fma_f32 v75, -v79, v81, v75
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v74, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v73, -v84, v83, v73
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v67, v10, v67
	v_div_fmas_f32 v75, v75, v85, v81
	v_fma_f32 v74, -v74, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v80, v91
	v_div_scale_f32 v81, null, v10, v10, v66
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v71, v75, v10, v71
	v_div_fmas_f32 v73, v73, v86, v83
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v74, v74, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v70, v73, v10, v70
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v69, v74, v10, v69
	v_div_fmas_f32 v78, v78, v88, v79
	v_fmac_f32_e32 v77, v82, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v75, -v81, v83, 1.0
	v_div_scale_f32 v74, null, v10, v10, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v87, v77, v80
	v_div_fixup_f32 v68, v78, v10, v68
	v_fmac_f32_e32 v83, v75, v83
	v_div_scale_f32 v75, null, v10, v10, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v91, v77
	v_div_scale_f32 v79, vcc_lo, v66, v10, v66
	v_rcp_f32_e32 v77, v74
	v_div_scale_f32 v78, null, v10, v10, v64
	v_mul_f32_e32 v84, v79, v83
	v_div_fixup_f32 v67, v73, v10, v67
	v_div_scale_f32 v85, null, v10, v10, v63
	v_rcp_f32_e32 v80, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v88, -v81, v84, v79
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v73, -v74, v77, 1.0
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v73, v77
	v_div_scale_f32 v73, s9, v62, v10, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v86, -v75, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v78, v82, 1.0
	v_fma_f32 v91, -v85, v87, 1.0
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v73, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v65, v10, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v74, v90, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s11, v64, v10, v64
	v_dual_fmac_f32 v90, v88, v77 :: v_dual_fmac_f32 v87, v91, v87
	v_div_scale_f32 v91, s12, v63, v10, v63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v74, v90, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v92, v86, v80 :: v_dual_mul_f32 v93, v89, v82
	v_div_fmas_f32 v73, v73, v77, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v92, v86
	v_fma_f32 v88, -v78, v93, v89
	v_div_fixup_f32 v62, v73, v10, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_cvt_i32_f32_e32 v73, v52
	v_and_b32_e32 v52, 15, v55
	v_and_b32_e32 v55, 15, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v85, v94, v91
	v_dual_fmac_f32 v92, v81, v80 :: v_dual_fmac_f32 v93, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v74, v87
	v_fma_f32 v75, -v75, v92, v86
	v_fma_f32 v74, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v66, v79, v10, v66
	v_fma_f32 v77, -v85, v94, v91
	v_div_fmas_f32 v75, v75, v80, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v82, v93
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v65, v75, v10, v65
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v64, v74, v10, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v77, v10, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v74, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v63, v76
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v82, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v57, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v74, 16, v127
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v26, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v127
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_cvt_i32_f32_e32 v80, v65
	v_cvt_i32_f32_e32 v81, v64
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v28
	v_and_b32_e32 v28, 15, v29
	v_and_b32_e32 v29, 15, v30
	v_and_b32_e32 v30, 15, v31
	v_and_b32_e32 v31, 15, v32
	v_and_b32_e32 v32, 15, v33
	v_and_b32_e32 v33, 15, v34
	v_and_b32_e32 v34, 15, v35
	v_and_b32_e32 v35, 15, v36
	v_and_b32_e32 v36, 15, v37
	v_and_b32_e32 v37, 15, v38
	v_and_b32_e32 v38, 15, v39
	v_and_b32_e32 v39, 15, v40
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v45
	v_and_b32_e32 v45, 15, v46
	v_and_b32_e32 v46, 15, v47
	v_and_b32_e32 v47, 15, v48
	v_and_b32_e32 v48, 15, v49
	v_and_b32_e32 v49, 15, v50
	v_and_b32_e32 v50, 15, v53
	v_and_b32_e32 v53, 15, v73
	v_and_b32_e32 v64, 15, v71
	v_and_b32_e32 v65, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v70, 4, v128
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v71, 6, v74
	v_lshlrev_b32_e32 v73, 6, v127
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v75, v56
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v70, v8
	v_add3_u32 v0, 0, v0, v71
	v_and_or_b32 v6, 0x1b00, v73, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v77, v67
	v_cvt_i32_f32_e32 v78, v66
	v_cvt_i32_f32_e32 v76, v59
	v_and_b32_e32 v56, 15, v58
	v_and_b32_e32 v58, 15, v75
	v_and_b32_e32 v59, 15, v63
	v_and_b32_e32 v60, 15, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v8, v7
	v_xad_u32 v6, v6, v129, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v41
	v_and_b32_e32 v66, 15, v69
	v_and_b32_e32 v67, 15, v68
	v_and_b32_e32 v68, 15, v77
	v_and_b32_e32 v69, 15, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v72, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v6
	ds_load_b128 v[18:21], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[26:29]
	ds_store_b128 v0, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v6
	ds_load_b128 v[34:37], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[42:45]
	ds_store_b128 v0, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v6
	ds_load_b128 v[50:53], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[58:61]
	ds_store_b128 v0, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v6
	ds_load_b128 v[66:69], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[14:17]
	ds_store_b128 v0, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[22:25], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[38:41], v6 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_and_b32_e32 v71, 15, v80
	v_and_b32_e32 v73, 15, v82
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v62
	v_and_b32_e32 v54, 15, v54
	v_and_b32_e32 v62, 15, v76
	v_and_b32_e32 v63, 15, v72
	v_and_b32_e32 v72, 15, v81
	v_and_b32_e32 v70, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v18, v19, 4, v11
	v_lshl_or_b32 v19, v20, 4, v12
	v_lshl_or_b32 v20, v21, 4, v13
	v_lshl_or_b32 v21, v34, 4, v26
	v_lshl_or_b32 v26, v39, 4, v31
	v_lshl_or_b32 v31, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v128
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 32, v5
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 48, v5
	v_mad_u64_u32 v[7:8], null, v5, s9, v[0:1]
	v_mad_u64_u32 v[10:11], null, v10, s9, v[0:1]
	v_mad_u64_u32 v[11:12], null, v12, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v22, v35, 4, v27
	v_lshl_or_b32 v23, v36, 4, v28
	v_lshl_or_b32 v24, v37, 4, v29
	v_lshl_or_b32 v25, v38, 4, v30
	v_lshl_or_b32 v27, v40, 4, v32
	v_lshl_or_b32 v28, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v13, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v20.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v6.l
	v_lshlrev_b16 v4.l, 8, v17.l
	v_and_b16 v5.l, 0xff, v16.l
	v_lshlrev_b16 v5.h, 8, v15.l
	v_and_b16 v6.l, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v54, 4, v46
	v_lshl_or_b32 v34, v55, 4, v47
	v_lshl_or_b32 v35, v56, 4, v48
	v_lshl_or_b32 v36, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v0.h, v0.l
	v_or_b16 v13.l, v2.l, v1.l
	v_or_b16 v14.h, v5.l, v4.l
	v_or_b16 v14.l, v6.l, v5.h
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v23.l
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v5.h, 8, v26.l
	v_and_b16 v6.l, 0xff, v25.l
	s_mov_b32 s12, s24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v50, 4, v42
	v_lshl_or_b32 v30, v51, 4, v43
	v_lshl_or_b32 v32, v53, 4, v45
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v70, 4, v62
	v_lshl_or_b32 v42, v71, 4, v63
	v_lshl_or_b32 v43, v72, 4, v64
	v_lshl_or_b32 v45, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_or_b16 v8.h, v5.l, v4.l
	v_or_b16 v8.l, v6.l, v5.h
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v5.l, 0xff, v35.l
	v_lshlrev_b16 v5.h, 8, v34.l
	v_and_b16 v6.l, 0xff, v33.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v66, 4, v58
	v_lshl_or_b32 v38, v67, 4, v59
	v_lshl_or_b32 v39, v68, 4, v60
	v_lshl_or_b32 v40, v69, 4, v61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	buffer_store_b64 v[7:8], v10, s[12:15], 0 offen
	v_or_b16 v8.h, v5.l, v4.l
	v_or_b16 v8.l, v6.l, v5.h
	v_lshlrev_b16 v4.l, 8, v45.l
	v_and_b16 v5.l, 0xff, v43.l
	v_lshlrev_b16 v5.h, 8, v42.l
	v_and_b16 v6.l, 0xff, v41.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_cndmask_b32_e32 v13, 0x80000000, v11, vcc_lo
	v_or_b16 v11.h, v5.l, v4.l
	v_or_b16 v11.l, v6.l, v5.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v127
	v_lshrrev_b32_e32 v6, 2, v74
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_dual_cndmask_b32 v0, 0x80000000, v12 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v13, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v4, v6, v5, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v127
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 64
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 64
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17952
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 64
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 64
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 15
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
