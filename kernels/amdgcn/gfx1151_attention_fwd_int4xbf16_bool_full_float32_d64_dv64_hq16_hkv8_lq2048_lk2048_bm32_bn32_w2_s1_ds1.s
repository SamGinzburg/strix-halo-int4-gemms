	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[52:55], s[0:1], 0x60
	v_dual_mov_b32 v42, 0x7531 :: v_dual_lshlrev_b32 v81, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 1, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v41, 0x6420 :: v_dual_and_b32 v36, 16, v81
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s6, v3
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s68, s6, s2
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v44, 0x7632 :: v_dual_and_b32 v39, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v38
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_lshlrev_b32 v47, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v63, v3, 16, v39
	v_bfe_u32 v68, v0, 4, 1
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[52:53], null, s52, v3, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s52, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[56:59], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s52, s68, v[52:53]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v63
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v50, v47, 30, v68
	v_dual_mov_b32 v43, 0x5410 :: v_dual_and_b32 v46, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_lshl_add_u32 v84, v39, 1, 0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s68, v63
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s6, s0, 4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v37, 3, v0
	v_and_b32_e32 v49, 24, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v46
	v_dual_mov_b32 v18, v24 :: v_dual_lshlrev_b32 v85, 2, v50
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v26, v24
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v37, 56, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v88, 4, v85
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v40, v1, s[60:63], 0 offen
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v16, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_xor_b32_e32 v83, v81, v49
	v_and_b32_e32 v49, 24, v47
	v_cndmask_b32_e64 v41, 0x7531, v41, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s7, s1, 0x10007
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s7, s1, s7
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s53, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s53, v45, v[37:38]
	v_lshl_or_b32 v86, v39, 5, v49
	v_cndmask_b32_e64 v39, 0x6420, v42, s0
	v_lshl_or_b32 v41, v41, 8, v41
	v_mul_lo_u32 v38, s5, v38
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v48, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v20, v24 :: v_dual_and_b32 v41, 0x750031, v41
	v_lshl_or_b32 v39, v39, 8, v39
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s3, s6, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s55, s6
	v_mov_b32_e32 v8, v24
	s_add_i32 s4, s4, s6
	v_xor_b32_e32 v42, 8, v86
	v_lshl_or_b32 v41, v41, 4, v41
	v_and_b32_e32 v39, 0x750031, v39
	v_add3_u32 v95, s4, v36, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v48
	v_dual_mov_b32 v29, v24 :: v_dual_add_nc_u32 v92, 0, v42
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v96, 0x7050301, v41
	v_lshl_or_b32 v36, v39, 4, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0x1054, v43, s4
	v_cndmask_b32_e64 v43, 0x3276, v44, s4
	v_mov_b32_e32 v12, v24
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v46, 6, v46
	v_and_b32_e32 v97, 0x7050301, v36
	v_lshl_or_b32 v36, v42, 8, v42
	v_lshl_or_b32 v42, v43, 8, v43
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v19, v24
	v_xor_b32_e32 v50, 8, v83
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s7, s7, 0x80000
	v_and_or_b32 v87, v47, 60, v46
	v_xor_b32_e32 v46, 16, v86
	v_xor_b32_e32 v47, 24, v86
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s8, s54, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s7, s7
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_mov_b32 v99, 0xff800000
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s7, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v73, 4, v0
	v_dual_mov_b32 v31, v24 :: v_dual_add_nc_u32 v94, 0, v47
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v91, 0, v50
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v93, 0, v46
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v89, v24
	v_or_b32_e32 v80, 2, v68
	v_or_b32_e32 v79, 4, v68
	v_or_b32_e32 v78, 6, v68
	v_or_b32_e32 v77, 8, v68
	v_or_b32_e32 v76, 10, v68
	v_or_b32_e32 v75, 12, v68
	v_or_b32_e32 v74, 14, v68
	v_or_b32_e32 v72, 16, v68
	v_or_b32_e32 v71, 18, v68
	v_or_b32_e32 v70, 20, v68
	v_or_b32_e32 v69, 22, v68
	v_or_b32_e32 v67, 24, v68
	v_or_b32_e32 v66, 26, v68
	v_or_b32_e32 v65, 28, v68
	v_or_b32_e32 v64, 30, v68
	v_xor_b32_e32 v90, 64, v87
	s_mov_b32 s44, 0
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s7, s7, 0xfffff800
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s69, 0x76543210
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s70, s44
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_add_i32 s54, s7, s3
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v37, v85, v32
	ds_bpermute_b32 v32, v88, v32
	ds_bpermute_b32 v38, v85, v33
	ds_bpermute_b32 v33, v88, v33
	ds_bpermute_b32 v39, v85, v34
	ds_bpermute_b32 v34, v88, v34
	ds_bpermute_b32 v41, v85, v35
	ds_bpermute_b32 v35, v88, v35
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v40, 16, v40
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v54, v32, v37, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v98, s8, v40
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v55, v33, v38, s4
	v_cndmask_b32_e64 v58, v38, v33, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v59, v34, v39, s4
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[56:57], null, s53, 24, v[53:54]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v57, v37, v32, s4
	v_and_b32_e32 v32, 0x540054, v36
	v_and_b32_e32 v36, 0x760076, v42
	v_cndmask_b32_e64 v61, v39, v34, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v60, v35, v41, s4
	v_cndmask_b32_e64 v62, v41, v35, s4
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v14, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v100, 0x5040504, v32
	v_and_b32_e32 v101, 0x7060706, v33
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e32 v103.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v104.h, v119.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v119, v35
	v_cvt_f32_i32_e32 v122, v36
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v35, 8, v48
	v_lshrrev_b32_e32 v36, 8, v50
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v120, 8, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v116.h, v115.l
	v_mov_b16_e32 v115.l, v103.l
	v_mov_b16_e32 v115.h, v114.l
	v_mov_b16_e32 v111.h, v110.l
	v_mov_b16_e32 v110.l, v103.l
	v_mov_b16_e32 v110.h, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v125, v98, v33
	v_mul_f32_e32 v124, v98, v32
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v32.l, 0xff, v48.l
	v_and_b16 v32.h, 0xff, v35.l
	v_and_b16 v33.l, 0xff, v48.h
	v_lshrrev_b32_e32 v48, 24, v48
	v_and_b16 v35.l, 0xff, v50.l
	v_and_b16 v35.h, 0xff, v36.l
	v_and_b16 v36.l, 0xff, v50.h
	v_lshrrev_b32_e32 v50, 24, v50
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v126, v98, v34
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v33.h, 0xff, v49.l
	v_and_b16 v34.l, 0xff, v120.l
	v_and_b16 v34.h, 0xff, v49.h
	v_lshrrev_b32_e32 v49, 24, v49
	v_cmp_ne_u16_e64 s8, 0, v48.l
	v_cmp_ne_u16_e64 s15, 0, v36.l
	v_cmp_ne_u16_e64 s16, 0, v50.l
	v_cmp_ne_u16_e64 s5, 0, v32.h
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v121, 8, v51
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v32.l
	v_cmp_ne_u16_e64 s6, 0, v33.l
	v_cmp_ne_u16_e64 s18, 0, v34.l
	v_cmp_ne_u16_e64 s20, 0, v49.l
	v_cmp_ne_u16_e64 s13, 0, v35.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s12, vcc_lo, s8
	s_and_b32 s15, vcc_lo, s15
	s_and_b32 s16, vcc_lo, s16
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v123, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v36.h, 0xff, v51.l
	v_and_b16 v37.h, 0xff, v51.h
	v_lshrrev_b32_e32 v51, 24, v51
	v_cmp_ne_u16_e64 s19, 0, v34.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v32, 0, 1, s12
	v_cndmask_b32_e64 v49, 0, 1, s15
	v_cndmask_b32_e64 v34, 0, 1, s16
	s_and_b32 s9, vcc_lo, s5
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v121.l
	v_cmp_ne_u16_e64 s14, 0, v33.h
	v_cmp_ne_u16_e64 s11, 0, v35.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s10, vcc_lo, s6
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s21, vcc_lo, s20
	v_cndmask_b32_e64 v33, 0, 1, s9
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s22, 0, v36.h
	v_cmp_ne_u16_e64 s25, 0, v51.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v36, 0, 1, s7
	v_cndmask_b32_e64 v35, 0, 1, s10
	v_cndmask_b32_e64 v48, 0, 1, s13
	v_cndmask_b32_e64 v51, 0, 1, s18
	v_cndmask_b32_e64 v121, 0, 1, s21
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v49.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s17, vcc_lo, s14
	s_and_b32 s19, vcc_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v37.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s11
	v_cndmask_b32_e64 v50, 0, 1, s17
	v_cndmask_b32_e64 v120, 0, 1, s19
	v_lshlrev_b16 v32.h, 8, v33.l
	v_mov_b16_e32 v33.l, v36.l
	v_mov_b16_e32 v36.l, v48.l
	v_or_b16 v48.h, v35.l, v32.l
	v_mov_b16_e32 v32.l, v121.l
	v_or_b16 v49.h, v34.l, v33.h
	v_mov_b16_e32 v34.l, v51.l
	s_and_b32 s20, vcc_lo, s22
	s_and_b32 s22, vcc_lo, s23
	s_and_b32 s25, vcc_lo, s25
	v_cndmask_b32_e64 v128, 0, 1, s22
	v_cndmask_b32_e64 v130, 0, 1, s25
	v_or_b16 v48.l, v33.l, v32.h
	v_lshlrev_b16 v32.h, 8, v36.l
	v_mov_b16_e32 v33.l, v37.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_mov_b16_e32 v36.l, v120.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v50.l
	s_and_b32 s23, vcc_lo, s24
	v_cndmask_b32_e64 v127, 0, 1, s20
	v_cndmask_b32_e64 v129, 0, 1, s23
	v_mov_b16_e64 v35.l, v130.l
	v_mov_b16_e64 v37.l, v128.l
	v_or_b16 v49.l, v33.l, v32.h
	v_or_b16 v32.h, v36.l, v32.l
	v_or_b16 v32.l, v34.l, v33.h
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e64 v35.l, v129.l
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v127.l
	v_perm_b32 v36, v32, v48, v96
	v_perm_b32 v32, v32, v48, v97
	v_or_b16 v33.h, v35.l, v34.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v33.l, v37.l, v35.h
	ds_bpermute_b32 v36, v85, v36
	ds_bpermute_b32 v32, v88, v32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v112.h, v111.l
	v_mov_b16_e32 v111.l, v103.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v37, v33, v49, v96
	v_perm_b32 v33, v33, v49, v97
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v109.h, v108.l
	v_mov_b16_e32 v108.l, v103.l
	v_mov_b16_e32 v108.h, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v37, v85, v37
	ds_bpermute_b32 v33, v88, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v107.l, v103.l
	v_mov_b16_e32 v107.h, v106.l
	v_mov_b16_e32 v106.l, v103.l
	v_mov_b16_e32 v106.h, v105.l
	v_mov_b16_e32 v105.l, v103.l
	v_mov_b16_e32 v105.h, v104.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v35, v98, v122
	v_mul_f32_e32 v48, v98, v123
	v_mul_f32_e32 v34, v98, v119
	v_mul_f32_e32 v38, v98, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v104.l, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_mul_f32_e32 v108, v34, v108
	v_dual_mul_f32 v34, v35, v107 :: v_dual_mul_f32 v35, v48, v106
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v107, v36, v32, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v38, v105
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v105, v32, v36, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v98, v39
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v118.h, v116.l
	v_mov_b16_e32 v116.l, v103.l
	v_mov_b16_e32 v113.h, v112.l
	v_mov_b16_e32 v112.l, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_dual_mul_f32 v47, v98, v47 :: v_dual_and_b32 v36, 0x100, v105
	v_dual_mul_f32 v104, v39, v104 :: v_dual_mul_f32 v43, v98, v43
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v103.h, v118.l
	v_mov_b16_e32 v118.l, v103.l
	v_mov_b16_e32 v114.h, v113.l
	v_mov_b16_e32 v113.l, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v98, v42
	v_dual_mul_f32 v46, v98, v46 :: v_dual_and_b32 v39, 1, v107
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v117.h, v117.l
	v_mov_b16_e32 v117.l, v103.l
	v_mov_b16_e32 v114.l, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v98, v41
	v_mul_f32_e32 v40, v98, v40
	v_dual_mul_f32 v112, v47, v112 :: v_dual_mul_f32 v45, v98, v45
	v_mul_f32_e32 v50, v43, v116
	v_mul_f32_e32 v44, v98, v44
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v106, v33, v37, s4
	v_cndmask_b32_e64 v32, v37, v33, s4
	v_and_b32_e32 v33, 1, v105
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v109.l, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v42, v118
	v_dual_mul_f32 v51, v46, v113 :: v_dual_and_b32 v38, 0x100, v106
	v_dual_mul_f32 v41, v41, v117 :: v_dual_and_b32 v46, 0x100, v107
	v_dual_mul_f32 v40, v40, v103 :: v_dual_mul_f32 v43, v45, v114
	v_dual_mul_f32 v42, v44, v115 :: v_dual_mul_f32 v45, v125, v110
	v_mul_f32_e32 v44, v124, v111
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 1, v33
	v_cmp_eq_u32_e64 s8, 1, v39
	v_and_b32_e32 v47, 1, v32
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v109, v126, v109 :: v_dual_and_b32 v110, 0x100, v32
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v36
	v_cmp_eq_u32_e64 s14, 0, v46
	v_and_b32_e32 v37, 1, v106
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v40, s27
	v_cndmask_b32_e64 v115, 0xff800000, v44, s8
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 1, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, v41, 0xff800000, s28
	v_cndmask_b32_e64 v117, v45, 0xff800000, s14
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 0, v110
	v_cmp_eq_u32_e64 s24, 1, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, v115, v111, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s26, 0, v38
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v34, s5
	v_cndmask_b32_e64 v34, v111, v115, s4
	v_cndmask_b32_e64 v110, v35, 0xff800000, s6
	v_cndmask_b32_e64 v35, v117, v113, s4
	v_cndmask_b32_e64 v114, 0xff800000, v42, s24
	ds_bpermute_b32 v119, v87, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v33, s53, 3, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, v43, 0xff800000, s26
	ds_bpermute_b32 v120, v90, v34
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v34, s53, 4, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v113, v117, s4
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s30, s30, s53
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v121, v87, v35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, s30, v53, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, v118, v114, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v33, s30, v33, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, v116, v110, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, s30, v34, 1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v122, v90, v36
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v36, s30, v56, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, v114, v118, s4
	v_cndmask_b32_e64 v39, v110, v116, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v123, v87, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v33, s1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v126, v90, v40
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v34, s1
	v_cndmask_b32_e64 v44, 0x80000000, v36, s1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v124, v90, v38
	ds_bpermute_b32 v125, v87, v39
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v127, 0x10000, v32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v137, v111, v113 :: v_dual_and_b32 v128, 0x1000000, v32
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[32:35], v35, s[40:43], 0 offen
	buffer_load_b128 v[36:39], v37, s[40:43], 0 offen
	buffer_load_b128 v[40:43], v40, s[40:43], 0 offen
	buffer_load_b128 v[44:47], v44, s[40:43], 0 offen
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v129, 0x10000, v107
	v_cmp_eq_u32_e64 s3, 0, v127
	v_cmp_eq_u32_e64 s30, 0, v128
	v_and_b32_e32 v107, 0x1000000, v107
	v_and_b32_e32 v128, 0x10000, v105
	v_cmp_eq_u32_e64 s33, 0, v129
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, v48, 0xff800000, s3
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v48, 0x10000, v106
	v_and_b32_e32 v106, 0x1000000, v106
	v_cmp_eq_u32_e64 s35, 0, v107
	v_cmp_eq_u32_e64 s36, 0, v128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, v104, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v48
	v_cmp_eq_u32_e64 s34, 0, v106
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, v109, 0xff800000, s33
	v_cndmask_b32_e64 v107, v108, 0xff800000, s35
	v_cndmask_b32_e64 v108, v49, 0xff800000, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v49, 0x1000000, v105
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, v112, 0xff800000, s34
	v_cndmask_b32_e64 v130, v51, 0xff800000, s31
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v133, v122, v121, s0
	v_cndmask_b32_e64 v128, v109, v108, s4
	v_cndmask_b32_e64 v129, v108, v109, s4
	v_cndmask_b32_e64 v51, v104, v106, s4
	v_cndmask_b32_e64 v105, v106, v104, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s37, 0, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, v127, v130, s4
	v_cndmask_b32_e64 v112, v130, v127, s4
	ds_bpermute_b32 v51, v87, v51
	ds_bpermute_b32 v105, v90, v105
	v_cndmask_b32_e64 v131, v50, 0xff800000, s37
	ds_bpermute_b32 v49, v87, v128
	ds_bpermute_b32 v50, v90, v129
	ds_bpermute_b32 v128, v87, v48
	ds_bpermute_b32 v112, v90, v112
	v_cndmask_b32_e64 v48, v107, v131, s4
	v_cndmask_b32_e64 v129, v131, v107, s4
	v_cndmask_b32_e64 v121, v121, v122, s0
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v122, v124, v123, s0
	v_cndmask_b32_e64 v123, v123, v124, s0
	ds_bpermute_b32 v132, v87, v48
	ds_bpermute_b32 v129, v90, v129
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v124, v126, v125, s0
	v_cndmask_b32_e64 v125, v125, v126, s0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v120, v120
	v_max_f32_e32 v126, v119, v119
	v_max3_f32 v138, v131, v114, v116
