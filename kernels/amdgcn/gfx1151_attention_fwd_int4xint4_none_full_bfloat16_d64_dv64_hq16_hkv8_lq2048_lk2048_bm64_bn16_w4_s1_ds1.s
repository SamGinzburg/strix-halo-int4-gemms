	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x60
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v50, 0x7632 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v74, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s5, s4, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s4, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v3, s5, v2
	v_dual_mov_b32 v49, 0x5410 :: v_dual_mov_b32 v32, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v46, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v47, 15, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s18, v3, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s18, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	v_mov_b32_e32 v33, v32
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v61, v0, 4, 1
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s2
	v_dual_mov_b32 v35, v32 :: v_dual_lshlrev_b32 v56, 1, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_load_b32 s24, s[0:1], 0x68
	.loc	1 584 86                        ; attention.py:584:86
	v_bfe_i32 v55, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v63, v56, 30, v61
	v_dual_mov_b32 v36, v32 :: v_dual_lshlrev_b32 v57, 2, v0
	buffer_load_b128 v[42:45], v1, s[20:23], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v46
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_dual_mov_b32 v37, v32 :: v_dual_and_b32 v58, 0x70, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v47
	v_dual_mov_b32 v38, v32 :: v_dual_lshlrev_b32 v59, 7, v0
	v_dual_mov_b32 v39, v32 :: v_dual_lshlrev_b32 v60, 5, v0
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v52, s5, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s4, v1
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x20
	s_load_b64 s[16:17], s[0:1], 0x38
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v56, 24, v56
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v52
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v73, 2, v63
	s_add_i32 s0, s3, s0
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, 0xfff0
	v_lshrrev_b32_e32 v46, 2, v46
	s_sub_i32 s1, s3, s1
	v_bfe_i32 v62, v0, 2, 1
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v48, v1, s[20:23], 0 offen
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s3, s1, 0x10007
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v40, 2, v47
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v59, 0x700, v59
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v60, 0x160, v60
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v55, 0x90, v55
	v_lshrrev_b32_e32 v58, 2, v58
	v_xor_b32_e32 v46, v57, v46
	v_lshl_or_b32 v47, v47, 5, v56
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v75, 4, v73
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s1, s1
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_ashr_i32 s1, s1, 1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v51, 3, v0
	v_dual_mov_b32 v34, v32 :: v_dual_and_b32 v53, 16, v0
	v_lshrrev_b32_e32 v54, 4, v0
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v41, 28, v57
	v_mov_b32_e32 v31, v24
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v56, 0, v47
	v_mov_b32_e32 v18, v24
	v_xor_b32_e32 v57, v55, v58
	v_add_nc_u32_e32 v58, 0, v59
	v_and_or_b32 v59, 0x90, v62, v60
	v_xor_b32_e32 v60, 8, v47
	v_xor_b32_e32 v62, 16, v47
	v_xor_b32_e32 v63, 24, v47
	v_add_nc_u32_e32 v55, 0, v46
	.loc	1 710 33                        ; attention.py:710:33
	s_lshl3_add_u32 s0, s0, s1
	v_mov_b32_e32 v19, v24
	.loc	1 710 32 is_stmt 0              ; attention.py:710:32
	s_lshl_b32 s3, s0, 11
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v57, v58, v57
	v_xor_b32_e32 v64, 16, v59
	v_add_nc_u32_e32 v58, 0, v59
	.loc	1 794 21 is_stmt 1              ; attention.py:794:21
	s_lshl_b32 s36, s0, 7
	v_lshl_or_b32 v59, s0, 10, v54
	v_or_b32_e32 v65, s3, v51
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v53
	v_mov_b32_e32 v8, v24
	v_or_b32_e32 v61, s3, v61
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v60, 0, v60
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v63, 0, v63
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v62, 0, v62
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v64, 0, v64
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s1, s19, v40
	v_or_b32_e32 v66, 2, v61
	v_or_b32_e32 v67, 4, v61
	v_or_b32_e32 v68, 6, v61
	v_or_b32_e32 v69, 8, v61
	v_or_b32_e32 v70, 10, v61
	v_or_b32_e32 v71, 12, v61
	v_or_b32_e32 v72, 14, v61
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s35, s24, 0x3fb8aa3b
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s33, 0
	s_mov_b32 s34, 0x76543210
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s24, s4
	s_mov_b32 s28, s6
	s_mov_b32 s25, s5
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s20, s10
	s_mov_b32 s21, s11
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e32 vcc_lo, s18, v41
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v46, v73, v42
	ds_bpermute_b32 v47, v75, v42
	ds_bpermute_b32 v51, v73, v43
	ds_bpermute_b32 v54, v75, v43
	ds_bpermute_b32 v76, v73, v44
	ds_bpermute_b32 v77, v75, v44
	ds_bpermute_b32 v78, v73, v45
	ds_bpermute_b32 v75, v75, v45
	v_cndmask_b32_e64 v43, 0x1054, v49, s0
	v_cndmask_b32_e64 v44, 0x3276, v50, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v43, v43, 8, v43
	v_lshl_or_b32 v45, v44, 8, v44
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v11, v24
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v42, v47, v46, s0
	v_cndmask_b32_e64 v44, v46, v47, s0
	v_and_b32_e32 v47, 0x540054, v43
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v43, v54, v51, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v46, v77, v76, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v49, v78, v75, s0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v48
	v_and_b32_e32 v48, 0x760076, v45
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v45, v51, v54, s0
	v_lshl_or_b32 v50, v47, 4, v47
	v_mov_b32_e32 v13, v24
	v_cndmask_b32_e64 v47, v75, v78, s0
	v_lshl_or_b32 v51, v48, 4, v48
	v_mov_b32_e32 v12, v24
	v_cndmask_b32_e64 v48, v76, v77, s0
	v_dual_mov_b32 v75, v24 :: v_dual_and_b32 v50, 0x5040504, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v51, 0x7060706, v51
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v54, s33, v65
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s3, s33, 1
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s4, s33, 4
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v90, s3, v59
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s4, s4, s36
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[76:77], null, v54, s18, v[41:42]
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s4, s4, s19
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[90:91], null, v90, s19, v[40:41]
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v92, s4, v40, 1
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v78, s33, v61, 1
	v_add_lshl_u32 v79, s33, v66, 1
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v54, 0x80000000, v76, vcc_lo
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v80, s33, v67, 1
	v_add_lshl_u32 v81, s33, v68, 1
	v_add_lshl_u32 v82, s33, v69, 1
	v_add_lshl_u32 v85, s33, v72, 1
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v77, v54, s[20:23], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v91, 0x80000000, v92, s1
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v90, 0x80000000, v90, s1
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v83, s33, v70, 1
	v_add_lshl_u32 v84, s33, v71, 1
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v54.l, 0
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v86.h, v54.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v100.l, v54.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v87.h, v54.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v102.h, v54.l
	v_mov_b16_e32 v101.h, v54.l
	v_mov_b16_e32 v103.h, v54.l
	v_mov_b16_e32 v105.h, v54.l
	v_mov_b16_e32 v104.h, v54.l
	v_mov_b16_e32 v106.h, v54.l
	v_mov_b16_e32 v107.h, v54.l
	v_mov_b16_e32 v108.h, v54.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v88.h, v54.l
	v_mov_b16_e32 v89.h, v54.l
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v77
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v109, v78, s[24:27], 0 offen
	buffer_load_u16 v110, v79, s[24:27], 0 offen
	buffer_load_u16 v111, v80, s[24:27], 0 offen
	buffer_load_u16 v112, v81, s[24:27], 0 offen
	buffer_load_u16 v113, v82, s[24:27], 0 offen
	buffer_load_u16 v114, v83, s[24:27], 0 offen
	buffer_load_u16 v115, v84, s[24:27], 0 offen
	buffer_load_u16 v85, v85, s[24:27], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v116, v90, s[12:15], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[90:91], v91, s[28:31], 0 offen
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[92:93], v56
	ds_load_b64 v[94:95], v60
	ds_load_b64 v[96:97], v62
	ds_load_b64 v[98:99], v63
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 717 33                        ; attention.py:717:33
	v_wmma_i32_16x16x16_iu4 v[77:84], v[92:93], v[42:43], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[94:95], v[46:47], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[96:97], v[44:45], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[98:99], v[48:49], v[77:84] neg_lo:[1,1,0]
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v92, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v94, v79
	v_cvt_f32_i32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v93, v78
	v_cvt_f32_i32_e32 v81, v81
	v_mov_b32_e32 v76, v75
	v_mul_f32_e32 v92, v73, v92
	v_mul_f32_e32 v94, v73, v94
	v_mul_f32_e32 v80, v73, v80
	v_mul_f32_e32 v82, v73, v82
	v_mul_f32_e32 v83, v73, v83
	v_mul_f32_e32 v84, v73, v84
	v_mul_f32_e32 v93, v73, v93
	v_mul_f32_e32 v81, v73, v81
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v75.h, v54.l
	v_mov_b16_e32 v78.h, v54.l
	v_mov_b16_e32 v79.h, v54.l
	v_mov_b16_e32 v77.h, v54.l
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v95, 16, v109
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v97, 16, v111
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v99, 16, v113
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v109, 16, v114
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v85, 16, v85
	v_lshlrev_b32_e32 v96, 16, v110
	v_lshlrev_b32_e32 v110, 16, v115
	v_lshlrev_b32_e32 v98, 16, v112
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v111, v116, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v75.l, v116.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v77.l, 4, v116.l
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v100.h, v91.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v94, v94, v97 :: v_dual_and_b32 v91, 0xffff0000, v91
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v86.l, v116.h
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v78.l, v116.h, 15
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v83, v83, v110
	v_mul_f32_e32 v97, v80, v98
	v_mul_f32_e32 v92, v92, v95
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v95, 24, v116
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v79.l, v111.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v75.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v77.l, v77.l, 15
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v84, v84, v85
	v_dual_mul_f32 v98, v81, v99 :: v_dual_mul_f32 v99, v82, v109
	v_mul_f32_e32 v93, v93, v96
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v96, 20, v116
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v109, v86, 0, 8
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s4, 7, v78.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v81.h, v95.l, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v82.h, 0, -16, s3
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s3, 0, v79.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v79.l, v77.l, -16
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_bfe_i32 v110, v95, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v81.l, v96.l, 15
	v_lshrrev_b16 v82.l, 4, v95.l
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v95, s35, v97
	v_mul_f32_e32 v97, s35, v99
	v_mul_f32_e32 v99, s35, v84
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v84.l, v109.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v86.l, v75.l, v82.h
	v_cndmask_b16 v75.l, 0, -16, s4
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v87.l, v77.l, v79.l, s3
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v81.h
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v112, 8, v116
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v77.l, v81.l, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s6, 0, v84.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v84.l, v78.l, v75.l
	v_cndmask_b16 v78.l, 0, -16, s3
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v85, v112, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v80.l, v112.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v80.h, 4, v112.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v77.l, v81.l, v77.l, s6
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v78.l, v81.h, v78.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v81, v84, 0, 16
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v54.h, v90.l
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v93, s35, v93 :: v_dual_and_b32 v90, 0xffff0000, v90
	v_mul_f32_e32 v92, s35, v92
	v_mul_f32_e32 v96, s35, v98
	v_mul_f32_e32 v98, s35, v83
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v83.l, v85.l
	v_mov_b16_e32 v85.l, v110.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s4, 7, v80.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v80.h, v80.h, 15
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v94, s35, v94
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v83.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v79.l, v82.l, -16
	.loc	1 764 26 is_stmt 1              ; attention.py:764:26
	v_cndmask_b32_e64 v83, 0xff800000, v92, s2
	v_cndmask_b32_e64 v92, 0xff800000, v93, s2
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v82.h, 0, -16, s4
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v75.l, v80.h, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v85.l
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_mul_f32_e32 v81, v100, v81
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v93, 0xff800000, v94, s2
	v_cndmask_b32_e64 v94, 0xff800000, v95, s2
	v_cndmask_b32_e64 v95, 0xff800000, v96, s2
	v_cndmask_b32_e64 v96, 0xff800000, v97, s2
	v_cndmask_b32_e64 v97, 0xff800000, v98, s2
	v_cndmask_b32_e64 v98, 0xff800000, v99, s2
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v80.l, v80.l, v82.h
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v85, v83, v92, v93
.Ltmp2:
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v75.l, v80.h, v75.l, s5
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v99, v94, v95, v96
	v_max_f32_e32 v109, v97, v98
