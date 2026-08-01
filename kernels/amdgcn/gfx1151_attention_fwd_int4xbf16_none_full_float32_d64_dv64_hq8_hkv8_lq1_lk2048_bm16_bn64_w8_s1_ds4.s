	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s61, s[0:1], 0x64
	s_load_b64 s[46:47], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[44:45], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v52, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v17, 3, v0
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v52
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v51, 1, v0
	s_mov_b32 s36, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s61
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s61
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v2
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s49, s49, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s61
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s13, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s12, v3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s60, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v1, s46, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s61, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s61
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v1, 0x80000000, v4 :: v_dual_and_b32 v4, 24, v17
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v1, v1, s[48:51], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v51, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s60, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s62, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s62, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s63, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s62, s63
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v52
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v52, 1
	v_dual_mov_b32 v21, 0x7632 :: v_dual_lshlrev_b32 v20, 3, v0
	v_dual_mov_b32 v8, 0x5410 :: v_dual_and_b32 v5, 24, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v1, 0x80000000, v4 :: v_dual_and_b32 v4, 1, v3
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_and_b32_e32 v7, 16, v0
	v_dual_mov_b32 v9, s36 :: v_dual_mov_b32 v16, s43
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s9, 0xffff
	s_mov_b32 s48, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v19, v1, s[48:51], 0 offen
	v_dual_mov_b32 v11, s38 :: v_dual_and_b32 v18, 56, v20
	v_dual_mov_b32 v79, 0xff800000 :: v_dual_lshlrev_b32 v22, 4, v0
	v_mov_b32_e32 v10, s37
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v24, v52, 5, v5
	v_cmp_eq_u32_e64 s2, 0, v7
	v_dual_mov_b32 v12, s39 :: v_dual_and_b32 v23, 0x60, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v14, s41
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s64, s3, 11
	v_cndmask_b32_e64 v26, 0x1054, v8, s2
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s47, v18
	v_add3_u32 v58, 0, v2, v23
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v23, 16, v24
	v_or3_b32 v55, s64, v3, 62
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v60, 0, v24
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v54, 0x800, v17
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v41, 24, v20
	v_or_b32_e32 v57, s64, v4
	v_mov_b32_e32 v8, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v53, 2, v0
	v_and_b32_e32 v25, 24, v6
	v_dual_mov_b32 v13, s40 :: v_dual_mov_b32 v2, v1
	v_mov_b32_e32 v15, s42
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v56, 0x800, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v20, v20, v25
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s46, v41
	v_or_b32_e32 v61, 48, v57
	v_or_b32_e32 v62, 50, v57
	v_or_b32_e32 v63, 52, v57
	v_or_b32_e32 v64, 54, v57
	v_or_b32_e32 v65, 56, v57
	v_or_b32_e32 v66, 58, v57
	v_or_b32_e32 v67, 60, v57
	v_add_nc_u32_e32 v71, 0, v20
	v_mov_b16_e32 v80.h, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s65, s47, 5
	s_mov_b32 s66, 0x76543210
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s10
	s_mov_b32 s56, s6
	s_mov_b32 s48, s4
	s_mov_b32 s49, s5
	s_mov_b32 s53, s11
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	v_mov_b32_e32 v78, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[42:43], null, s47, v17, v[18:19]
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v19, 16, v19
	v_cndmask_b32_e64 v18, 0x3276, v21, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	v_add_nc_u32_e32 v59, 0, v22
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v22, 8, v24
	v_xor_b32_e32 v24, 24, v24
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v72, s2, v19 :: v_dual_mov_b32 v5, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v69, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v68, 0, v22
	v_add_nc_u32_e32 v70, 0, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v76, v72
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[43:44], v60
	ds_load_b64 v[45:46], v68
	ds_load_b64 v[47:48], v69
	ds_load_b64 v[49:50], v70
	v_lshl_or_b32 v17, v26, 8, v26
	v_lshl_or_b32 v18, v18, 8, v18
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v75, v72
	v_mov_b32_e32 v77, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v17, 0x540054, v17
	v_and_b32_e32 v18, 0x760076, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v17, 4, v17
	v_lshl_or_b32 v18, v18, 4, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v73, 0x5040504, v17
	v_and_b32_e32 v74, 0x7060706, v18
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s5, s62, s64
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v25, 0x800, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v26, s62, v57, 1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s62, v56
	v_mov_b32_e32 v81, v79
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v79, s5, v53
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[116:117], null, s5, s47, v[42:43]
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s5, s62, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v140, 0x80000000, v26, s2
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[25:26], null, v79, s46, v[41:42]
	v_or_b32_e32 v96, 42, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s5, s0, s5
	v_or_b32_e32 v97, 44, v57
	v_or_b32_e32 v98, 46, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v91, v64, s62, 1
	v_add_lshl_u32 v92, v65, s62, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v93, v66, s62, 1
	v_add_lshl_u32 v94, v67, s62, 1
	v_add_lshl_u32 v95, s62, v55, 1
	v_add_lshl_u32 v137, v96, s62, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[25:26], v25, s[48:51], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v138, v97, s62, 1
	v_add_lshl_u32 v139, v98, s62, 1
	v_cndmask_b32_e64 v144, 0x80000000, v91, s2
	v_cndmask_b32_e64 v145, 0x80000000, v92, s2
	v_cndmask_b32_e64 v146, 0x80000000, v93, s2
	v_cndmask_b32_e64 v147, 0x80000000, v94, s2
	v_cndmask_b32_e64 v148, 0x80000000, v95, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v17, s36 :: v_dual_mov_b32 v18, s37
	v_dual_mov_b32 v19, s38 :: v_dual_mov_b32 v20, s39
	v_dual_mov_b32 v21, s40 :: v_dual_mov_b32 v22, s41
	v_dual_mov_b32 v23, s42 :: v_dual_mov_b32 v24, s43
	v_or_b32_e32 v27, 2, v57
	v_or_b32_e32 v28, 4, v57
	v_or_b32_e32 v29, 6, v57
	v_or_b32_e32 v30, 8, v57
	v_or_b32_e32 v31, 10, v57
	v_or_b32_e32 v32, 12, v57
	v_or_b32_e32 v33, 14, v57
	v_or_b32_e32 v34, 16, v57
	v_or_b32_e32 v35, 18, v57
	v_or_b32_e32 v36, 20, v57
	v_or_b32_e32 v37, 22, v57
	v_or_b32_e32 v38, 24, v57
	v_or_b32_e32 v39, 26, v57
	v_or_b32_e32 v40, 28, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v117, v27, s62, 1
	v_add_lshl_u32 v118, v28, s62, 1
	v_add_lshl_u32 v119, v29, s62, 1
	v_add_lshl_u32 v120, v30, s62, 1
	v_add_lshl_u32 v121, v31, s62, 1
	v_add_lshl_u32 v122, v32, s62, 1
	v_add_lshl_u32 v123, v33, s62, 1
	v_add_lshl_u32 v124, v34, s62, 1
	v_add_lshl_u32 v125, v35, s62, 1
	v_add_lshl_u32 v126, v36, s62, 1
	v_add_lshl_u32 v127, v37, s62, 1
	v_add_lshl_u32 v128, v38, s62, 1
	v_add_lshl_u32 v129, v39, s62, 1
	v_add_lshl_u32 v130, v40, s62, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s4, s62, v54
	v_or_b32_e32 v82, 30, v57
	v_or_b32_e32 v83, 32, v57
	v_or_b32_e32 v84, 34, v57
	v_or_b32_e32 v85, 36, v57
	v_or_b32_e32 v86, 38, v57
	v_or_b32_e32 v87, 40, v57
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s4, s1, s4
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v88, v61, s62, 1
	v_add_lshl_u32 v89, v62, s62, 1
	v_add_lshl_u32 v90, v63, s62, 1
	v_add_lshl_u32 v131, v82, s62, 1
	v_add_lshl_u32 v132, v83, s62, 1
	v_add_lshl_u32 v133, v84, s62, 1
	v_add_lshl_u32 v134, v85, s62, 1
	v_add_lshl_u32 v135, v86, s62, 1
	v_add_lshl_u32 v136, v87, s62, 1
	v_cndmask_b32_e64 v141, 0x80000000, v88, s2
	v_cndmask_b32_e64 v142, 0x80000000, v89, s2
	v_cndmask_b32_e64 v143, 0x80000000, v90, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v86.h, v80.h
	v_mov_b16_e32 v82.h, v80.h
	v_mov_b16_e32 v84.h, v80.h
	v_mov_b16_e32 v85.h, v80.h
	v_mov_b16_e32 v88.h, v80.h
	v_mov_b16_e32 v90.h, v80.h
	v_mov_b16_e32 v83.h, v80.h
	v_mov_b16_e32 v89.h, v80.h
	v_mov_b16_e32 v87.h, v80.h
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s62, s62, 64
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v71, v[25:26]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[91:94], v60 offset1:1
	ds_load_2addr_stride64_b64 v[95:98], v60 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[108:111], v68 offset1:1
	ds_load_2addr_stride64_b64 v[112:115], v68 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[43:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[97:98], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[91:94], v69 offset1:1
	ds_load_2addr_stride64_b64 v[95:98], v69 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[45:46], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[45:46], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[45:46], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[45:46], v[100:107] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v113, 0x80000000, v121, s2
	v_cndmask_b32_e64 v114, 0x80000000, v122, s2
	v_cndmask_b32_e64 v115, 0x80000000, v123, s2
	v_cndmask_b32_e64 v121, 0x80000000, v128, s2
	v_cndmask_b32_e64 v122, 0x80000000, v129, s2
	v_cndmask_b32_e64 v123, 0x80000000, v130, s2
	v_cndmask_b32_e64 v128, 0x80000000, v135, s2
	v_cndmask_b32_e64 v129, 0x80000000, v136, s2
	v_cndmask_b32_e64 v130, 0x80000000, v137, s2
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[47:48], v[25:32] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[91:94], v70 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[97:98], v[47:48], v[100:107] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[95:98], v70 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[49:50], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v94, 0x80000000, v118, s2
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[97:98], v[49:50], v[100:107] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v118, 0x80000000, v125, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v79, v17
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v17, 1, v116
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v97, v18
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v18, v116, s65, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v109, v21
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[49:50], v[33:40] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v93, 0x80000000, v117, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v21, 0x80000000, v18, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v95, 0x80000000, v119, s2
	v_cndmask_b32_e64 v96, 0x80000000, v120, s2
	v_cndmask_b32_e64 v117, 0x80000000, v124, s2
	v_cndmask_b32_e64 v119, 0x80000000, v126, s2
	v_cndmask_b32_e64 v120, 0x80000000, v127, s2
	v_cndmask_b32_e64 v124, 0x80000000, v131, s2
	v_cndmask_b32_e64 v125, 0x80000000, v132, s2
	v_cndmask_b32_e64 v126, 0x80000000, v133, s2
	v_cndmask_b32_e64 v127, 0x80000000, v134, s2
	v_cndmask_b32_e64 v131, 0x80000000, v138, s2
	v_cndmask_b32_e64 v132, 0x80000000, v139, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v98, v20
	v_cvt_f32_i32_e32 v108, v19
	v_cvt_f32_i32_e32 v110, v22
	v_cvt_f32_i32_e32 v111, v23
	v_cvt_f32_i32_e32 v112, v24
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[17:20], v17, s[56:59], 0 offen
	buffer_load_b128 v[21:24], v21, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v116, v94, s[52:55], 0 offen
	buffer_load_u16 v118, v118, s[52:55], 0 offen
	buffer_load_u16 v119, v119, s[52:55], 0 offen
	buffer_load_u16 v120, v120, s[52:55], 0 offen
	buffer_load_u16 v121, v121, s[52:55], 0 offen
	buffer_load_u16 v122, v122, s[52:55], 0 offen
	buffer_load_u16 v123, v123, s[52:55], 0 offen
	buffer_load_u16 v124, v124, s[52:55], 0 offen
	buffer_load_u16 v125, v125, s[52:55], 0 offen
	buffer_load_u16 v126, v126, s[52:55], 0 offen
	buffer_load_u16 v127, v127, s[52:55], 0 offen
	buffer_load_u16 v128, v128, s[52:55], 0 offen
	buffer_load_u16 v129, v129, s[52:55], 0 offen
	buffer_load_u16 v130, v130, s[52:55], 0 offen
	buffer_load_u16 v131, v131, s[52:55], 0 offen
	buffer_load_u16 v132, v132, s[52:55], 0 offen
	buffer_load_u16 v133, v141, s[52:55], 0 offen
	buffer_load_u16 v134, v142, s[52:55], 0 offen
	buffer_load_u16 v135, v143, s[52:55], 0 offen
	buffer_load_u16 v136, v140, s[52:55], 0 offen
	buffer_load_u16 v137, v95, s[52:55], 0 offen
	buffer_load_u16 v138, v96, s[52:55], 0 offen
	buffer_load_u16 v113, v113, s[52:55], 0 offen
	buffer_load_u16 v114, v114, s[52:55], 0 offen
	buffer_load_u16 v115, v115, s[52:55], 0 offen
	buffer_load_u16 v139, v93, s[52:55], 0 offen
	buffer_load_u16 v117, v117, s[52:55], 0 offen
	buffer_load_u16 v140, v144, s[52:55], 0 offen
	buffer_load_u16 v141, v145, s[52:55], 0 offen
	buffer_load_u16 v142, v147, s[52:55], 0 offen
	buffer_load_u16 v143, v148, s[52:55], 0 offen
	buffer_load_u16 v144, v146, s[52:55], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v107, v107
	v_mov_b32_e32 v99, v78
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v107, v77, v107
	v_mul_f32_e32 v105, v76, v105
	v_mul_f32_e32 v97, v75, v97
	v_mul_f32_e32 v103, v72, v103
	v_cvt_f32_i32_e32 v104, v104
	v_mul_f32_e32 v79, v72, v79
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s2, vcc_lo, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v78.h, v80.h
	v_mov_b16_e32 v92.h, v80.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v104, v75, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v94.h, v80.h
	v_mov_b16_e32 v91.h, v80.h
	v_mov_b16_e32 v96.h, v80.h
	v_mov_b16_e32 v93.h, v80.h
	v_mov_b16_e32 v95.h, v80.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s62, s63
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v106, v77, v106
	v_mul_f32_e32 v98, v77, v98
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v59, v[17:20]
	s_waitcnt vmcnt(32)
	ds_store_b128 v59, v[21:24] offset:4096
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v17, v76, v108
	v_dual_mul_f32 v18, v72, v26 :: v_dual_mul_f32 v19, v75, v27
	v_mul_f32_e32 v20, v76, v28
	v_dual_mul_f32 v26, v77, v29 :: v_dual_mul_f32 v27, v72, v30
	v_mul_f32_e32 v108, v77, v112
	v_dual_mul_f32 v28, v75, v31 :: v_dual_mul_f32 v29, v76, v32
	v_dual_mul_f32 v30, v77, v33 :: v_dual_mul_f32 v31, v75, v34
	v_dual_mul_f32 v32, v72, v35 :: v_dual_mul_f32 v33, v75, v36
	v_dual_mul_f32 v34, v76, v37 :: v_dual_mul_f32 v35, v77, v38
	v_mul_f32_e32 v36, v72, v39
	v_dual_mul_f32 v38, v76, v100 :: v_dual_mul_f32 v39, v77, v101
	v_dual_mul_f32 v100, v72, v109 :: v_dual_mul_f32 v101, v75, v110
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v109, v72, v25 :: v_dual_lshlrev_b32 v24, 16, v120
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v110, 16, v122
	v_lshlrev_b32_e32 v25, 16, v121
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v37, v75, v40 :: v_dual_mul_f32 v40, v76, v102
	v_mul_f32_e32 v102, v76, v111
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v22, 16, v118
	v_lshlrev_b32_e32 v21, 16, v116
	v_lshlrev_b32_e32 v23, 16, v119
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v112, 16, v124
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v124, 16, v132
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v132, 16, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v140, v20, v24
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v116, 16, v125
	v_lshlrev_b32_e32 v125, 16, v133
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v110, v27, v110 :: v_dual_lshlrev_b32 v133, 16, v141
	v_dual_mul_f32 v141, v26, v25 :: v_dual_lshlrev_b32 v118, 16, v126
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v121, 16, v129
	v_lshlrev_b32_e32 v111, 16, v123
	v_lshlrev_b32_e32 v123, 16, v131
	v_lshlrev_b32_e32 v129, 16, v139
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v131, 16, v138
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v138, v18, v22 :: v_dual_mul_f32 v139, v19, v23
	v_dual_mul_f32 v116, v30, v116 :: v_dual_lshlrev_b32 v119, 16, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v122, 16, v130
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v118, v31, v118 :: v_dual_mul_f32 v121, v34, v121
	v_dual_mul_f32 v124, v37, v124 :: v_dual_lshlrev_b32 v127, 16, v135
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v130, 16, v137
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v137, v17, v21
	v_mul_f32_e32 v112, v29, v112
	v_dual_mul_f32 v111, v28, v111 :: v_dual_lshlrev_b32 v120, 16, v128
	v_dual_mul_f32 v119, v32, v119 :: v_dual_mul_f32 v122, v35, v122
	v_dual_mul_f32 v125, v38, v125 :: v_dual_lshlrev_b32 v128, 16, v136
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v114, 16, v114
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v120, v33, v120
	v_dual_mul_f32 v123, v36, v123 :: v_dual_lshlrev_b32 v126, 16, v134
	v_mul_f32_e32 v127, v40, v127
	v_dual_mul_f32 v98, v98, v130 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v134, 16, v142
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v126, v39, v126
	v_mul_f32_e32 v79, v79, v128
	v_mul_f32_e32 v97, v97, v129
	v_dual_mul_f32 v101, v101, v113 :: v_dual_mul_f32 v102, v102, v114
	v_dual_mul_f32 v108, v108, v115 :: v_dual_lshlrev_b32 v117, 16, v117
	v_mul_f32_e32 v100, v100, v131
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v106, v106, v134 :: v_dual_lshlrev_b32 v135, 16, v143
	v_mul_f32_e32 v104, v104, v133
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v109, v109, v117 :: v_dual_lshlrev_b32 v136, 16, v144
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v141, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v107, v107, v135
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v140, s2
	v_cndmask_b32_e64 v117, 0xff800000, v139, s2
	v_cndmask_b32_e64 v128, 0xff800000, v138, s2
	v_cndmask_b32_e64 v116, 0xff800000, v116, s2
	v_cndmask_b32_e64 v112, 0xff800000, v112, s2
	v_cndmask_b32_e64 v111, 0xff800000, v111, s2
	v_cndmask_b32_e64 v110, 0xff800000, v110, s2
	v_cndmask_b32_e64 v118, 0xff800000, v118, s2
	v_cndmask_b32_e64 v98, 0xff800000, v98, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v103, v103, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v97, s2
	v_cndmask_b32_e64 v129, 0xff800000, v79, s2
	v_cndmask_b32_e64 v101, 0xff800000, v101, s2
	v_cndmask_b32_e64 v100, 0xff800000, v100, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v105, v105, v136
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v137, s2
	v_cndmask_b32_e64 v122, 0xff800000, v122, s2
	v_cndmask_b32_e64 v121, 0xff800000, v121, s2
	v_cndmask_b32_e64 v120, 0xff800000, v120, s2
	v_cndmask_b32_e64 v119, 0xff800000, v119, s2
	v_cndmask_b32_e64 v126, 0xff800000, v126, s2
	v_cndmask_b32_e64 v125, 0xff800000, v125, s2
	v_cndmask_b32_e64 v124, 0xff800000, v124, s2
	v_cndmask_b32_e64 v123, 0xff800000, v123, s2
	v_cndmask_b32_e64 v127, 0xff800000, v127, s2
	v_cndmask_b32_e64 v108, 0xff800000, v108, s2
	v_cndmask_b32_e64 v102, 0xff800000, v102, s2
	v_cndmask_b32_e64 v109, 0xff800000, v109, s2
	v_cndmask_b32_e64 v106, 0xff800000, v106, s2
	v_cndmask_b32_e64 v104, 0xff800000, v104, s2
	v_cndmask_b32_e64 v103, 0xff800000, v103, s2
	v_cndmask_b32_e64 v107, 0xff800000, v107, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v79, v128, v117, v115
	v_max3_f32 v130, v114, v110, v111
	v_max3_f32 v131, v112, v116, v118
	v_dual_max_f32 v135, v129, v97 :: v_dual_max_f32 v138, v103, v104
	v_max3_f32 v136, v98, v100, v101
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v105, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v119, v120, v121
	v_max3_f32 v133, v122, v123, v124
	v_max3_f32 v134, v125, v126, v127
	v_max3_f32 v137, v102, v108, v109
	v_max_f32_e32 v139, v106, v107
	v_max3_f32 v79, v79, v130, v131
	v_max3_f32 v130, v135, v113, v136
	v_max3_f32 v131, v132, v133, v134
.Ltmp4:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s8, 0xff800000, v81
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v138, v105, v139
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v79, v130, v137, v79
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_u16_d16 v17, v58
	ds_load_u16_d16 v18, v58 offset:256
	ds_load_u16_d16 v19, v58 offset:512
	ds_load_u16_d16 v20, v58 offset:768
	ds_load_u16_d16 v21, v58 offset:1024
	ds_load_u16_d16 v22, v58 offset:1280
	ds_load_u16_d16 v23, v58 offset:1536
	ds_load_u16_d16 v24, v58 offset:1792
	ds_load_u16_d16 v25, v58 offset:2048
	ds_load_u16_d16 v26, v58 offset:2304
	ds_load_u16_d16 v27, v58 offset:2560
	ds_load_u16_d16 v28, v58 offset:2816
	ds_load_u16_d16 v29, v58 offset:3072
	ds_load_u16_d16 v30, v58 offset:3328
	ds_load_u16_d16 v31, v58 offset:3584
	ds_load_u16_d16 v32, v58 offset:3840
	ds_load_u16_d16 v33, v58 offset:4096
	ds_load_u16_d16 v34, v58 offset:4352
	ds_load_u16_d16 v35, v58 offset:4608
	ds_load_u16_d16 v36, v58 offset:4864
	ds_load_u16_d16 v37, v58 offset:5120
	ds_load_u16_d16 v38, v58 offset:5376
	ds_load_u16_d16 v39, v58 offset:5632
	ds_load_u16_d16 v40, v58 offset:5888
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v79, v79, v131, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v130, v79, s66, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v79, v81, v79, v130
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v79
	v_sub_f32_e32 v126, v126, v79
	v_sub_f32_e32 v100, v100, v79
	v_sub_f32_e32 v120, v120, v79
	v_sub_f32_e32 v127, v127, v79
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v120, v120
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v106, v79
	v_sub_f32_e32 v104, v104, v79
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v79
	v_sub_f32_e32 v123, v123, v79
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s2
	v_cndmask_b32_e64 v126, 0, v126, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v100, 0, v100, s2
	v_cndmask_b32_e64 v120, 0, v120, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v104
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v127, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v86.l, v100.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v79
	v_sub_f32_e32 v116, v116, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v106, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v86, 1, v86
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v116, v116
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v104, s2
	v_cndmask_b32_e64 v119, 0, v119, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v79
	v_sub_f32_e32 v124, v124, v79
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_dual_sub_f32 v130, v81, v79 :: v_dual_add_f32 v139, v119, v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s2
	v_cndmask_b32_e64 v116, 0, v116, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v98, v79
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v78.l, v117.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v105, v105, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v123, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v78, 1, v78
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v97, v97, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v124, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v82.l, v114.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v107, v107, v79 :: v_dual_add_f32 v136, v114, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v81, v97
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v79
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v82, 1, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v105, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v101, v101, v79
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v103, v103
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v90.l, v119.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v101
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.l, v116.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v107, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v79
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v92.l, v123.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s2
	v_cndmask_b32_e64 v98, 0, v98, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.l, v81.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v94.l, v127.h
	v_and_b32_e32 v90, 1, v90
	v_mov_b16_e64 v96.l, v133.h
	v_and_b32_e32 v89, 1, v89
	v_cmp_o_f32_e64 s5, v81, v81
	v_and_b32_e32 v94, 1, v94
	v_and_b32_e32 v92, 1, v92
	v_cmp_o_f32_e64 s13, v114, v114
	v_cmp_o_f32_e64 s15, v116, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v118, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v79
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v82, v114, v82, 0x7fff
	v_add3_u32 v89, v116, v89, 0x7fff
	v_cmp_o_f32_e64 s12, v117, v117
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v116, v118
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v129
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v101, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v119, v119
	v_add3_u32 v78, v117, v78, 0x7fff
	v_add3_u32 v90, v119, v90, 0x7fff
	v_add3_u32 v92, v123, v92, 0x7fff
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v100, v129
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v79
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v130, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v90.l, 0x7fff, v78.h, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v97, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v102, v102, v79
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v100, v100
	v_add3_u32 v86, v100, v86, 0x7fff
	v_mov_b16_e32 v84.l, v97.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v109, v79
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v97, v97
	v_cmp_o_f32_e64 s10, v129, v129
	v_and_b32_e32 v84, 1, v84
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v111, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v128, v79
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v93.l, v125.h
	v_add3_u32 v84, v97, v84, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v86.h, s4
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v111, v112
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v102, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v109, s2
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v136, v137
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v83.l, v111.h
	v_mov_b16_e32 v87.l, v101.h
	v_mov_b16_e32 v88.l, v102.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v121, v121, v79
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v138, v139
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v111, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v128, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v88, 1, v88
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v108, v108, v79 :: v_dual_add_f32 v107, v102, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v103, s2
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v97, v81
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v85.l, v113.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v122, v79
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v108, v108
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v113, v98
	s_delay_alu instid0(TRANS32_DEP_2)
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v85, 1, v85
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v122
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v97, 0, v130, s8
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v141, v103, v104
	v_dual_add_f32 v103, v123, v124 :: v_dual_add_f32 v104, v125, v126
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v91.l, v121.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v108, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v85, v113, v85, 0x7fff
	v_cmp_o_f32_e64 s7, v101, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v122, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v115, v115, v79 :: v_dual_add_f32 v106, v101, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v98, v98
	v_cndmask_b16 v119.l, 0x7fff, v84.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v121, v122
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v142, v105, v106
	v_add_f32_e32 v106, v131, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v105, v127, v128 :: v_dual_add_f32 v138, v140, v103
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v103, 1, v80
	v_mov_b16_e32 v80.l, v98.h
	v_and_b32_e32 v83, 1, v83
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v139, v104, v105 :: v_dual_and_b32 v96, 1, v96
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp33:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v115, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v113, v113
	v_add3_u32 v81, v81, v103, 0x7fff
	v_and_b32_e32 v113, 1, v80
	v_mov_b16_e64 v80.l, v129.h
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v117, v115
	v_add_f32_e32 v116, v137, v138
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v83, v111, v83, 0x7fff
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v141, v142
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v119.h, 0x7fff, v81.h, s5
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v107, v135
	v_add_f32_e32 v107, v133, v134
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v87, 1, v87
	v_and_b32_e32 v81, 1, v80
	v_mov_b16_e32 v80.l, v108.h
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v135, v136
	v_add_f32_e32 v140, v106, v107
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v87, v101, v87, 0x7fff
	v_add3_u32 v84, v98, v113, 0x7fff
	v_add3_u32 v88, v102, v88, 0x7fff
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v117, v139, v140
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v91, v121, v91, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v85.h, s2
	v_cndmask_b16 v88.l, 0x7fff, v87.h, s7
	v_cndmask_b16 v91.l, 0x7fff, v82.h, s13
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v82, v111, v114 :: v_dual_add_f32 v85, v116, v117
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v92.l, 0x7fff, v83.h, s14
	v_and_b32_e32 v83, 1, v80
	v_permlanex16_b32 v87, v119, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v78.h, 0x7fff, v84.h, s8
	v_mov_b16_e32 v80.l, v109.h
	v_cmp_o_f32_e64 s9, v102, v102
	v_cmp_o_f32_e64 s11, v108, v108
	v_add3_u32 v84, v129, v81, 0x7fff
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v82, v85
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v83, v108, v83, 0x7fff
	v_perm_b32 v81, v87, v119, v73
	v_permlanex16_b32 v108, v78, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v82, v87, v119, v74
	v_and_b32_e32 v87, 1, v80
	v_mov_b16_e32 v80.l, v115.h
	v_cndmask_b16 v89.l, 0x7fff, v88.h, s9
	v_cndmask_b16 v86.h, 0x7fff, v84.h, s10
	v_cndmask_b16 v88.h, 0x7fff, v83.h, s11
	v_perm_b32 v83, v108, v78, v73
	v_perm_b32 v84, v108, v78, v74
	v_and_b32_e32 v108, 1, v80
	v_mov_b16_e32 v80.l, v110.h
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v116, v85, s66, 0xfedcba98 op_sel:[1,0]
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v93, 1, v93
	v_cmp_o_f32_e64 s19, v109, v109
	v_cmp_o_f32_e64 s20, v115, v115
	v_permlanex16_b32 v117, v86, s66, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v87, v109, v87, 0x7fff
	v_permlanex16_b32 v109, v88, s66, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v108, v115, v108, 0x7fff
	v_and_b32_e32 v115, 1, v80
	v_mov_b16_e32 v80.l, v112.h
	v_mov_b16_e64 v95.l, v131.h
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v85, v116
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v93, v125, v93, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v97
	v_mul_f32_e32 v2, v2, v97
	v_mul_f32_e32 v3, v3, v97
	v_mul_f32_e32 v4, v4, v97
	v_mul_f32_e32 v5, v5, v97
	v_mul_f32_e32 v6, v6, v97
	v_mul_f32_e32 v8, v8, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v110, v110
	v_cndmask_b16 v93.l, 0x7fff, v89.h, s15
	v_perm_b32 v85, v117, v86, v73
	v_perm_b32 v86, v117, v86, v74
	v_cndmask_b16 v89.h, 0x7fff, v87.h, s19
	v_perm_b32 v87, v109, v88, v73
	v_perm_b32 v88, v109, v88, v74
	v_add3_u32 v109, v110, v115, 0x7fff
	v_and_b32_e32 v110, 1, v80
	v_mov_b16_e32 v80.l, v118.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v100, v58 offset:6144
	ds_load_u16_d16 v101, v58 offset:6400
	ds_load_u16_d16 v102, v58 offset:6656
	ds_load_u16_d16 v103, v58 offset:6912
	ds_load_u16_d16 v104, v58 offset:7168
	ds_load_u16_d16 v105, v58 offset:7424
	ds_load_u16_d16 v106, v58 offset:7680
	ds_load_u16_d16 v107, v58 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v58 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v58 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v58 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v58 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v58 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v58 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v58 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v58 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v58 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v58 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v58 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v58 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v58 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v58 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v58 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v58 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v33, v58 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v34, v58 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v35, v58 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v36, v58 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v37, v58 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v38, v58 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v39, v58 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v40, v58 offset:6016
	.loc	1 897 23                        ; attention.py:897:23
	v_dual_fmac_f32 v78, v99, v97 :: v_dual_and_b32 v95, 1, v95
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v121, v121
	v_cmp_o_f32_e64 s18, v123, v123
	v_cmp_o_f32_e64 s22, v112, v112
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[81:88], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v112, v110, 0x7fff
	v_and_b32_e32 v22, 1, v80
	v_mov_b16_e32 v80.l, v120.h
	v_add3_u32 v94, v127, v94, 0x7fff
	v_add3_u32 v95, v131, v95, 0x7fff
	v_add3_u32 v96, v133, v96, 0x7fff
	v_cndmask_b16 v94.l, 0x7fff, v90.h, s16
	v_cndmask_b16 v95.l, 0x7fff, v91.h, s17
	v_cndmask_b16 v96.l, 0x7fff, v92.h, s18
	v_cndmask_b16 v90.h, 0x7fff, v108.h, s20
	v_cndmask_b16 v91.h, 0x7fff, v109.h, s21
	v_cndmask_b16 v92.h, 0x7fff, v21.h, s22
	v_and_b32_e32 v81, 1, v80
	v_mov_b16_e32 v80.l, v122.h
	v_cmp_o_f32_e64 s23, v125, v125
	v_cmp_o_f32_e64 s24, v127, v127
	v_cmp_o_f32_e64 s27, v118, v118
	v_cmp_o_f32_e64 s28, v120, v120
	v_permlanex16_b32 v108, v89, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v90, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v91, s66, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v24, v118, v22, 0x7fff
	v_permlanex16_b32 v82, v92, s66, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v81, v120, v81, 0x7fff
	v_and_b32_e32 v83, 1, v80
	v_mov_b16_e32 v80.l, v124.h
	v_cndmask_b16 v98.l, 0x7fff, v93.h, s23
	v_cndmask_b16 v111.l, 0x7fff, v94.h, s24
	v_perm_b32 v17, v108, v89, v73
	v_perm_b32 v18, v108, v89, v74
	v_perm_b32 v19, v20, v90, v73
	v_perm_b32 v20, v20, v90, v74
	v_perm_b32 v21, v23, v91, v73
	v_perm_b32 v22, v23, v91, v74
	v_cndmask_b16 v93.h, 0x7fff, v24.h, s27
	v_perm_b32 v23, v82, v92, v73
	v_perm_b32 v24, v82, v92, v74
	v_cndmask_b16 v94.h, 0x7fff, v81.h, s28
	v_add3_u32 v81, v122, v83, 0x7fff
	v_and_b32_e32 v83, 1, v80
	v_mov_b16_e32 v80.l, v126.h
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[17:24], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v131, v131
	v_cmp_o_f32_e64 s26, v133, v133
	v_cmp_o_f32_e64 s29, v122, v122
	v_and_b32_e32 v22, 1, v80
	v_mov_b16_e64 v80.l, v128.h
	v_cmp_o_f32_e64 s30, v124, v124
	v_cmp_o_f32_e64 s31, v126, v126
	v_add3_u32 v21, v124, v83, 0x7fff
	v_add3_u32 v25, v126, v22, 0x7fff
	v_and_b32_e32 v24, 1, v80
	v_mov_b16_e64 v80.l, v132.h
	v_cmp_o_f32_e64 s33, v128, v128
	v_cndmask_b16 v113.l, 0x7fff, v95.h, s25
	v_cndmask_b16 v114.l, 0x7fff, v96.h, s26
	v_cndmask_b16 v95.h, 0x7fff, v81.h, s29
	v_and_b32_e32 v27, 1, v80
	v_mov_b16_e64 v80.l, v134.h
	v_cndmask_b16 v96.h, 0x7fff, v21.h, s30
	v_cndmask_b16 v98.h, 0x7fff, v25.h, s31
	v_add3_u32 v25, v128, v24, 0x7fff
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v100, v58 offset:6272
	ds_load_u16_d16_hi v101, v58 offset:6528
	ds_load_u16_d16_hi v102, v58 offset:6784
	ds_load_u16_d16_hi v103, v58 offset:7040
	ds_load_u16_d16_hi v104, v58 offset:7296
	ds_load_u16_d16_hi v105, v58 offset:7552
	ds_load_u16_d16_hi v106, v58 offset:7808
	ds_load_u16_d16_hi v107, v58 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v28, 1, v80
	v_cmp_o_f32_e64 s34, v132, v132
	v_cmp_o_f32_e64 s35, v134, v134
	v_permlanex16_b32 v82, v93, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v94, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v95, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v96, s66, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v27, v132, v27, 0x7fff
	v_cndmask_b16 v111.h, 0x7fff, v25.h, s33
	v_add3_u32 v25, v134, v28, 0x7fff
	v_perm_b32 v17, v82, v93, v73
	v_perm_b32 v18, v82, v93, v74
	v_perm_b32 v19, v20, v94, v73
	v_perm_b32 v20, v20, v94, v74
	v_perm_b32 v21, v23, v95, v73
	v_perm_b32 v22, v23, v95, v74
	v_perm_b32 v23, v26, v96, v73
	v_perm_b32 v24, v26, v96, v74
	v_cndmask_b16 v113.h, 0x7fff, v27.h, s34
	v_cndmask_b16 v114.h, 0x7fff, v25.h, s35
	v_permlanex16_b32 v26, v98, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[17:24], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v20, v111, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v113, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v114, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v26, v98, v73
	v_perm_b32 v18, v26, v98, v74
	v_perm_b32 v19, v20, v111, v73
	v_perm_b32 v20, v20, v111, v74
	v_perm_b32 v21, v22, v113, v73
	v_perm_b32 v22, v22, v113, v74
	v_perm_b32 v23, v24, v114, v73
	v_perm_b32 v24, v24, v114, v74
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[100:107], v[17:24], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v79, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v78, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s61, s61, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s60, s61
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v79 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v78, vcc_lo
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp53:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp68:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp69:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp71:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp72:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp101:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v13 :: v_dual_mov_b32 v19, v15
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp121:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp123:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp125:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp127:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xe0, v51
	v_and_b32_e32 v1, 28, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s47, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp128:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 149
		.amdhsa_next_free_sgpr 67
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 149
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8016
; TotalNumSgprs: 69
; NumVgprs: 149
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 149
; Occupancy: 9
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     149
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