.Ltmp4:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v102
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v105, v51, s0
	v_cndmask_b32_e64 v105, v51, v105, s0
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v50, v49, s0
	v_cndmask_b32_e64 v136, v49, v50, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v123, v124, v125
	v_max3_f32 v50, v128, v112, v134
	v_max_f32_e32 v48, v126, v48
	v_max3_f32 v126, v118, v110, v127
	v_max3_f32 v51, v121, v135, v136
.Ltmp6:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v49, v50, v105
	v_max3_f32 v50, v132, v129, v122
.Ltmp8:
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v48, v133, v51
	v_max3_f32 v51, v117, v109, v107
.Ltmp10:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v48, v50, v49
	v_max3_f32 v49, v51, v126, v104
	v_max3_f32 v50, v130, v106, v115
	v_max3_f32 v51, v137, v108, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v126, v48
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v51, v50, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v50, v49, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v126, v126
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, v120, v119, s0
	v_cndmask_b32_e64 v119, v119, v120, s0
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v49, v102, v49, v50
	v_max_f32_e32 v82, v82, v82
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v48, v51
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, v112, v128, s0
	v_cndmask_b32_e64 v112, v128, v112, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v49
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v51, v102, v49
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v82, v82, v50 :: v_dual_sub_f32 v131, v131, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, v129, v132, s0
	v_cndmask_b32_e64 v129, v132, v129, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v48, v99, v99 :: v_dual_sub_f32 v125, v125, v82
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v102, v126, v82 :: v_dual_sub_f32 v115, v115, v49
	v_sub_f32_e32 v119, v119, v82
	v_dual_sub_f32 v126, v133, v82 :: v_dual_sub_f32 v107, v107, v49
	v_sub_f32_e32 v121, v121, v82
	v_dual_sub_f32 v132, v135, v82 :: v_dual_sub_f32 v117, v117, v49
	v_sub_f32_e32 v133, v136, v82
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v125, v125
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v105, v105, v82 :: v_dual_sub_f32 v108, v108, v49
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v51, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v102, s7
	v_cndmask_b32_e64 v119, 0, v119, s9
	v_cndmask_b32_e64 v126, 0, v126, s10
	v_cndmask_b32_e64 v121, 0, v121, s12
	v_cndmask_b32_e64 v132, 0, v132, s17
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v133, 0, v133, s18
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v82
	v_sub_f32_e32 v124, v124, v82
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s16
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v102, v119
	v_add_f32_e32 v119, v126, v121
	v_add_f32_e32 v121, v132, v133
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v51, 0, v51, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v128, v128, v82 :: v_dual_sub_f32 v109, v109, v49
	v_sub_f32_e32 v129, v129, v82
	v_dual_sub_f32 v122, v122, v82 :: v_dual_sub_f32 v127, v127, v49
	v_sub_f32_e32 v123, v123, v82
	v_dual_sub_f32 v112, v112, v82 :: v_dual_mul_f32 v25, v25, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s23
	v_cndmask_b32_e64 v105, 0, v105, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v120, v120, v82
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v112, v112
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v134, v105
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v113, v113
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v48, v48, v50 :: v_dual_sub_f32 v111, v111, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v128, s19
	v_cndmask_b32_e64 v129, 0, v129, s21
	v_cndmask_b32_e64 v122, 0, v122, s11
	v_cndmask_b32_e64 v123, 0, v123, s13
	v_cndmask_b32_e64 v124, 0, v124, s15
	v_cndmask_b32_e64 v112, 0, v112, s22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v120, 0, v120, s20
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v111, v111
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v126, v128, v129 :: v_dual_mul_f32 v23, v23, v51
.Ltmp24:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v9, v9, v51 :: v_dual_add_f32 v112, v120, v112
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v122, v122, v123 :: v_dual_add_f32 v123, v124, v125
.Ltmp26:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, v113, 0, s28
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v49
	v_dual_sub_f32 v116, v116, v49 :: v_dual_mul_f32 v27, v27, v51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v109, v109
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v105, v112, v105 :: v_dual_add_f32 v120, v122, v123
	v_dual_add_f32 v102, v102, v119 :: v_dual_add_f32 v119, v121, v126
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v121.l, v113.h
	v_mov_b16_e32 v121.h, v103.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v111, s27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, v108, 0, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v121, 1, v121
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v105, v120, v105 :: v_dual_add_f32 v102, v102, v119
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, v131, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v122.l, v111.h
	v_mov_b16_e32 v122.h, v103.l
	v_add3_u32 v121, v113, v121, 0x7fff
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v102, v102, v105 :: v_dual_mul_f32 v11, v11, v51
.Ltmp32:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, v109, 0, s33
	v_cndmask_b32_e64 v109, v112, 0, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v113, v113
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v130, v130, v49 :: v_dual_mul_f32 v29, v29, v51
	v_dual_sub_f32 v106, v106, v49 :: v_dual_mul_f32 v31, v31, v51
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v15, v15, v51 :: v_dual_and_b32 v122, 1, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.l, v108.h
	v_mov_b16_e32 v113.h, v103.l
	v_cndmask_b16 v123.h, 0x7fff, v121.h, s3
	v_mov_b16_e32 v121.l, v119.h
	v_mov_b16_e32 v121.h, v103.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, v116, 0, s26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v106, v106
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v122, v111, v122, 0x7fff
	v_and_b32_e32 v113, 1, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v111, v111
	v_and_b32_e32 v111, 1, v121
	v_mov_b16_e32 v121.l, v116.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v108, v113, 0x7fff
	v_mov_b16_e32 v124.l, v114.h
	v_mov_b16_e32 v124.h, v103.l
	v_add3_u32 v111, v119, v111, 0x7fff
	v_cmp_o_f32_e64 s7, v119, v119
	v_cmp_o_f32_e64 s9, v108, v108
	v_and_b32_e32 v119, 1, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, v130, 0, s31
	v_cndmask_b32_e64 v106, v106, 0, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v51 :: v_dual_and_b32 v108, 1, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v123.l, 0x7fff, v122.h, s3
	v_cndmask_b16 v111.l, 0x7fff, v113.h, s9
	v_add3_u32 v113, v116, v119, 0x7fff
	v_cmp_o_f32_e64 s3, v116, v116
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v107, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v111.h, 0x7fff, v111.h, s7
	v_add3_u32 v108, v114, v108, 0x7fff
	v_cmp_o_f32_e64 s7, v114, v114
	v_mov_b16_e32 v114.l, v106.h
	v_mov_b16_e32 v114.h, v103.l
	v_mov_b16_e32 v116.l, v120.h
	v_mov_b16_e32 v116.h, v103.l
	v_cndmask_b16 v119.h, 0x7fff, v113.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, v117, 0, s14
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v110, v110, v49 :: v_dual_mul_f32 v19, v19, v51
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v51
	v_mul_f32_e32 v5, v5, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v119.l, 0x7fff, v108.h, s7
	v_and_b32_e32 v108, 1, v114
	v_and_b32_e32 v114, 1, v116
	v_mov_b16_e32 v116.l, v113.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v118, v118, v49 :: v_dual_mul_f32 v17, v17, v51
	v_dual_sub_f32 v104, v104, v49 :: v_dual_mul_f32 v21, v21, v51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, v107, 0, s35
	v_cndmask_b32_e64 v115, 0, v115, s8
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v108, v106, v108, 0x7fff
	v_cmp_o_f32_e64 s3, v106, v106
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v7, v7, v51 :: v_dual_and_b32 v116, 1, v116
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v104, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v106.l, v115.h
	v_mov_b16_e32 v106.h, v103.l
	v_cndmask_b16 v108.h, 0x7fff, v108.h, s3
	v_add3_u32 v116, v113, v116, 0x7fff
	v_cmp_o_f32_e64 s3, v113, v113
	v_mov_b16_e32 v113.l, v107.h
	v_mov_b16_e32 v113.h, v103.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v106, 1, v106
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, v110, 0, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v114, v120, v114, 0x7fff
	v_and_b32_e32 v113, 1, v113
	v_cmp_o_f32_e64 s7, v120, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, v104, 0, s30
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v104, v102 :: v_dual_mul_f32 v13, v13, v51
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v106, v115, v106, 0x7fff
	v_cndmask_b16 v117.h, 0x7fff, v116.h, s3
	v_cmp_o_f32_e64 s3, v115, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v118, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v107, v113, 0x7fff
	v_cmp_o_f32_e64 s5, v107, v107
	v_mov_b16_e32 v107.l, v110.h
	v_mov_b16_e32 v107.h, v103.l
	v_cndmask_b16 v108.l, 0x7fff, v114.h, s7
	v_mov_b16_e32 v114.l, v105.h
	v_mov_b16_e32 v114.h, v103.l
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v104, v104 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v107, 1, v107
	v_cndmask_b16 v103.h, 0x7fff, v113.h, s5
	v_cmp_o_f32_e64 s5, v110, v110
	v_and_b32_e32 v114, 1, v114
	v_cndmask_b16 v117.l, 0x7fff, v106.h, s3
	v_add3_u32 v107, v110, v107, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v110, 0, v81
	s_waitcnt vmcnt(3)
	ds_store_b128 v110, v[32:35]
	s_waitcnt vmcnt(2)
	ds_store_b128 v110, v[36:39] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v110, v[40:43] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v110, v[44:47] offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v106, v105, v114, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v34, v84 offset:512
	ds_load_u16_d16 v41, v84 offset:288
	ds_load_u16_d16 v107, v84 offset:608
	ds_load_u16_d16 v106, v84 offset:352
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.l, v115.h
	v_mov_b16_e32 v116.h, v103.l
	v_cmp_o_f32_e64 s3, v105, v105
	v_mov_b16_e32 v105.l, v112.h
	v_mov_b16_e32 v105.h, v103.l
	v_mov_b16_e32 v114.l, v109.h
	v_mov_b16_e32 v114.h, v103.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v51 :: v_dual_and_b32 v113, 1, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v16, v16, v51 :: v_dual_and_b32 v105, 1, v105
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v114, 1, v114
	v_permlanex16_b32 v35, v123, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v113, v115, v113, 0x7fff
	v_cmp_o_f32_e64 s6, v115, v115
	v_add3_u32 v32, v112, v105, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v103.l, 0x7fff, v106.h, s3
	v_add3_u32 v133, v109, v114, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v32, v84
	ds_load_u16_d16 v40, v84 offset:32
	ds_load_u16_d16 v115, v84 offset:576
	ds_load_u16_d16 v33, v84 offset:256
	ds_load_u16_d16 v113, v84 offset:64
	ds_load_u16_d16 v114, v84 offset:320
	ds_load_u16_d16_hi v106, v84 offset:480
	ds_load_u16_d16 v105, v84 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v121, v35, v123, v100
	v_perm_b32 v122, v35, v123, v101
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v35, v84 offset:768
	ds_load_u16_d16 v42, v84 offset:544
	ds_load_u16_d16 v116, v84 offset:832
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v137, v99, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v112, v112
	v_permlanex16_b32 v36, v111, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v119, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v108, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v117, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v103, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v50, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v134.h, 0x7fff, v107.h, s5
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v134.l, 0x7fff, v113.h, s6
	v_cndmask_b16 v136.h, 0x7fff, v32.h, s7
	v_cmp_o_f32_e64 s3, v109, v109
	v_perm_b32 v123, v36, v111, v100
	v_perm_b32 v124, v36, v111, v101
	v_perm_b32 v125, v37, v119, v100
	v_perm_b32 v126, v37, v119, v101
	v_perm_b32 v127, v38, v108, v100
	v_perm_b32 v128, v38, v108, v101
	v_perm_b32 v129, v39, v117, v100
	v_perm_b32 v130, v39, v117, v101
	v_perm_b32 v131, v43, v103, v100
	v_perm_b32 v132, v43, v103, v101
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v32, v84 offset:128
	ds_load_u16_d16_hi v40, v84 offset:160
	ds_load_u16_d16_hi v113, v84 offset:192
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v105, v84 offset:224
	ds_load_u16_d16_hi v115, v84 offset:704
	ds_load_u16_d16_hi v34, v84 offset:640
	ds_load_u16_d16_hi v33, v84 offset:384
	ds_load_u16_d16_hi v41, v84 offset:416
	ds_load_u16_d16_hi v114, v84 offset:448
	ds_load_u16_d16 v117, v84 offset:1088
	ds_load_u16_d16 v36, v84 offset:1024
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v35, v84 offset:896
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v42, v84 offset:672
	ds_load_u16_d16 v43, v84 offset:800
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v116, v84 offset:960
	ds_load_u16_d16 v108, v84 offset:864
	ds_load_u16_d16_hi v107, v84 offset:736
	ds_load_u16_d16 v118, v84 offset:1344
	ds_load_u16_d16 v37, v84 offset:1280
	ds_load_u16_d16 v44, v84 offset:1056
	ds_load_u16_d16 v109, v84 offset:1120
	ds_load_u16_d16 v119, v84 offset:1600
	ds_load_u16_d16 v38, v84 offset:1536
	ds_load_u16_d16 v45, v84 offset:1312
	ds_load_u16_d16 v110, v84 offset:1376
	ds_load_u16_d16 v120, v84 offset:1856
	ds_load_u16_d16 v39, v84 offset:1792
	ds_load_u16_d16 v46, v84 offset:1568
	ds_load_u16_d16 v111, v84 offset:1632
	ds_load_u16_d16 v137, v84 offset:2112
	ds_load_u16_d16 v145, v84 offset:2048
	ds_load_u16_d16 v47, v84 offset:1824
	ds_load_u16_d16 v112, v84 offset:1888
	ds_load_u16_d16 v146, v84 offset:2304
	ds_load_u16_d16 v153, v84 offset:2080
	ds_load_u16_d16 v138, v84 offset:2368
	ds_load_u16_d16 v161, v84 offset:2144
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v117, v84 offset:1216
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v36, v84 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v43, v84 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v108, v84 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v118, v84 offset:1472
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v37, v84 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v44, v84 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v109, v84 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v119, v84 offset:1728
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v38, v84 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v45, v84 offset:1440
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v110, v84 offset:1504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v120, v84 offset:1984
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v39, v84 offset:1920
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v46, v84 offset:1696
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v84 offset:1760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v84 offset:2240
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v145, v84 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v47, v84 offset:1952
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v112, v84 offset:2016
	ds_load_u16_d16 v139, v84 offset:2624
	ds_load_u16_d16 v147, v84 offset:2560
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v146, v84 offset:2432
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v153, v84 offset:2208
	ds_load_u16_d16 v154, v84 offset:2336
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v138, v84 offset:2496
	ds_load_u16_d16 v162, v84 offset:2400
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v161, v84 offset:2272
	ds_load_u16_d16 v140, v84 offset:2880
	ds_load_u16_d16 v148, v84 offset:2816
	ds_load_u16_d16 v155, v84 offset:2592
	ds_load_u16_d16 v163, v84 offset:2656
	ds_load_u16_d16 v141, v84 offset:3136
	ds_load_u16_d16 v149, v84 offset:3072
	ds_load_u16_d16 v156, v84 offset:2848
	ds_load_u16_d16 v164, v84 offset:2912
	ds_load_u16_d16 v142, v84 offset:3392
	ds_load_u16_d16 v150, v84 offset:3328
	ds_load_u16_d16 v157, v84 offset:3104
	ds_load_u16_d16 v165, v84 offset:3168
	ds_load_u16_d16 v143, v84 offset:3648
	ds_load_u16_d16 v151, v84 offset:3584
	ds_load_u16_d16 v158, v84 offset:3360
	ds_load_u16_d16 v166, v84 offset:3424
	ds_load_u16_d16 v144, v84 offset:3904
	ds_load_u16_d16 v152, v84 offset:3840
	ds_load_u16_d16 v159, v84 offset:3616
	ds_load_u16_d16 v167, v84 offset:3680
	ds_load_u16_d16 v160, v84 offset:3872
	ds_load_u16_d16 v168, v84 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v139, v84 offset:2752
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v147, v84 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v154, v84 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v162, v84 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v140, v84 offset:3008
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v148, v84 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v155, v84 offset:2720
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v163, v84 offset:2784
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v141, v84 offset:3264
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v149, v84 offset:3200
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v156, v84 offset:2976
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v164, v84 offset:3040
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v142, v84 offset:3520
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v150, v84 offset:3456
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v157, v84 offset:3232
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v165, v84 offset:3296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v143, v84 offset:3776
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v151, v84 offset:3712
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v158, v84 offset:3488
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v166, v84 offset:3552
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v144, v84 offset:4032
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v152, v84 offset:3968
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v159, v84 offset:3744
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v167, v84 offset:3808
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.l, 0x7fff, v133.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v160, v84 offset:4000
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v168, v84 offset:4064
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v99
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[121:128], v[24:31]
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v102, v104
.Ltmp38:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v51
	v_dual_mul_f32 v22, v22, v51 :: v_dual_mov_b32 v99, v48
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v50, 0, v50, s3
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v51
	v_mul_f32_e32 v10, v10, v51
	v_mul_f32_e32 v12, v12, v51
	v_mul_f32_e32 v14, v14, v51
	v_mul_f32_e32 v0, v0, v51
	v_mul_f32_e32 v2, v2, v51
	v_mul_f32_e32 v4, v4, v51
	v_mul_f32_e32 v6, v6, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v103, v134, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v32, v89, v50
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v51, v136, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[113:120], v[121:128], v[8:15]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v133, v103, v134, v100
	v_perm_b32 v134, v103, v134, v101
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[105:112], v[121:128], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v135, v51, v136, v100
	v_perm_b32 v136, v51, v136, v101
	v_mov_b32_e32 v89, v32
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[40:47], v[121:128], v[16:23]
	v_mov_b32_e32 v102, v49
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s3, s70, 32
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[145:152], v[129:136], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[137:144], v[129:136], v[8:15]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[153:160], v[129:136], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[161:168], v[129:136], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s70, 0x7e0
	s_mov_b32 s70, s3
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s30, s70, s54
	v_or_b32_e32 v37, s54, v68
	v_mad_u64_u32 v[32:33], null, s30, s52, v[52:53]
	v_or_b32_e32 v38, s54, v80
	v_or_b32_e32 v39, s54, v79
	v_or_b32_e32 v40, s54, v78
	v_or_b32_e32 v41, s54, v77
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v127, s51 :: v_dual_add_nc_u32 v36, 0, v83
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s29
	v_or_b32_e32 v42, s54, v76
	v_or_b32_e32 v43, s54, v75
	v_or_b32_e32 v44, s54, v74
	v_or_b32_e32 v45, s54, v72
	buffer_load_b128 v[32:35], v32, s[60:63], 0 offen
	v_or_b32_e32 v46, s54, v71
	v_or_b32_e32 v47, s54, v70
	v_or_b32_e32 v48, s54, v69
	v_or_b32_e32 v49, s54, v67
	v_or_b32_e32 v50, s54, v66
	v_or_b32_e32 v51, s54, v65
	v_or_b32_e32 v103, s54, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v37, s70, v37, 1
	v_add_lshl_u32 v38, s70, v38, 1
	v_add_lshl_u32 v39, s70, v39, 1
	v_add_lshl_u32 v40, s70, v40, 1
	v_add_lshl_u32 v41, s70, v41, 1
	v_add_lshl_u32 v42, s70, v42, 1
	v_add_lshl_u32 v43, s70, v43, 1
	v_add_lshl_u32 v44, s70, v44, 1
	v_add_lshl_u32 v45, s70, v45, 1
	v_add_lshl_u32 v46, s70, v46, 1
	v_add_lshl_u32 v47, s70, v47, 1
	v_add_lshl_u32 v48, s70, v48, 1
	v_add_lshl_u32 v49, s70, v49, 1
	v_add_lshl_u32 v50, s70, v50, 1
	v_add_lshl_u32 v51, s70, v51, 1
	v_add_lshl_u32 v103, s70, v103, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v126, s50 :: v_dual_mov_b32 v123, s47
	v_dual_mov_b32 v124, s48 :: v_dual_mov_b32 v121, s45
	v_mov_b32_e32 v122, s46
	v_mov_b32_e32 v120, s44
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[32:33]
	ds_store_b64 v91, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v118, v37, s[64:67], 0 offen
	buffer_load_u16 v117, v38, s[64:67], 0 offen
	buffer_load_u16 v116, v39, s[64:67], 0 offen
	buffer_load_u16 v115, v40, s[64:67], 0 offen
	buffer_load_u16 v114, v41, s[64:67], 0 offen
	buffer_load_u16 v113, v42, s[64:67], 0 offen
	buffer_load_u16 v112, v43, s[64:67], 0 offen
	buffer_load_u16 v111, v44, s[64:67], 0 offen
	buffer_load_u16 v110, v45, s[64:67], 0 offen
	buffer_load_u16 v109, v46, s[64:67], 0 offen
	buffer_load_u16 v108, v47, s[64:67], 0 offen
	buffer_load_u16 v107, v48, s[64:67], 0 offen
	buffer_load_u16 v106, v49, s[64:67], 0 offen
	buffer_load_u16 v105, v50, s[64:67], 0 offen
	buffer_load_u16 v104, v51, s[64:67], 0 offen
	buffer_load_u16 v119, v103, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v125, s49 :: v_dual_add_nc_u32 v32, 0, v86
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[48:51], v32 offset1:1
	ds_load_2addr_stride64_b64 v[128:131], v92 offset1:1
	ds_load_2addr_stride64_b64 v[132:135], v93 offset1:1
	ds_load_2addr_stride64_b64 v[136:139], v94 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[54:55], v[120:127] neg_lo:[1,1,0]
	v_mov_b32_e32 v49, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[54:55], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[128:129], v[59:60], v[40:47] neg_lo:[1,1,0]
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[130:131], v[59:60], v[32:39] neg_lo:[1,1,0]
	v_mov_b32_e32 v51, 0
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[132:133], v[57:58], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[134:135], v[57:58], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[136:137], v[61:62], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[138:139], v[61:62], v[32:39] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v48, s70, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v49, 31, v48
	v_add_co_u32 v48, s3, s56, v48
	v_add_co_ci_u32_e64 v49, null, s57, v49, s3
	global_load_b128 v[48:51], v[48:49], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v32, v85, v32
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v32, v32, v24
	v_div_scale_f32 v35, null, v32, v32, v25
	v_div_scale_f32 v37, null, v32, v32, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_div_scale_f32 v39, null, v32, v32, v27
	v_div_scale_f32 v41, null, v32, v32, v28
	v_div_scale_f32 v42, null, v32, v32, v29
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v24, v32, v24
	v_div_scale_f32 v36, s0, v25, v32, v25
	v_fma_f32 v54, -v35, v45, 1.0
	v_fma_f32 v55, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v38, s1, v26, v32, v26
	v_fma_f32 v56, -v39, v47, 1.0
	v_fma_f32 v57, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v54, v34, v44
	v_div_scale_f32 v50, s5, v29, v32, v29
	v_fmac_f32_e32 v47, v56, v47
	v_dual_mul_f32 v55, v36, v45 :: v_dual_mul_f32 v56, v38, v46
	v_fmac_f32_e32 v51, v53, v51
	v_fmac_f32_e32 v48, v57, v48
	v_fma_f32 v57, -v33, v54, v34
	v_div_scale_f32 v40, s3, v27, v32, v27
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v57, v44
	v_mul_f32_e32 v58, v40, v47
	v_div_scale_f32 v43, null, v32, v32, v30
	v_div_scale_f32 v49, s4, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fmac_f32_e32 v55, v59, v45
	v_fma_f32 v61, -v39, v58, v40
	v_fmac_f32_e32 v56, v60, v46
	v_rcp_f32_e32 v52, v43
	v_div_fmas_f32 v33, v33, v44, v54
	v_fma_f32 v34, -v35, v55, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v37, v56, v38
	v_mul_f32_e32 v37, v50, v51
	v_mul_f32_e32 v53, v49, v48
	v_fmac_f32_e32 v58, v61, v47
	v_div_fixup_f32 v24, v33, v32, v24
	v_div_scale_f32 v33, null, v32, v32, v31
	v_div_fmas_f32 v34, v34, v45, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v58, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v33
	v_div_fmas_f32 v35, v35, v46, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v32, v25
	v_div_fmas_f32 v34, v36, v47, v58
	v_fma_f32 v38, -v43, v52, 1.0
	v_div_fixup_f32 v26, v35, v32, v26
	v_div_scale_f32 v35, s1, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v27, v34, v32, v27
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v52, v38, v52
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v53, v49
	v_div_scale_f32 v47, null, v32, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v31, v32, v31
	v_fmac_f32_e32 v53, v36, v48
	v_div_scale_f32 v36, null, v32, v32, v16
	v_fma_f32 v44, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v40, -v41, v53, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_fma_f32 v42, -v42, v37, v50
	v_fmac_f32_e32 v34, v44, v52
	v_fma_f32 v44, -v33, v45, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v51, v37
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v32, v32, v18
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fixup_f32 v28, v40, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v37, v32, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v16, v32, v16
	v_div_fmas_f32 v34, v35, v52, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v44, null, v32, v32, v19
	v_div_scale_f32 v40, s1, v17, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v35, -v36, v37, v46
	v_div_fixup_f32 v30, v34, v32, v30
	v_div_fixup_f32 v31, v33, v32, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v36, s3, v18, v32, v18
	v_div_scale_f32 v46, null, v32, v32, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v32, v32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v34, -v47, v39, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s4, v19, v32, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v33, v32, v16
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v20, v32, v20
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v33, v32, v17
	v_fma_f32 v33, -v43, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v45, v48, 1.0
	v_mul_f32_e32 v36, v40, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v38, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v47, v41, v35
	v_div_scale_f32 v42, null, v32, v32, v22
	v_div_fixup_f32 v18, v33, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v46, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v21, v32, v21
	v_div_scale_f32 v46, null, v32, v32, v9
	v_fma_f32 v34, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v32, v32, v23
	v_div_fmas_f32 v34, v34, v35, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v35, v44
	v_div_fmas_f32 v33, v33, v37, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v43, v38, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v19, v34, v32, v19
	v_div_scale_f32 v34, s3, v22, v32, v22
	v_fma_f32 v36, -v45, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v23, v32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_fixup_f32 v20, v33, v32, v20
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v36, v32, v21
	v_rcp_f32_e32 v36, v46
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v32, v32, v11
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v8, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v32, v32, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v43, v40
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v9, v32, v9
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v32, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v23, v35, v32, v23
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v32, v10
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v32, v32, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v11, v32, v11
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v32, v32, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v33, v32, v8
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v9, v36, v32, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v32, v12
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v38, v32, v10
	v_div_scale_f32 v38, null, v32, v32, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v13, v32, v13
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v32, v32, v15
	v_div_fixup_f32 v11, v35, v32, v11
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v32, v32, v0
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v32, v32, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v14, v32, v14
	v_div_fixup_f32 v12, v33, v32, v12
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v15, v32, v15
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v32, v32, v2
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v0, v32, v0
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v32, v1
	v_div_fixup_f32 v13, v36, v32, v13
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v32, v32, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v32, v14
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v32, v15
	v_div_fixup_f32 v0, v34, v32, v0
	v_div_scale_f32 v34, null, v32, v32, v4
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v32, v32, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v32, v1
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v32, v32, v5
	v_div_scale_f32 v37, null, v32, v32, v6
	v_div_scale_f32 v38, vcc_lo, v3, v32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v32, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v4, v32, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v5, v32, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v6, v32, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v7, v32, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v3, v38, v32, v3
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v33, v32, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v35, v32, v5
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v34, v32, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v36, v32, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s53, v63
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s53, s68
	v_add_nc_u32_e32 v34, v32, v68
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s53, v68
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s59, 0xffff
	s_mov_b32 s4, s58
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v68, 2
	v_add_lshl_u32 v38, v32, v80, 2
	v_add_lshl_u32 v39, v32, v79, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s53, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v37, s[4:7], 0 offen
	buffer_store_b32 v25, v38, s[4:7], 0 offen
	buffer_store_b32 v26, v39, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v78, 2
	v_add_lshl_u32 v25, v32, v77, 2
	v_add_lshl_u32 v26, v32, v76, 2
	v_add_lshl_u32 v37, v32, v75, 2
	v_add_lshl_u32 v38, v32, v74, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v37, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v72, 2
	v_add_lshl_u32 v25, v32, v71, 2
	v_add_lshl_u32 v26, v32, v70, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v69, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v67, 2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v68
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v66, 2
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s53, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_lshl_u32 v18, v32, v65, 2
	v_add_lshl_u32 v19, v32, v64, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v32, v33, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v8, v16, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v68
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s53, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v35, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 62, v73
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[4:7], 0 offen
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v0, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v32, v36, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[4:7], 0 offen
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v8, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp39:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 169
		.amdhsa_next_free_sgpr 71
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 169
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11076
; TotalNumSgprs: 73
; NumVgprs: 169
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 73
; NumVGPRsForWavesPerEU: 169
; Occupancy: 8
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
.Ldebug_ranges3:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     169
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