.Ltmp4:
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v79.l, v82.l, v79.l, s4
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v82, v86, 0, 16
	v_bfe_i32 v84, v87, 0, 16
	v_bfe_i32 v111, v78, 0, 16
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v85, v85, v99, v109
.Ltmp6:
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v99, v75, 0, 16
	v_bfe_i32 v110, v79, 0, 16
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	v_bfe_i32 v80, v80, 0, 16
	v_bfe_i32 v109, v77, 0, 16
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v112, v85, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_mul_f32_e32 v82, v54, v82
	v_mul_f32_e32 v84, v54, v84
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v122, v74, v85, v112
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v85, v90, v99
	v_mul_f32_e32 v99, v91, v110
	v_mul_f32_e32 v91, v91, v111
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v101.l, v82.h
	v_mov_b16_e32 v102.l, v84.h
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v80, v90, v80 :: v_dual_sub_f32 v83, v83, v122
	v_dual_mul_f32 v90, v100, v109 :: v_dual_sub_f32 v93, v93, v122
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v103.l, v81.h
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_dual_sub_f32 v95, v95, v122 :: v_dual_and_b32 v100, 1, v101
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v101, 1, v102
	v_mov_b16_e32 v105.l, v85.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v92, v92, v122
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v104.l, v80.h
	v_cmp_o_f32_e64 s3, v82, v82
	v_cmp_o_f32_e64 s4, v84, v84
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v97, v97, v122 :: v_dual_and_b32 v102, 1, v103
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v82, v82, v100, 0x7fff
	v_add3_u32 v84, v84, v101, 0x7fff
	v_and_b32_e32 v101, 1, v105
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v92, v92
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v103, v74, v122 :: v_dual_and_b32 v100, 1, v104
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s5, v81, v81
	v_cmp_o_f32_e64 s7, v85, v85
	v_add3_u32 v81, v81, v102, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v82.h, s3
	v_add3_u32 v82, v85, v101, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_add3_u32 v80, v80, v100, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v81.h, s5
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v103, v103
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v81.h, 0x7fff, v82.h, s7
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v82, 0, v92, s2
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v106.l, v90.h
	v_mov_b16_e32 v107.l, v91.h
	v_mov_b16_e32 v108.l, v99.h
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v95, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v87.l, v82.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v96, v96, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v94, v94, v122 :: v_dual_and_b32 v105, 1, v108
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v102, 1, v106
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v87, 1, v87
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v96, v96
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v114, 0, v103, s11
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v104, 1, v107
	v_cmp_o_f32_e64 s8, v90, v90
	v_cmp_o_f32_e64 s9, v91, v91
	v_cmp_o_f32_e64 s10, v99, v99
	v_cndmask_b16 v74.h, 0x7fff, v84.h, s4
	v_add3_u32 v84, v90, v102, 0x7fff
	v_add3_u32 v90, v99, v105, 0x7fff
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v114
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v85, v91, v104, 0x7fff
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v83, v83
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v81.l, 0x7fff, v80.h, s6
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v107, 0, v96, s2
	v_cndmask_b32_e64 v108, 0, v95, s2
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v98, v98, v122
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_cndmask_b16 v80.h, 0x7fff, v84.h, s8
	v_cndmask_b16 v84.h, 0x7fff, v90.h, s10
	v_cndmask_b16 v84.l, 0x7fff, v85.h, s9
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v97, v97
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v57, v74, v81 offset1:8
	ds_store_2addr_b32 v57, v80, v84 offset0:16 offset1:24
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v81, v108, v107
.Ltmp10:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v98, v98
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v83, 0, v83, s2
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v86.l, v107.h
	v_mov_b16_e32 v77.l, v108.h
	v_cmp_o_f32_e64 s3, v82, v82
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v85, 0, v94, s2
	v_cndmask_b32_e64 v106, 0, v93, s2
	v_cndmask_b32_e64 v110, 0, v97, s2
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v88.l, v83.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v114
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v109, 0, v98, s2
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v89.l, v85.h
	v_mov_b16_e32 v75.l, v106.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v114
	v_dual_mul_f32 v31, v31, v114 :: v_dual_and_b32 v88, 1, v88
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v78.l, v109.h
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v74, v83, v82
	v_add_f32_e32 v80, v106, v85
	v_add_f32_e32 v84, v110, v109
.Ltmp12:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s4, v83, v83
	v_mov_b16_e32 v79.l, v110.h
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v24, v24, v114 :: v_dual_and_b32 v89, 1, v89
	v_dual_mul_f32 v26, v26, v114 :: v_dual_and_b32 v75, 1, v75
	v_dual_mul_f32 v28, v28, v114 :: v_dual_and_b32 v77, 1, v77
	v_dual_mul_f32 v17, v17, v114 :: v_dual_add_f32 v74, v74, v80
	v_dual_mul_f32 v19, v19, v114 :: v_dual_add_f32 v84, v81, v84
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v87, v82, v87, 0x7fff
	v_add3_u32 v88, v83, v88, 0x7fff
	v_and_b32_e32 v86, 1, v86
	v_and_b32_e32 v78, 1, v78
	v_cmp_o_f32_e64 s5, v85, v85
	v_cmp_o_f32_e64 s6, v106, v106
	v_cmp_o_f32_e64 s7, v107, v107
	v_cmp_o_f32_e64 s8, v108, v108
	v_cmp_o_f32_e64 s9, v109, v109
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v30, v30, v114 :: v_dual_and_b32 v79, 1, v79
	v_dual_mul_f32 v21, v21, v114 :: v_dual_add_f32 v74, v74, v84
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v85, v85, v89, 0x7fff
	v_add3_u32 v75, v106, v75, 0x7fff
	v_add3_u32 v86, v107, v86, 0x7fff
	v_add3_u32 v77, v108, v77, 0x7fff
	v_add3_u32 v78, v109, v78, 0x7fff
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s3
	v_cndmask_b16 v84.l, 0x7fff, v88.h, s4
	v_cmp_o_f32_e64 s10, v110, v110
	v_add3_u32 v79, v110, v79, 0x7fff
	v_cndmask_b16 v85.h, 0x7fff, v85.h, s5
	v_cndmask_b16 v85.l, 0x7fff, v75.h, s6
	v_cndmask_b16 v86.h, 0x7fff, v86.h, s7
	v_cndmask_b16 v86.l, 0x7fff, v77.h, s8
	v_cndmask_b16 v77.h, 0x7fff, v78.h, s9
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v75, v74, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v78, v84, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v77.l, 0x7fff, v79.h, s10
	v_permlanex16_b32 v79, v86, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v75, v74, v75
.Ltmp16:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v106, v78, v84, v50
	v_perm_b32 v107, v78, v84, v51
	v_permlanex16_b32 v78, v85, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
	ds_load_b128 v[90:93], v58
	ds_load_b128 v[98:101], v58 offset:512
	ds_load_b128 v[94:97], v64
	ds_load_b128 v[102:105], v64 offset:512
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v16, v16, v114
	v_mul_f32_e32 v18, v18, v114
	v_mul_f32_e32 v20, v20, v114
	v_mul_f32_e32 v22, v22, v114
	v_mul_f32_e32 v23, v23, v114
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[80:83], v58 offset:1024
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v114
	v_mul_f32_e32 v9, v9, v114
	v_mul_f32_e32 v10, v10, v114
	v_mul_f32_e32 v11, v11, v114
	v_mul_f32_e32 v12, v12, v114
	v_mul_f32_e32 v13, v13, v114
	v_mul_f32_e32 v14, v14, v114
	v_mul_f32_e32 v15, v15, v114
	v_mul_f32_e32 v0, v0, v114
	v_mul_f32_e32 v1, v1, v114
	v_mul_f32_e32 v2, v2, v114
	v_mul_f32_e32 v3, v3, v114
	v_mul_f32_e32 v4, v4, v114
	v_mul_f32_e32 v5, v5, v114
	v_mul_f32_e32 v6, v6, v114
	v_mul_f32_e32 v7, v7, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v108, v78, v85, v50
	v_perm_b32 v109, v78, v85, v51
	v_perm_b32 v110, v79, v86, v50
	v_perm_b32 v111, v79, v86, v51
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v75, v76, v114
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[114:117], v58 offset:1536
	ds_load_b128 v[84:87], v64 offset:1024
	ds_load_b128 v[118:121], v64 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v74, v77, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s3, s33, 16
	s_cmpk_lt_u32 s33, 0x7f0
	s_mov_b32 s33, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v112, v74, v77, v50
	v_perm_b32 v113, v74, v77, v51
	v_mov_b32_e32 v74, v122
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[90:97], v[106:113], v[24:31]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[98:105], v[106:113], v[16:23]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[106:113], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[114:121], v[106:113], v[0:7]
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v32, null, v75, v75, v24
	v_div_scale_f32 v33, null, v75, v75, v25
	v_div_scale_f32 v36, null, v75, v75, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v24, v75, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v41, null, v75, v75, v27
	v_div_scale_f32 v42, s1, v25, v75, v25
	v_div_scale_f32 v45, s3, v26, v75, v26
	v_fma_f32 v39, -v32, v34, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v33, v35, 1.0
	v_div_scale_f32 v47, null, v75, v75, v28
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s17, s17, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v34, v39, v34 :: v_dual_fmac_f32 v35, v40, v35
	v_rcp_f32_e32 v39, v41
	v_fma_f32 v40, -v36, v38, 1.0
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v43, v37, v34 :: v_dual_mul_f32 v44, v42, v35
	v_fmac_f32_e32 v38, v40, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v32, v43, v37
	v_fma_f32 v46, -v33, v44, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v41, v39, 1.0
	v_dual_mul_f32 v49, v45, v38 :: v_dual_fmac_f32 v44, v46, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v36, v49, v45
	v_fma_f32 v33, -v33, v44, v42
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v39, v48, v39
	v_fmac_f32_e32 v43, v40, v34
	v_div_scale_f32 v40, null, v75, v75, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v32, v43, v37
	v_div_scale_f32 v37, s4, v27, v75, v27
	v_rcp_f32_e32 v48, v40
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v34, v43
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v75, v75, v30
	v_div_fmas_f32 v33, v33, v35, v44
	v_fma_f32 v35, -v47, v42, 1.0
	v_div_fixup_f32 v24, v32, v75, v24
	v_div_scale_f32 v44, null, v75, v75, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v25, v33, v75, v25
	v_fmac_f32_e32 v42, v35, v42
	v_mul_f32_e32 v34, v37, v39
	v_div_scale_f32 v35, s1, v28, v75, v28
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v41, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v46, v38 :: v_dual_fmac_f32 v34, v33, v39
	v_fma_f32 v32, -v36, v49, v45
	v_fma_f32 v36, -v40, v48, 1.0
	v_mul_f32_e32 v33, v35, v42
	v_rcp_f32_e32 v45, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v38, v49
	v_fmac_f32_e32 v48, v36, v48
	v_rcp_f32_e32 v36, v43
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v38, s3, v29, v75, v29
	v_div_fixup_f32 v26, v32, v75, v26
	v_fma_f32 v32, -v41, v34, v37
	v_fma_f32 v37, -v47, v33, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v43, v36, 1.0
	v_div_fmas_f32 v32, v32, v39, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v37, v42
	v_fma_f32 v39, -v44, v45, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v46, v36
	v_div_fixup_f32 v27, v32, v75, v27
	v_fma_f32 v32, -v47, v33, v35
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v35, s5, v31, v75, v31
	v_mul_f32_e32 v41, v38, v48
	v_div_scale_f32 v37, s4, v30, v75, v30
	v_div_fmas_f32 v32, v32, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v35, v45
	v_fma_f32 v34, -v40, v41, v38
	v_div_scale_f32 v39, null, v75, v75, v16
	v_div_scale_f32 v46, null, v75, v75, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v34, v48
	v_mul_f32_e32 v34, v37, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v32, v75, v28
	v_fma_f32 v33, -v40, v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v34, v37
	v_rcp_f32_e32 v40, v39
	v_div_fmas_f32 v33, v33, v48, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v34, v38, v36
	v_rcp_f32_e32 v38, v46
	v_fma_f32 v41, -v44, v42, v35
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v33, v75, v29
	v_fma_f32 v29, -v43, v34, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v39, v40, 1.0
	v_fmac_f32_e32 v42, v41, v45
	v_div_scale_f32 v33, s1, v16, v75, v16
	v_div_fmas_f32 v29, v29, v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v46, v38, 1.0
	v_fma_f32 v34, -v44, v42, v35
	v_div_scale_f32 v36, null, v75, v75, v18
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v38, v37, v38
	v_div_scale_f32 v37, s3, v17, v75, v17
	v_fmac_f32_e32 v40, v47, v40
	v_div_fmas_f32 v34, v34, v45, v42
	v_rcp_f32_e32 v41, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v37, v38
	v_div_scale_f32 v44, null, v75, v75, v19
	v_mul_f32_e32 v35, v33, v40
	v_div_fixup_f32 v29, v29, v75, v30
	v_div_fixup_f32 v30, v34, v75, v31
	v_rcp_f32_e32 v34, v44
	v_fma_f32 v31, -v46, v43, v37
	v_fma_f32 v42, -v39, v35, v33
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v42, v40
	v_fma_f32 v42, -v36, v41, 1.0
	v_fmac_f32_e32 v43, v31, v38
	v_fma_f32 v45, -v44, v34, 1.0
	v_div_scale_f32 v31, s4, v18, v75, v18
	v_fma_f32 v33, -v39, v35, v33
	v_div_scale_f32 v39, null, v75, v75, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v42, v41 :: v_dual_fmac_f32 v34, v45, v34
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v35, -v46, v43, v37
	v_div_scale_f32 v46, null, v75, v75, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, s1, v19, v75, v19
	v_div_fmas_f32 v35, v35, v38, v43
	v_div_scale_f32 v47, s3, v20, v75, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v39, v42, 1.0
	v_mul_f32_e32 v37, v31, v41
	v_mul_f32_e32 v43, v40, v34
	v_div_fixup_f32 v16, v33, v75, v16
	v_div_fixup_f32 v17, v35, v75, v17
	v_fmac_f32_e32 v42, v45, v42
	v_fma_f32 v38, -v36, v37, v31
	v_rcp_f32_e32 v45, v46
	v_fma_f32 v33, -v44, v43, v40
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v35, v47, v42
	v_fmac_f32_e32 v37, v38, v41
	v_div_scale_f32 v38, null, v75, v75, v22
	v_fmac_f32_e32 v43, v33, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v39, v35, v47
	v_fma_f32 v31, -v36, v37, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v46, v45, 1.0
	v_rcp_f32_e32 v36, v38
	v_fmac_f32_e32 v35, v33, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v31, v41, v37
	v_fmac_f32_e32 v45, v48, v45
	v_div_scale_f32 v48, s5, v21, v75, v21
	v_fma_f32 v37, -v44, v43, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s1, v22, v75, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v48, v45
	v_fma_f32 v40, -v38, v36, 1.0
	v_div_fmas_f32 v34, v37, v34, v43
	v_fma_f32 v37, -v39, v35, v47
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v46, v33, v48
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, null, v75, v75, v23
	v_div_fmas_f32 v35, v37, v42, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v39, v45
	v_mul_f32_e32 v39, v41, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v40
	v_div_fixup_f32 v31, v31, v75, v18
	v_div_fixup_f32 v18, v35, v75, v20
	v_fma_f32 v20, -v46, v33, v48
	v_div_scale_f32 v35, null, v75, v75, v8
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v19, v34, v75, v19
	v_fma_f32 v34, -v38, v39, v41
	v_div_fmas_f32 v20, v20, v45, v33
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v40, v37, 1.0
	v_rcp_f32_e32 v33, v35
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v34, v36
	v_div_scale_f32 v34, s3, v23, v75, v23
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, null, v75, v75, v9
	v_div_fixup_f32 v21, v20, v75, v21
	v_fma_f32 v20, -v38, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v34, v37
	v_fma_f32 v41, -v35, v33, 1.0
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v36, v39
	v_fma_f32 v36, -v40, v38, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v39, s1, v8, v75, v8
	v_div_fixup_f32 v20, v20, v75, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v36, v37
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v42, v43, 1.0
	v_mul_f32_e32 v22, v39, v33
	v_div_scale_f32 v41, null, v75, v75, v10
	v_fma_f32 v34, -v40, v38, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v9, v75, v9
	v_fma_f32 v40, -v35, v22, v39
	v_div_fmas_f32 v34, v34, v37, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v37, v36, v43
	v_rcp_f32_e32 v44, v41
	v_fmac_f32_e32 v22, v40, v33
	v_div_scale_f32 v40, null, v75, v75, v11
	v_fma_f32 v45, -v42, v37, v36
	v_div_fixup_f32 v23, v34, v75, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v35, v22, v39
	v_rcp_f32_e32 v46, v40
	v_div_scale_f32 v39, null, v75, v75, v12
	v_fmac_f32_e32 v37, v45, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v22, v34, v33, v22
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v41, v44, 1.0
	v_div_scale_f32 v45, null, v75, v75, v15
	v_fma_f32 v33, -v42, v37, v36
	v_fma_f32 v36, -v40, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s3, v10, v75, v10
	v_div_fmas_f32 v33, v33, v43, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v36, v46
	v_div_scale_f32 v36, null, v75, v75, v13
	v_div_scale_f32 v37, s1, v11, v75, v11
	v_div_fixup_f32 v9, v33, v75, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v36
	v_div_fixup_f32 v8, v22, v75, v8
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v42, v33
	v_mul_f32_e32 v35, v38, v44
	v_div_scale_f32 v42, s4, v13, v75, v13
	v_fma_f32 v34, -v41, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v34, v44
	v_rcp_f32_e32 v34, v39
	v_fma_f32 v22, -v41, v35, v38
	v_mul_f32_e32 v38, v37, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v22, v22, v44, v35
	v_fma_f32 v41, -v39, v34, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v40, v38, v37
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v10, v22, v75, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v75, v12
	v_fmac_f32_e32 v38, v35, v46
	v_div_scale_f32 v35, null, v75, v75, v14
	v_mul_f32_e32 v43, v41, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v40, v38, v37
	v_rcp_f32_e32 v44, v35
	v_mul_f32_e32 v40, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v39, v43, v41
	v_div_fmas_f32 v22, v22, v46, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v37, v34
	v_fma_f32 v37, -v36, v40, v42
	v_div_fixup_f32 v11, v22, v75, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v35, v44, 1.0
	v_fma_f32 v22, -v39, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v37, v33
	v_div_scale_f32 v39, null, v75, v75, v0
	v_fmac_f32_e32 v44, v38, v44
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v38, s1, v14, v75, v14
	v_div_fmas_f32 v22, v22, v34, v43
	v_fma_f32 v34, -v36, v40, v42
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v43, null, v75, v75, v1
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v36, v38, v44
	v_div_fmas_f32 v33, v34, v33, v40
	v_rcp_f32_e32 v40, v43
	v_fma_f32 v41, -v45, v37, 1.0
	v_div_fixup_f32 v12, v22, v75, v12
	v_fma_f32 v34, -v35, v36, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v39, v42, 1.0
	v_div_fixup_f32 v13, v33, v75, v13
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s3, v15, v75, v15
	v_fmac_f32_e32 v36, v34, v44
	v_fmac_f32_e32 v42, v46, v42
	v_fma_f32 v33, -v43, v40, 1.0
	v_div_scale_f32 v46, null, v75, v75, v2
	v_mul_f32_e32 v22, v41, v37
	v_div_scale_f32 v34, s4, v0, v75, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v33, v40
	v_div_scale_f32 v33, s5, v1, v75, v1
	v_fma_f32 v35, -v35, v36, v38
	v_rcp_f32_e32 v38, v46
	v_fma_f32 v47, -v45, v22, v41
	v_dual_mul_f32 v48, v34, v42 :: v_dual_mul_f32 v49, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v35, v35, v44, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v47, v37
	v_fma_f32 v36, -v39, v48, v34
	v_fma_f32 v44, -v43, v49, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v38, 1.0
	v_div_fixup_f32 v14, v35, v75, v14
	v_fma_f32 v35, -v45, v22, v41
	v_fmac_f32_e32 v48, v36, v42
	v_dual_fmac_f32 v49, v44, v40 :: v_dual_fmac_f32 v38, v47, v38
	v_div_scale_f32 v36, s1, v2, v75, v2
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v39, v48, v34
	v_div_fmas_f32 v22, v35, v37, v22
	v_mul_f32_e32 v35, v36, v38
	v_fma_f32 v33, -v43, v49, v33
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, null, v75, v75, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v46, v35, v36
	v_div_fmas_f32 v34, v34, v42, v48
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v41
	v_div_fmas_f32 v33, v33, v40, v49
	v_fmac_f32_e32 v35, v39, v38
	v_div_scale_f32 v39, null, v75, v75, v5
	v_div_fixup_f32 v0, v34, v75, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v1, v33, v75, v1
	v_div_scale_f32 v33, null, v75, v75, v4
	v_rcp_f32_e32 v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v22, v75, v15
	v_fma_f32 v22, -v41, v37, 1.0
	v_div_scale_f32 v44, null, v75, v75, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v45, v40
	v_fma_f32 v34, -v46, v35, v36
	v_rcp_f32_e32 v36, v33
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v45, s4, v5, v75, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v75, v75, v6
	v_div_fixup_f32 v2, v34, v75, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v42, v35
	v_fmac_f32_e32 v37, v22, v37
	v_div_scale_f32 v22, s3, v3, v75, v3
	v_fma_f32 v34, -v33, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v44, v46, 1.0
	v_dual_mul_f32 v49, v45, v40 :: v_dual_mul_f32 v38, v22, v37
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v34, v36
	v_div_scale_f32 v34, s1, v4, v75, v4
	v_fma_f32 v43, -v41, v38, v22
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s6, v7, v75, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v47, v34, v36 :: v_dual_fmac_f32 v38, v43, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fma_f32 v22, -v41, v38, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v33, v47, v34
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v6, v75, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v22, v37, v38
	v_fma_f32 v37, -v39, v49, v45
	v_fmac_f32_e32 v47, v41, v36
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v22, v75, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v37, v40
	v_fma_f32 v22, -v33, v47, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v37.h, v54.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v39, v49, v45
	v_div_fmas_f32 v22, v22, v36, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.h, v54.l
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v41, v48, v46
	v_div_fmas_f32 v34, v34, v40, v49
	s_mov_b32 vcc_lo, s5
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s5, 0, v75
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_lshrrev_b32_e32 v36, 1, v53
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v44, v41, v48
	v_div_fixup_f32 v4, v22, v75, v4
	v_div_fixup_f32 v5, v34, v75, v5
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s5
	v_cndmask_b32_e64 v25, 0, v25, s5
	v_cndmask_b32_e64 v24, 0, v24, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v33, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v39.l, v26.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v55, v43, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v37.l, v25.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v27, v27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s5
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v38, -v35, v55, v43
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v37, 1, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s5
	v_cndmask_b32_e64 v17, 0, v17, s5
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v22, 16, v36
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v55, v38, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v38.l, v24.h
	v_mov_b16_e32 v38.h, v54.l
	v_add3_u32 v37, v25, v37, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s5
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v33, -v35, v55, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v38, 1, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s5
	v_cndmask_b32_e64 v20, 0, v20, s5
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v42, v55
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v25, v25
	v_mov_b16_e32 v25.l, v27.h
	v_mov_b16_e32 v25.h, v54.l
	v_add3_u32 v38, v24, v38, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s6
	v_cmp_o_f32_e64 s6, v24, v24
	v_and_b32_e32 v25, 1, v25
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v32, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v32, 1, v39
	v_mov_b16_e32 v39.l, v28.h
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s6
	v_add3_u32 v25, v27, v25, 0x7fff
	v_mov_b16_e32 v27.l, v24.h
	v_mov_b16_e32 v27.h, v54.l
	v_add3_u32 v32, v26, v32, 0x7fff
	v_and_b32_e32 v38, 1, v39
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v30, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v27, 1, v27
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s7
	v_add3_u32 v30, v28, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v28, v28
	v_mov_b16_e32 v28.l, v26.h
	v_mov_b16_e32 v28.h, v54.l
	v_add3_u32 v27, v24, v27, 0x7fff
	v_mov_b16_e32 v38.l, v29.h
	v_mov_b16_e32 v38.h, v54.l
	v_cmp_o_f32_e64 s8, v24, v24
	v_and_b32_e32 v24, 1, v28
	v_cndmask_b16 v25.l, 0x7fff, v32.h, s6
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s7
	v_and_b32_e32 v30, 1, v38
	v_cmp_o_f32_e64 s6, v26, v26
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v27.h, s8
	v_mov_b16_e32 v27.l, v17.h
	v_add3_u32 v26, v29, v30, 0x7fff
	v_mov_b16_e32 v27.h, v54.l
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_cmp_o_f32_e64 s6, v29, v29
	v_mov_b16_e32 v29.l, v16.h
	v_mov_b16_e32 v29.h, v54.l
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v31, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v27, 1, v27
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s6
	v_mov_b16_e32 v31.h, v54.l
	v_and_b32_e32 v26, 1, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v44, v41, v48
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.l, v19.h
	v_mov_b16_e32 v31.l, v30.h
	v_add3_u32 v27, v17, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v46, v41
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v22
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v17, v16, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_and_b32_e32 v26, 1, v29
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s6
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v16, 1, v31
	v_cndmask_b16 v27.l, 0x7fff, v17.h, s7
	v_add3_u32 v17, v19, v26, 0x7fff
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v54.l
	v_add3_u32 v16, v30, v16, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s6, v19, v19
	v_mov_b16_e32 v19.l, v18.h
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e32 v19.h, v54.l
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v23, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v23, v21, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_mov_b16_e32 v21.h, v54.l
	v_mov_b16_e32 v21.l, v16.h
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v26.l, v20.h
	v_mov_b16_e32 v26.h, v54.l
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s6
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v19, v18, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v18, 1, v26
	v_add3_u32 v21, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_mov_b16_e32 v26.l, v8.h
	v_mov_b16_e32 v16.l, v9.h
	v_mov_b16_e32 v16.h, v54.l
	v_cndmask_b16 v23.l, 0x7fff, v19.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s7
	v_and_b32_e32 v21, 1, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s5
	v_cndmask_b32_e64 v11, 0, v11, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v18, v20, v18, 0x7fff
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v8, v21, 0x7fff
	v_mov_b16_e32 v21.l, v10.h
	v_mov_b16_e32 v21.h, v54.l
	v_mov_b16_e32 v26.l, v11.h
	v_add3_u32 v16, v9, v16, 0x7fff
	v_cmp_o_f32_e64 s7, v9, v9
	v_cmp_o_f32_e64 s8, v8, v8
	v_and_b32_e32 v8, 1, v21
	v_and_b32_e32 v9, 1, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s5
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s6
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s7
	v_add3_u32 v8, v10, v8, 0x7fff
	v_add3_u32 v9, v11, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_cmp_o_f32_e64 s7, v10, v10
	v_mov_b16_e32 v10.l, v13.h
	v_mov_b16_e32 v10.h, v54.l
	v_mov_b16_e32 v11.l, v12.h
	v_mov_b16_e32 v11.h, v54.l
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_and_b32_e32 v8, 1, v10
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v10, 1, v11
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v14, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v13, v13
	v_add3_u32 v8, v13, v8, 0x7fff
	v_mov_b16_e32 v13.h, v54.l
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e32 v14.h, v54.l
	v_add3_u32 v10, v12, v10, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v12, 1, v13
	v_and_b32_e32 v14, 1, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.l, 0x7fff, v10.h, s7
	v_cmp_o_f32_e64 s7, v11, v11
	v_add3_u32 v10, v11, v12, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_add3_u32 v13, v15, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s7
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v54.l
	v_mov_b16_e32 v12.l, v0.h
	v_mov_b16_e32 v12.h, v54.l
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s6
	v_mov_b16_e32 v13.l, v3.h
	v_mov_b16_e32 v13.h, v54.l
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v12, 1, v12
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v33, v75, v6
	v_div_fixup_f32 v7, v35, v75, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v10, v1, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v12, v0, v12, 0x7fff
	v_cmp_o_f32_e64 s7, v0, v0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v16.l, 0x7fff, v20.h, s8
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v14.h, v54.l
	v_add3_u32 v1, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s6
	v_mov_b16_e32 v10.l, v4.h
	v_mov_b16_e32 v10.h, v54.l
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s5
	v_cndmask_b32_e64 v6, 0, v6, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s7
	v_mov_b16_e32 v12.l, v5.h
	v_mov_b16_e32 v12.h, v54.l
	v_and_b32_e32 v0, 1, v14
	v_and_b32_e32 v10, 1, v10
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v14.l, v6.h
	v_mov_b16_e32 v13.h, v54.l
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v4, v10, 0x7fff
	v_and_b32_e32 v10, 1, v14
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v5, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s8
	v_add3_u32 v4, v6, v10, 0x7fff
	v_add3_u32 v5, v7, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	v_cndmask_b32_e64 v5, v37, v28, s0
	v_cndmask_b32_e64 v7, v25, v24, s0
	v_cndmask_b32_e64 v12, v27, v23, s0
	v_cndmask_b32_e64 v13, v19, v17, s0
	v_cndmask_b32_e64 v14, v17, v19, s0
	v_cndmask_b32_e64 v15, v8, v16, s0
	v_cndmask_b32_e64 v8, v16, v8, s0
	v_cndmask_b32_e64 v16, v11, v9, s0
	v_cndmask_b32_e64 v9, v9, v11, s0
	v_cndmask_b32_e64 v17, v0, v3, s0
	v_cndmask_b32_e64 v0, v3, v0, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v35, s19, v52
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v18, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	s_mov_b32 s5, 0x76543210
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 32, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v4, v28, v37, s0
	v_cndmask_b32_e64 v6, v24, v25, s0
	v_cndmask_b32_e64 v10, v23, v27, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v12, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v19, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s19, v36
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v50
	v_perm_b32 v1, v2, v4, v51
	v_perm_b32 v2, v3, v6, v50
	v_perm_b32 v3, v3, v6, v51
	v_perm_b32 v4, v5, v10, v50
	v_perm_b32 v5, v5, v10, v51
	v_perm_b32 v6, v7, v13, v50
	v_perm_b32 v7, v7, v13, v51
	v_perm_b32 v8, v11, v15, v50
	v_perm_b32 v9, v11, v15, v51
	v_perm_b32 v10, v12, v16, v50
	v_perm_b32 v11, v12, v16, v51
	v_perm_b32 v12, v14, v17, v50
	v_perm_b32 v13, v14, v17, v51
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v35, v22, 1
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s19, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v19, v18, v50
	v_perm_b32 v15, v19, v18, v51
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s0, s2, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v17, s[16:19], 0 offen
	buffer_store_b128 v[8:11], v18, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v19, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 123
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 123
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8548
; TotalNumSgprs: 39
; NumVgprs: 123
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 123
; Occupancy: 10
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
