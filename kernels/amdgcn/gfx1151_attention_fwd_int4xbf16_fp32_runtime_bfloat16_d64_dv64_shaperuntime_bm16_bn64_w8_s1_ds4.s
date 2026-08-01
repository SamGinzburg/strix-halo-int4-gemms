	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s59, s[0:1], 0x68
	s_load_b128 s[60:63], s[0:1], 0x4c
	s_load_b32 s81, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v41, 31, v0
	v_lshrrev_b32_e32 v56, 5, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_bfe_i32 v3, v0, 7, 1
	v_and_b32_e32 v4, 0x7f, v0
	v_lshlrev_b32_e32 v57, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v58, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v3, v3, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s17, s3, s62
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, 0x110, v3
	s_cselect_b32 s5, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s7, s59
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s7
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s12, s2, s59
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v61, 0, v4
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s12, s12, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s21, s4
	s_sub_i32 s4, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s21
	s_mul_hi_u32 s4, s21, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s21, s21, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s6, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s4, s7
	s_sub_i32 s6, s6, s13
	s_add_i32 s13, s4, 1
	s_sub_i32 s14, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s6, s14, s6
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s13, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s14, s60
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s15, s3
	s_cvt_f32_u32 s6, s14
	s_sub_i32 s13, 0, s14
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s4, s4, s12
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s12, s4, s59
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s4, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s25, s2, s12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s20, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s6
	s_mul_hi_u32 s13, s6, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s13
	s_mul_hi_u32 s6, s15, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s6, s14
	s_sub_i32 s2, s15, s4
	s_add_i32 s4, s6, 1
	s_sub_i32 s12, s2, s14
	s_cmp_ge_u32 s2, s14
	s_mov_b32 s15, 0x31027000
	s_cselect_b32 s4, s4, s6
	s_cselect_b32 s2, s12, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s14
	s_load_b64 s[12:13], s[0:1], 0x0
	s_cselect_b32 s6, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s61
	s_xor_b32 s18, s60, s61
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s16, 0, s2
	s_ashr_i32 s22, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s20, v56
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s62, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s4
	s_mul_hi_u32 s16, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s4, s16
	s_mul_hi_u32 s16, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s16, s2
	s_add_i32 s18, s16, 1
	s_sub_i32 s14, s14, s19
	s_sub_i32 s19, s14, s2
	s_cmp_ge_u32 s14, s2
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s14, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s62, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s18, s16
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s24, s17, s20
	s_load_b64 s[16:17], s[0:1], 0x18
	v_mad_u64_u32 v[43:44], null, s81, v56, v[41:42]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s81, v41
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s14, s24, s81
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v6, s24, v58, 1
	s_mov_b32 s19, s15
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v59, s81, 3, v43
	v_add_nc_u32_e32 v1, s14, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s14, v59
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s22
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u8 v1, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s62, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v60, 0, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s18, s14
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v60, v1
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v1, v3, s[16:19], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s17, s2, s22
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 24, v57
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s2, s16
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v2, v58, 5, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s63, 63
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s12, s2, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_xor_b32_e32 v4, 8, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s12, s12, 26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 16, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v62, 0, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s12, s2, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v2, 24, v2
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s12, s12, s59
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v63, 0, v4
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s12, s12, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v64, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s13, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v65, 0, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s14, s13, s21
	s_xor_b32 s12, s12, s59
	s_mul_i32 s15, s14, s7
	.loc	1 795 14                        ; attention.py:795:14
	s_and_not1_b32 s2, s2, 63
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s13, s13, s15
	s_ashr_i32 s12, s12, 31
	s_add_i32 s15, s14, 1
	s_sub_i32 s18, s13, s7
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[44:45], v62
	ds_load_b64 v[46:47], v63
	ds_load_b64 v[48:49], v64
	ds_load_b64 v[50:51], v65
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s13, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x80, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s14, s15, s14
	s_cselect_b32 s13, s18, s13
	s_add_i32 s15, s14, 1
	s_cmp_ge_u32 s13, s7
	s_cselect_b32 s7, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s12
	s_sub_i32 s7, s7, s12
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s12, v3
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s13, s25, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s83, s13, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s13, s7, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s7, 0, v2
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s13, s83, s13
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s84, s2, s13
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s20
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s20
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s63, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s83, s83, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s13, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s13, s13, 26
	s_add_i32 s2, s2, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s84, s84, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s82, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v67, 0, 1, s5
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s63, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s5, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 26
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s84, s84, s2
.LBB0_4:
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v42, 63, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v66, 0xc0, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s84
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s82, v42
	v_lshrrev_b32_e32 v68, 4, v66
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v11, 4, v66
	s_load_b64 s[56:57], s[0:1], 0x40
	s_cbranch_execz .LBB0_8
.Ltmp2:
; %bb.6:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v12, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_15
.LBB0_7:
                                        ; implicit-def: $vgpr11
	s_load_b64 s[56:57], s[0:1], 0x40
.LBB0_8:                                ; %.lr.ph
	s_xor_b32 s5, s3, s60
	s_mul_f32 s8, s12, 0x4f7ffffe
	s_ashr_i32 s5, s5, 31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[64:65], s[0:1], 0x30
	s_xor_b32 s6, s6, s5
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s18, s6, s5
	s_sub_i32 s5, 0, s16
	s_mul_i32 s6, s18, s60
	s_mul_i32 s5, s5, s8
	s_sub_i32 s19, s3, s6
	s_mul_hi_u32 s5, s8, s5
	s_abs_i32 s6, s19
	s_add_i32 s8, s8, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s8
	s_ashr_i32 s8, s19, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s21, s5, s16
	s_xor_b32 s8, s8, s17
	s_sub_i32 s6, s6, s21
	s_add_i32 s17, s5, 1
	s_sub_i32 s21, s6, s16
	s_cmp_ge_u32 s6, s16
	s_load_b32 s60, s[0:1], 0x7c
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s21, s6
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v69, 6, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s17, s5
	v_mov_b16_e32 v2.l, 0
	s_xor_b32 s5, s5, s8
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v1.l
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s20, v69
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x20
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s5, s8
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s5, s12, 0x3fb8aa3b
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s1, s18, s61
	v_and_b32_e32 v3, 0xe0, v0
	s_add_i32 s61, s0, s1
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v70, s5, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v4, 8, v1
	v_or_b32_e32 v5, 12, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v93, v70 :: v_dual_add_nc_u32 v72, s11, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s62, v1
	v_mul_lo_u32 v1, s15, v69
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v73, s11, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s62, v2
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_and_b32 v2, 60, v57
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v6, 16, v0
	v_cndmask_b32_e64 v17, 0x84, 0, s7
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v74, s11, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[52:53], null, s60, v42, v[1:2]
	v_lshlrev_b32_e32 v1, 6, v0
	v_lshl_or_b32 v3, v3, 2, v2
	v_and_or_b32 v2, v56, 3, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s62, v4
	v_lshlrev_b32_e32 v22, 2, v6
	v_and_b32_e32 v4, 64, v1
	v_and_b32_e32 v1, 0x380, v1
	v_xor_b32_e32 v2, v2, v17
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_lshlrev_b32 v17, 1, v58
	v_xor_b32_e32 v3, v3, v68
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v92, v70 :: v_dual_add_nc_u32 v75, s11, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v89, v1, v22, v17
	v_and_b32_e32 v1, 64, v57
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s62, v5
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_lshlrev_b32 v5, 2, v41
	v_or_b32_e32 v86, v3, v4
	v_add_nc_u32_e32 v35, 0, v1
	v_mov_b32_e32 v1, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_mov_b32_e32 v6, 0x7632
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s15, 12, v[52:53]
	v_mad_u64_u32 v[54:55], null, s82, v69, v[42:43]
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x3276, v6, vcc_lo
	v_lshl_or_b32 v87, v58, 8, v5
	v_xor_b32_e32 v5, 0x820, v86
	v_xor_b32_e32 v3, 0x410, v86
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v6, v6, 8, v6
	v_xor_b32_e32 v7, 0xc30, v86
	v_add_nc_u32_e32 v96, 0, v5
	v_xor_b32_e32 v8, 4, v87
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v6, 0x760076, v6
	v_xor_b32_e32 v9, 8, v87
	v_xor_b32_e32 v10, 12, v87
	v_xor_b32_e32 v11, 16, v87
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v6, v6, 4, v6
	v_xor_b32_e32 v12, 20, v87
	v_xor_b32_e32 v13, 24, v87
	v_xor_b32_e32 v14, 28, v87
	v_and_b32_e32 v55, 0x5040504, v1
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v15, 32, v87
	v_xor_b32_e32 v16, 36, v87
	v_xor_b32_e32 v18, 40, v87
	v_xor_b32_e32 v19, 44, v87
	v_mov_b32_e32 v5, v1
	v_or_b32_e32 v88, v2, v4
	v_xor_b32_e32 v20, 48, v87
	v_xor_b32_e32 v21, 52, v87
	v_xor_b32_e32 v23, 56, v87
	v_xor_b32_e32 v2, 60, v87
	v_and_b32_e32 v24, 0x60, v0
	v_xor_b32_e32 v22, 0x108, v88
	v_xor_b32_e32 v25, 0x210, v88
	v_xor_b32_e32 v26, 0x318, v88
	v_xor_b32_e32 v27, 4, v89
	v_xor_b32_e32 v28, 8, v89
	v_xor_b32_e32 v29, 12, v89
	v_xor_b32_e32 v30, 16, v89
	v_xor_b32_e32 v31, 20, v89
	v_xor_b32_e32 v32, 24, v89
	v_xor_b32_e32 v33, 28, v89
	v_lshrrev_b32_e32 v34, 2, v66
	v_dual_mov_b32 v135, 0xff800000 :: v_dual_add_nc_u32 v4, 0, v4
	v_and_b32_e32 v90, 0x7060706, v6
	v_and_b32_e32 v6, 0x1fe, v57
	v_or_b32_e32 v36, 0x600, v57
	v_or_b32_e32 v37, 0xe00, v57
	v_or_b32_e32 v38, 0x1600, v57
	v_or_b32_e32 v39, 0x1e00, v57
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s20, s20, s15
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s18, s13
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v71, v0, 4, 1
	v_subrev_nc_u32_e32 v76, s9, v72
	v_subrev_nc_u32_e32 v77, s9, v73
	v_subrev_nc_u32_e32 v78, s9, v74
	v_subrev_nc_u32_e32 v79, s9, v75
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_add_nc_u32 v80, s10, v72
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v94, v70 :: v_dual_add_nc_u32 v81, s10, v73
	v_add_nc_u32_e32 v82, s10, v74
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_add_nc_u32 v83, s10, v75
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v84, s15, 2, v52
	v_lshl_add_u32 v85, s15, 3, v52
	v_add_nc_u32_e32 v95, 0, v3
	v_add_nc_u32_e32 v97, 0, v7
	v_add_nc_u32_e32 v98, 0, v8
	v_dual_mov_b32 v134, v1 :: v_dual_add_nc_u32 v99, 0, v9
	v_add_nc_u32_e32 v100, 0, v10
	v_add_nc_u32_e32 v101, 0, v11
	v_add_nc_u32_e32 v102, 0, v12
	v_add_nc_u32_e32 v103, 0, v13
	v_add_nc_u32_e32 v104, 0, v14
	v_add_nc_u32_e32 v105, 0, v15
	v_add_nc_u32_e32 v106, 0, v16
	v_add_nc_u32_e32 v107, 0, v18
	v_add_nc_u32_e32 v108, 0, v19
	v_add_nc_u32_e32 v109, 0, v20
	v_add_nc_u32_e32 v110, 0, v21
	v_add_nc_u32_e32 v111, 0, v23
	v_add_nc_u32_e32 v112, 0, v2
	v_add_nc_u32_e32 v113, 0, v22
	v_add_nc_u32_e32 v114, 0, v25
	v_add_nc_u32_e32 v115, 0, v26
	v_add_nc_u32_e32 v116, 0, v27
	v_add_nc_u32_e32 v117, 0, v28
	v_add_nc_u32_e32 v118, 0, v29
	v_add_nc_u32_e32 v119, 0, v30
	v_add_nc_u32_e32 v120, 0, v31
	v_add_nc_u32_e32 v121, 0, v32
	v_add_nc_u32_e32 v122, 0, v33
	v_add_nc_u32_e32 v124, v4, v34
	v_add_nc_u32_e32 v125, 0, v6
	v_add_nc_u32_e32 v126, 0, v36
	v_add_nc_u32_e32 v127, 0, v37
	v_add_nc_u32_e32 v128, 0, v38
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v129, 0, v39
	v_add_nc_u32_e32 v123, v35, v34
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_add3_u32 v91, 0, v17, v24
	v_mov_b32_e32 v8, v1
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s19, s19, s14
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_add_i32 s90, s8, s20
	s_mov_b32 s48, 0
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s61, s61, s63
	s_lshl_b32 s62, s81, 4
	s_mul_i32 s85, s81, 24
	s_lshl_b32 s86, s81, 5
	s_mul_i32 s87, s81, 40
	s_mul_i32 s88, s81, 48
	s_mul_i32 s89, s81, 56
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_add_i32 s90, s90, s19
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s91, s82, 2
	s_lshl_b32 s92, s82, 3
	s_mul_i32 s93, s82, 12
	s_lshl_b32 s94, s82, 4
	s_mul_i32 s95, s82, 20
	s_mul_i32 s96, s82, 24
	s_mul_i32 s97, s82, 28
	s_lshl_b32 s98, s82, 5
	s_mul_i32 s99, s82, 36
	s_mul_i32 s100, s82, 40
	s_mul_i32 s101, s82, 44
	s_mul_i32 s102, s82, 48
	s_mul_i32 s103, s82, 52
	s_mul_i32 s104, s82, 56
	s_mul_i32 vcc_hi, s82, 60
	s_and_b32 s77, s71, 0xffff
	s_mov_b32 s76, s70
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s58, 0x76543210
	s_mov_b32 s70, s78
	s_mov_b32 s71, s79
	s_mov_b32 s74, s78
	s_mov_b32 s75, s79
	s_mov_b32 s66, s78
	s_mov_b32 s67, s79
                                        ; implicit-def: $vgpr208 : SGPR spill to VGPR lane
	v_writelane_b32 v208, s25, 0
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s7, s83, s60
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v171, v36
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s7, s90, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v40, v18
	v_cvt_f32_i32_e32 v18, v13
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v13, s7, v52, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v169, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v19
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v12, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v14, s7, v84, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v170, v37
	v_cvt_f32_i32_e32 v37, v25
	v_cvt_f32_i32_e32 v25, v32
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s16
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v20, v11
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v15, s7, v85, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v172, v35
	v_cvt_f32_i32_e32 v35, v26
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v31, v21
	v_cvt_f32_i32_e32 v21, v10
	v_cvt_f32_i32_e32 v10, v16
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b32 v16, v13, s[64:67], 0 offen
	buffer_load_b32 v14, v14, s[64:67], 0 offen
	v_add_lshl_u32 v13, s7, v53, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s15
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v174, v33
	v_cvt_f32_i32_e32 v173, v34
	v_cvt_f32_i32_e32 v34, v27
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v13, 0x80000000, v13, s14
	s_clause 0x1
	buffer_load_b32 v15, v15, s[64:67], 0 offen
	buffer_load_b32 v13, v13, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v22, v24
	v_dual_mul_f32 v40, v70, v40 :: v_dual_add_nc_u32 v33, 0, v86
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v154.h, v154.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v17, v17
	v_mul_f32_e32 v19, v93, v19
	v_cvt_f32_i32_e32 v9, v9
	v_dual_mul_f32 v21, v70, v21 :: v_dual_mul_f32 v10, v93, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v17, v94, v17
	v_mul_f32_e32 v27, v92, v27
	v_mul_f32_e32 v11, v92, v11
	v_mul_f32_e32 v9, v70, v9
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v30, v70, v30
	v_mul_f32_e32 v22, v70, v22
	v_mul_f32_e32 v28, v94, v28
	v_mul_f32_e32 v20, v92, v20
	v_mul_f32_e32 v26, v93, v26
	v_mul_f32_e32 v18, v94, v18
	v_mul_f32_e32 v12, v70, v12
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v130, v130, v130
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v16, 0xff800000, v16, s17
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v24, 0xff800000, v14, s16
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v33, v16
	ds_store_b32 v95, v24
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v24
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v16
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v14, 0xff800000, v15, s15
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v15, 0, v87
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v24, 0xff800000, v13, s14
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v96, v14
	ds_store_b32 v97, v24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[175:176], v15 offset1:32
	ds_load_2addr_b32 v[177:178], v98 offset1:32
	ds_load_2addr_b32 v[179:180], v99 offset1:32
	ds_load_2addr_b32 v[181:182], v100 offset1:32
	ds_load_2addr_b32 v[183:184], v101 offset1:32
	ds_load_2addr_b32 v[185:186], v102 offset1:32
	ds_load_2addr_b32 v[187:188], v103 offset1:32
	ds_load_2addr_b32 v[189:190], v104 offset1:32
	ds_load_2addr_b32 v[191:192], v105 offset1:32
	ds_load_2addr_b32 v[193:194], v106 offset1:32
	ds_load_2addr_b32 v[195:196], v107 offset1:32
	ds_load_2addr_b32 v[197:198], v108 offset1:32
	ds_load_2addr_b32 v[199:200], v109 offset1:32
	ds_load_2addr_b32 v[201:202], v110 offset1:32
	ds_load_2addr_b32 v[203:204], v111 offset1:32
	ds_load_2addr_b32 v[205:206], v112 offset1:32
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s37, s17, vcc_lo
	s_and_b32 s39, s16, s7
	v_cndmask_b32_e64 v13, 0, 1, s37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v178, 0x3fb8aa3b, v178 :: v_dual_add_nc_u32 v207, 0, v88
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v16, 0, 1, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v70, v39
	v_mul_f32_e32 v23, v70, v23
	v_mul_f32_e32 v32, v70, v32
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v207, v13
	ds_store_b8 v113, v16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v13.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v70, v31
	v_mul_f32_e32 v29, v70, v29
	v_mul_f32_e32 v25, v94, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v13.h, v137.l
	v_mov_b16_e64 v154.l, v13.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v24
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v191
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v178, v40, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v40.h, v155.l
	v_mov_b16_e32 v40.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v154, 0x3fb8aa3b, v180 :: v_dual_mul_f32 v155, 0x3fb8aa3b, v182
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v24, v9, v13
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s41, s15, vcc_lo
	s_and_b32 s40, s14, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v154, v39, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v39.h, v156.l
	v_mov_b16_e32 v39.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v156, 0x3fb8aa3b, v186 :: v_dual_fmac_f32 v155, v32, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v32.h, v157.l
	v_mov_b16_e32 v32.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v39, 0x3fb8aa3b, v184
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v39, v31, v32
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v31.h, v158.l
	v_mov_b16_e32 v31.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v158, 0x3fb8aa3b, v190 :: v_dual_mul_f32 v157, 0x3fb8aa3b, v188
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v93, v34
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v156, v30, v31
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v30.h, v159.l
	v_mov_b16_e32 v30.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v159, 0x3fb8aa3b, v192
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v92, v35
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v157, v23, v30
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v23.h, v160.l
	v_mov_b16_e32 v23.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v160, 0x3fb8aa3b, v194
	v_mul_f32_e32 v30, 0x3fb8aa3b, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v158, v22, v23
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v22.h, v161.l
	v_mov_b16_e32 v22.l, v13.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v70, v174
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v159, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v162.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v23, v70, v173 :: v_dual_mul_f32 v162, 0x3fb8aa3b, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v161, 0x3fb8aa3b, v196 :: v_dual_fmac_f32 v160, v23, v22
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v70, v172
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v163.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v161, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v164.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v23, v70, v171 :: v_dual_mul_f32 v164, 0x3fb8aa3b, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v163, 0x3fb8aa3b, v200 :: v_dual_fmac_f32 v162, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v165.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v70, v170
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v163, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v166.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v23, v70, v169 :: v_dual_mul_f32 v166, 0x3fb8aa3b, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v165, 0x3fb8aa3b, v204 :: v_dual_fmac_f32 v164, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v167.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v70, v38
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v165, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v168.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v70, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v166, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v139.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v70, v37
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v30, v23, v22
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v177
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v23.h, v138.l
	v_mov_b16_e32 v23.l, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v22, v31, v23
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v31.h, v140.l
	v_mov_b16_e32 v31.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v140, 0x3fb8aa3b, v203
	v_mul_f32_e32 v23, 0x3fb8aa3b, v179
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v23, v32, v31
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v31, 0x3fb8aa3b, v181
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v32.h, v141.l
	v_mov_b16_e32 v32.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v141, 0x3fb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v31, v28, v32 :: v_dual_mul_f32 v28, 0x3fb8aa3b, v183
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v32.h, v142.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v28, v29, v32 :: v_dual_mul_f32 v29, 0x3fb8aa3b, v185
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v32.h, v143.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v29, v27, v32
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v27, 0x3fb8aa3b, v187
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v32.h, v144.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v27, v26, v32 :: v_dual_mul_f32 v32, 0x3fb8aa3b, v189
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v145.l
	v_mov_b16_e32 v26.l, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v32, v25, v26 :: v_dual_mul_f32 v25, 0x3fb8aa3b, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v146.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v25, v21, v26
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v21, 0x3fb8aa3b, v195
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v26.h, v147.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v21, v20, v26 :: v_dual_mul_f32 v20, 0x3fb8aa3b, v197
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v149.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v20, v19, v26 :: v_dual_mul_f32 v19, 0x3fb8aa3b, v199
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v151.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v19, v18, v26 :: v_dual_mul_f32 v26, 0x3fb8aa3b, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v18.h, v153.l
	v_mov_b16_e32 v18.l, v13.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v26, v17, v18
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v17.h, v148.l
	v_mov_b16_e32 v17.l, v13.l
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v18, 0, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v12, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v12.h, v150.l
	v_mov_b16_e32 v12.l, v13.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v140, v11, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v11.h, v152.l
	v_mov_b16_e32 v11.l, v13.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v141, v10, v11
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s41
	v_cndmask_b32_e64 v11, 0, 1, s40
	ds_store_b8 v114, v10
	ds_store_b8 v115, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v117
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v118 offset:32
	ds_load_u16_d16 v10, v117 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v116 offset:32
	ds_load_u16_d16_hi v11, v18 offset:32
	s_waitcnt lgkmcnt(0)
	v_and_b16 v11.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s33, 1, v11.l
	ds_load_u16_d16 v11, v116
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v23, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v9.l
	ds_load_u16_d16 v9, v118
	s_waitcnt lgkmcnt(1)
	v_and_b16 v12.l, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s38, 1, v12.l
	ds_load_u16_d16 v12, v122
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v122 offset:32
	ds_load_u16_d16_hi v13, v121 offset:32
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v22, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s11, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v9.l
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v11.l, 1, v11.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s36, 1, v9.l
	v_cmp_eq_u16_e64 s28, 1, v11.l
	s_waitcnt lgkmcnt(1)
	v_and_b16 v14.l, 1, v12.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v31, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v14.l
	ds_load_u16_d16 v14, v121
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v14, v120 offset:32
	s_waitcnt lgkmcnt(0)
	v_and_b16 v16.l, 1, v14.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s30, 1, v16.l
	ds_load_u16_d16 v16, v120
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v16, v119 offset:32
	s_waitcnt lgkmcnt(0)
	v_and_b16 v17.l, 1, v16.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s35, 1, v17.l
	ds_load_u16_d16 v17, v119
	s_waitcnt lgkmcnt(0)
	v_and_b16 v17.h, 1, v17.l
	v_lshrrev_b16 v11.l, 8, v17.l
	v_cmp_eq_u16_e64 s34, 1, v17.h
	v_and_b16 v17.h, 1, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s27, 1, v17.h
	v_and_b16 v17.h, 1, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s24, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v16.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v24, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v17.h
	v_and_b16 v17.h, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v9.h
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v24, 0xff800000, v39, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s25, 1, v17.h
	v_and_b16 v17.h, 1, v10.l
	v_and_b16 v9.h, 1, v9.h
	v_cmp_eq_u16_e64 s26, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v14.l
	v_lshrrev_b16 v10.l, 8, v10.l
	v_cmp_eq_u16_e64 s22, 1, v17.h
	v_and_b16 v17.h, 1, v10.h
	v_cmp_eq_u16_e64 s14, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v16.h
	v_and_b16 v11.l, 1, v11.l
	v_lshrrev_b16 v10.h, 8, v10.h
	v_cmp_eq_u16_e64 s29, 1, v17.h
	v_and_b16 v17.h, 1, v12.h
	v_and_b16 v9.h, 1, v9.h
	v_cmp_eq_u16_e64 s20, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v12.l
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s18, 1, v17.h
	v_and_b16 v17.h, 1, v13.h
	v_cmp_eq_u16_e64 s10, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v14.h
	v_and_b16 v11.l, 1, v11.l
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s17, 1, v17.h
	v_and_b16 v17.h, 1, v14.h
	v_and_b16 v9.h, 1, v9.h
	v_cmp_eq_u16_e64 s23, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.h
	v_cmp_eq_u16_e64 s16, 1, v10.h
	v_cmp_eq_u16_e64 s21, 1, v17.h
	ds_load_u16_d16_hi v17, v18
	v_cmp_eq_u16_e64 s12, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v13.h
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s13, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v25, s29
	v_cndmask_b32_e64 v25, 0xff800000, v156, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.h, 1, v9.h
	v_cmp_eq_u16_e64 s15, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v11, 0xff800000, v28, s34
	v_cndmask_b32_e64 v28, 0xff800000, v155, s28
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s7, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v12, 0xff800000, v29, s35
	v_cndmask_b32_e64 v29, 0xff800000, v178, s11
	s_barrier
	v_cndmask_b32_e64 v10, 0xff800000, v32, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.h, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v19, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v18.l, 8, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v20, s25
	v_cndmask_b32_e64 v35, 0xff800000, v21, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s8, 1, v9.h
	v_and_b16 v9.h, 1, v17.h
	v_and_b16 v18.l, 1, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v31, 0xff800000, v141, s18
	v_cndmask_b32_e64 v34, 0xff800000, v34, s21
	v_cndmask_b32_e64 v22, 0xff800000, v157, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v9.h
	v_cmp_eq_u16_e64 s9, 1, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v9, 0xff800000, v27, s30
	v_cndmask_b32_e32 v27, 0xff800000, v154, vcc_lo
	v_cndmask_b32_e64 v23, 0xff800000, v158, s23
	v_cndmask_b32_e64 v138, 0xff800000, v30, s42
	v_cndmask_b32_e64 v26, 0xff800000, v26, s9
	v_cndmask_b32_e64 v30, 0xff800000, v140, s17
	v_cndmask_b32_e64 v20, 0xff800000, v159, s15
	v_cndmask_b32_e64 v21, 0xff800000, v160, s16
	v_cndmask_b32_e64 v18, 0xff800000, v161, s13
	ds_store_2addr_b32 v15, v138, v26 offset1:32
	v_cndmask_b32_e64 v19, 0xff800000, v162, s14
	v_cndmask_b32_e64 v16, 0xff800000, v163, s10
	v_cndmask_b32_e64 v17, 0xff800000, v164, s12
	v_cndmask_b32_e64 v14, 0xff800000, v165, s7
	v_cndmask_b32_e64 v15, 0xff800000, v166, s8
	ds_store_2addr_b32 v98, v139, v29 offset1:32
	ds_store_2addr_b32 v99, v40, v27 offset1:32
	ds_store_2addr_b32 v100, v137, v28 offset1:32
	ds_store_2addr_b32 v101, v11, v24 offset1:32
	ds_store_2addr_b32 v102, v12, v25 offset1:32
	ds_store_2addr_b32 v103, v9, v22 offset1:32
	ds_store_2addr_b32 v104, v10, v23 offset1:32
	ds_store_2addr_b32 v105, v37, v20 offset1:32
	ds_store_2addr_b32 v106, v38, v21 offset1:32
	ds_store_2addr_b32 v107, v35, v18 offset1:32
	ds_store_2addr_b32 v108, v36, v19 offset1:32
	ds_store_2addr_b32 v109, v32, v16 offset1:32
	ds_store_2addr_b32 v110, v34, v17 offset1:32
	ds_store_2addr_b32 v111, v30, v14 offset1:32
	ds_store_2addr_b32 v112, v31, v15 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v39, v33
	ds_load_b32 v144, v95
	ds_load_b32 v145, v96
	ds_load_b32 v146, v97
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v33, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v140, v39, v39 :: v_dual_max_f32 v141, v144, v144
	v_dual_max_f32 v142, v145, v145 :: v_dual_max_f32 v143, v146, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v33, v140, v33
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v140, v144 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v140, v140, v140
	v_max_f32_e32 v140, v141, v140
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v141, v145 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v141, v141, v141
	v_max_f32_e32 v141, v142, v141
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v142, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v142, v142, v142
	v_max_f32_e32 v142, v143, v142
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v33, v33, v143
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v140 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v140, v140, v143
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v141 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v141, v141, v143
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v142 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v142, v142, v143
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v33, v33, v143
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v140 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v140, v140, v143
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v141 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v141, v141, v143
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v142 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v142, v142, v143
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v33, v33, v143
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v140 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v140, v140, v143
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v141 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v141, v141, v143
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v143, v142 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v142, v142, v143
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v143, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	v_max_f32_e32 v33, v33, v143
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v143, v140, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s43, v33, 31
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v140, v140, v143
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v143, v141, -1, -1 op_sel:[1,0]
	v_readlane_b32 s44, v140, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v143, v143, v143 :: v_dual_mov_b32 v140, s43
	v_max_f32_e32 v141, v141, v143
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v143, v142, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v141, 31
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v143, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v141, s44 :: v_dual_max_f32 v142, v142, v143
	v_readlane_b32 s46, v142, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v142, s45 :: v_dual_mov_b32 v143, s46
	ds_store_b128 v123, v[140:143]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[140:143], v124
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v33, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v131, v131, v141, v33
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v33, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v132, v132, v142, v33
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v33, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v133, v133, v143, v33
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v33, v140
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v140, v140, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v140, v33
.Ltmp55:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v144, v131
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v130, v130, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v140, v140, v140 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v140, v140, v140 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v140, v140, v140 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v140, v140, v140 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v141, v140, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v140, v140, v141 :: v_dual_sub_f32 v141, v145, v132
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s37, v140, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp62:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v141, v141, v141 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v141, v141, v141 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v141, v141, v141 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v141, v141, v141 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v142, v141, -1, -1 op_sel:[1,0]
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v141, v141, v142 :: v_dual_sub_f32 v142, v146, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s39, v141, 31
.Ltmp67:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v141, s37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s40
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v142, v142, v142 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v142, v142, v142 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v142, v142, v142 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v142, v142, v142 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v143, v142, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v142, v142, v143
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v143, v39, -1, -1 op_sel:[1,0]
	v_readlane_b32 s40, v142, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v39, v143 :: v_dual_mov_b32 v142, s39
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v143, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s41, v39, 31
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v38, v35, v36
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v140, s41
	ds_store_b128 v123, v[140:143]
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v140, v32, v34, v30
	v_max3_f32 v141, v31, v26, v29
	v_max3_f32 v142, v20, v21, v18
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v39, v140, v141
	v_max3_f32 v140, v27, v28, v24
	v_max3_f32 v141, v25, v22, v23
	v_max3_f32 v140, v140, v141, v142
	v_max_f32_e32 v141, v138, v139
	v_max3_f32 v142, v137, v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v141, v141, v40, v142
	v_max3_f32 v142, v9, v10, v37
	v_max3_f32 v39, v141, v142, v39
	v_dual_max_f32 v141, v19, v16 :: v_dual_max_f32 v142, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v141, v141, v17, v142
	v_max3_f32 v39, v39, v140, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v140, v39, s58, 0xfedcba98 op_sel:[1,0]
.Ltmp82:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v39, v136, v39, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.h, v13.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v139, v39
	v_sub_f32_e32 v138, v138, v39
	v_sub_f32_e32 v137, v137, v39
	v_sub_f32_e32 v40, v40, v39
	v_sub_f32_e32 v12, v12, v39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v12, v12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v11, v39
	v_sub_f32_e32 v10, v10, v39
	v_sub_f32_e32 v9, v9, v39
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v156, v136, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v139, s38
	v_cndmask_b32_e64 v138, 0, v138, s42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v137, 0, v137, s36
	v_cndmask_b32_e64 v40, 0, v40, s33
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v12, 0, v12, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.l, v139.h
	v_cmp_o_f32_e64 s37, v139, v139
	v_cmp_o_f32_e64 s38, v138, v138
	v_cmp_o_f32_e64 s36, v137, v137
	v_cmp_o_f32_e64 s33, v40, v40
	v_and_b32_e32 v140, 1, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v9, v9
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v156, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v139, v139, v140, 0x7fff
	v_mov_b16_e64 v140.h, v13.l
	v_mov_b16_e64 v140.l, v138.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v140, 1, v140
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s31
	v_cndmask_b32_e64 v9, 0, v9, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v11, v11
	v_add3_u32 v138, v138, v140, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s31, v10, v10
	v_cmp_o_f32_e64 s30, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v139.l, 0x7fff, v138.h, s38
	v_permlanex16_b32 v140, v139, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v138, v140, v139, v55
	v_perm_b32 v139, v140, v139, v90
	v_mov_b16_e64 v140.h, v13.l
	v_mov_b16_e64 v140.l, v137.h
	v_and_b32_e32 v140, 1, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v137, v137, v140, 0x7fff
	v_mov_b16_e64 v140.l, v40.h
	v_mov_b16_e64 v140.h, v13.l
	v_and_b32_e32 v140, 1, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v140, v40, v140, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v137.h, s36
	v_cndmask_b16 v40.l, 0x7fff, v140.h, s33
	v_cmp_o_f32_e64 s33, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v137, v40, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v140, v137, v40, v55
	v_perm_b32 v141, v137, v40, v90
	v_mov_b16_e32 v40.l, v12.h
	v_mov_b16_e32 v40.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v12, v40, 0x7fff
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v40.h, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s34
	v_permlanex16_b32 v12, v11, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v142, v12, v11, v55
	v_perm_b32 v143, v12, v11, v90
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v13.l
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v13.l
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s31
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v10, v9, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v144, v10, v9, v55
	v_perm_b32 v145, v10, v9, v90
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s83, v69
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s83, s83, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 4, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s63, v9
	v_cmp_gt_i32_e64 s30, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 8, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s45
	s_and_b32 s30, s2, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s31, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 12, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s33, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s34, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 20, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s35, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 24, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s36, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 28, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s37, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 32, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s38, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 36, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s39, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 40, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s40, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 44, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s41, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 48, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s42, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 52, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s43, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 56, v9
	v_add_nc_u32_e32 v9, 60, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s63, v10
	v_cmp_gt_i32_e64 s46, s63, v9
	v_mad_u64_u32 v[9:10], null, s47, s82, v[54:55]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s47, 0xff800000, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v136, 0, v156, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v11, v9, s91, 1
	v_add_lshl_u32 v12, v9, s92, 1
	v_add_lshl_u32 v40, v9, s93, 1
	v_add_lshl_u32 v137, v9, s94, 1
	v_add_lshl_u32 v146, v9, s95, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s31
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v147, v9, s96, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v40, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v136
	v_mul_f32_e32 v3, v3, v136
	v_mul_f32_e32 v4, v4, v136
	v_mul_f32_e32 v5, v5, v136
	v_mul_f32_e32 v6, v6, v136
	v_mul_f32_e32 v7, v7, v136
	v_mul_f32_e32 v8, v8, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v136, 0x80000000, v137, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v148, v9, s97, 1
	v_cndmask_b32_e64 v137, 0x80000000, v146, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s36
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v149, v9, s98, 1
	v_cndmask_b32_e64 v146, 0x80000000, v147, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v150, v9, s99, 1
	v_cndmask_b32_e64 v147, 0x80000000, v148, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s38
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v151, v9, s100, 1
	v_cndmask_b32_e64 v148, 0x80000000, v149, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v152, v9, s101, 1
	v_cndmask_b32_e64 v149, 0x80000000, v150, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s40
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v153, v9, s102, 1
	v_lshlrev_b32_e32 v10, 1, v9
	v_cndmask_b32_e64 v150, 0x80000000, v151, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v154, v9, s103, 1
	v_cndmask_b32_e64 v151, 0x80000000, v152, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s42
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v155, v9, s104, 1
	v_cndmask_b32_e64 v152, 0x80000000, v153, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s43
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v9, v9, vcc_hi, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s45
	v_cndmask_b32_e64 v153, 0x80000000, v154, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s44
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v154, 0x80000000, v155, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s46
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s84
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s30
	s_clause 0xf
	buffer_load_u16 v155, v10, s[76:79], 0 offen
	buffer_load_u16 v156, v11, s[76:79], 0 offen
	buffer_load_u16 v157, v12, s[76:79], 0 offen
	buffer_load_u16 v136, v136, s[76:79], 0 offen
	buffer_load_u16 v137, v137, s[76:79], 0 offen
	buffer_load_u16 v146, v146, s[76:79], 0 offen
	buffer_load_u16 v147, v147, s[76:79], 0 offen
	buffer_load_u16 v40, v40, s[76:79], 0 offen
	buffer_load_u16 v148, v148, s[76:79], 0 offen
	buffer_load_u16 v149, v149, s[76:79], 0 offen
	buffer_load_u16 v150, v150, s[76:79], 0 offen
	buffer_load_u16 v152, v152, s[76:79], 0 offen
	buffer_load_u16 v153, v153, s[76:79], 0 offen
	buffer_load_u16 v154, v154, s[76:79], 0 offen
	buffer_load_u16 v158, v9, s[76:79], 0 offen
	buffer_load_u16 v151, v151, s[76:79], 0 offen
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[9:12], v124
.Ltmp84:
	.loc	1 886 62                        ; attention.py:886:62
	s_waitcnt lgkmcnt(0)
	v_sub_f32_e32 v10, v38, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	v_mov_b16_e32 v12.h, v13.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(15)
	ds_store_b16 v125, v155
	s_waitcnt vmcnt(14)
	ds_store_b16 v125, v156 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v125, v157 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v125, v136 offset:2048
	s_waitcnt vmcnt(11)
	ds_store_b16 v125, v137 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v125, v146 offset:3072
	s_waitcnt vmcnt(7)
	ds_store_b16 v125, v148 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v125, v149 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v125, v150 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v125, v152 offset:6144
	s_waitcnt vmcnt(3)
	ds_store_b16 v125, v153 offset:6656
	ds_store_b16 v126, v40
	ds_store_b16 v127, v147
	s_waitcnt vmcnt(0)
	ds_store_b16 v128, v151
	ds_store_b16 v125, v154 offset:7168
	ds_store_b16 v129, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s29
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v146, v91
	ds_load_u16_d16 v147, v91 offset:256
	ds_load_u16_d16 v148, v91 offset:512
	ds_load_u16_d16 v149, v91 offset:768
	ds_load_u16_d16 v150, v91 offset:1024
	ds_load_u16_d16 v151, v91 offset:1280
	ds_load_u16_d16 v152, v91 offset:1536
	ds_load_u16_d16 v153, v91 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v91 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v91 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v91 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v91 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v91 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v91 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v91 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v91 offset:1920
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s29, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v37, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[146:153], v[138:145], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v144, v91 offset:2048
	ds_load_u16_d16 v145, v91 offset:2304
	ds_load_u16_d16 v146, v91 offset:2560
	ds_load_u16_d16 v147, v91 offset:2816
	ds_load_u16_d16 v148, v91 offset:3072
	ds_load_u16_d16 v149, v91 offset:3328
	ds_load_u16_d16 v150, v91 offset:3584
	ds_load_u16_d16 v151, v91 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v144, v91 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v145, v91 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v91 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v91 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v91 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v91 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v91 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v91 offset:3968
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s27, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s27
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v136, v11, v10, v55
	v_perm_b32 v137, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v36, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v35, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s22, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s22
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v138, v11, v10, v55
	v_perm_b32 v139, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v34, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v32, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s19, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s19
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v140, v11, v10, v55
	v_perm_b32 v141, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v31, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v30, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s17, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s17
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v142, v11, v10, v55
	v_perm_b32 v143, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v29, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[144:151], v[136:143], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s11, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v26, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s11
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v136, v11, v10, v55
	v_perm_b32 v137, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v28, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s9, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v27, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s9
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v138, v11, v10, v55
	v_perm_b32 v139, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v25, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v24, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v140, v11, v10, v55
	v_perm_b32 v141, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v23, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v22, v39
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v22, v91 offset:4096
	ds_load_u16_d16 v23, v91 offset:4352
	ds_load_u16_d16 v24, v91 offset:4608
	ds_load_u16_d16 v25, v91 offset:4864
	ds_load_u16_d16 v26, v91 offset:5120
	ds_load_u16_d16 v27, v91 offset:5376
	ds_load_u16_d16 v28, v91 offset:5632
	ds_load_u16_d16 v29, v91 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v22, v91 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v23, v91 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v24, v91 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v25, v91 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v26, v91 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v27, v91 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v28, v91 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v29, v91 offset:6016
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s9
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v142, v11, v10, v55
	v_perm_b32 v143, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v21, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[22:29], v[136:143], v[1:8]
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	v_mov_b32_e32 v136, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v20, v39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s9
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v20, v11, v10, v55
	v_perm_b32 v21, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v19, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v18, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s9, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s9
	v_mov_b16_e32 v12.h, v13.l
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v22, v11, v10, v55
	v_perm_b32 v23, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v17, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v16, v39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s9
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v24, v11, v10, v55
	v_perm_b32 v25, v11, v10, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v15, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v14, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s7, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s7
	v_permlanex16_b32 v11, v10, s58, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v26, v11, v10, v55
	v_perm_b32 v27, v11, v10, v90
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v10, v91 offset:6144
	ds_load_u16_d16 v11, v91 offset:6400
	ds_load_u16_d16 v12, v91 offset:6656
	ds_load_u16_d16 v13, v91 offset:6912
	ds_load_u16_d16 v14, v91 offset:7168
	ds_load_u16_d16 v15, v91 offset:7424
	ds_load_u16_d16 v16, v91 offset:7680
	ds_load_u16_d16 v17, v91 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v10, v91 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v11, v91 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v12, v91 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v13, v91 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v14, v91 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v15, v91 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v16, v91 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v17, v91 offset:8064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[10:17], v[20:27], v[1:8]
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v10 :: v_dual_max_f32 v10, v135, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v10, v10, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v11, v135, v10
	v_mov_b32_e32 v135, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v11, v11
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v9, v134, v11
	v_mov_b32_e32 v134, v9
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v144, s55 :: v_dual_add_nc_u32 v9, s83, v56
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s47, s83, s61
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v161, s83, v71
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s7, s47, s81
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v143, s54 :: v_dual_add_nc_u32 v10, 8, v9
	v_dual_mov_b32 v142, s53 :: v_dual_add_nc_u32 v11, 16, v9
	v_dual_mov_b32 v141, s52 :: v_dual_add_nc_u32 v12, 24, v9
	v_dual_mov_b32 v140, s51 :: v_dual_add_nc_u32 v13, 32, v9
	v_dual_mov_b32 v139, s50 :: v_dual_add_nc_u32 v14, 40, v9
	v_dual_mov_b32 v138, s49 :: v_dual_add_nc_u32 v15, 48, v9
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v17, s7, v43
	v_add_nc_u32_e32 v18, s7, v59
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s63, v9
	v_cmp_gt_i32_e64 s8, s63, v10
	v_cmp_gt_i32_e64 s9, s63, v11
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v137, s48 :: v_dual_add_nc_u32 v16, 56, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s10, s63, v12
	v_cmp_gt_i32_e64 s11, s63, v13
	v_add_nc_u32_e32 v19, s62, v17
	v_cmp_gt_i32_e64 s12, s63, v14
	v_cmp_gt_i32_e64 s13, s63, v15
	v_add_nc_u32_e32 v20, s85, v17
	v_add_nc_u32_e32 v21, s86, v17
	v_add_nc_u32_e32 v22, s87, v17
	v_add_nc_u32_e32 v23, s88, v17
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 s7, s4, s7
	s_and_b32 s8, s4, s8
	s_and_b32 s9, s4, s9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s14, s63, v16
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s10, s4, s10
	s_and_b32 s11, s4, s11
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v17, s7
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s4, s13
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v10, 0x80000000, v18, s8
	v_cndmask_b32_e64 v11, 0x80000000, v19, s9
	v_add_nc_u32_e32 v24, s89, v17
	v_cndmask_b32_e64 v12, 0x80000000, v20, s10
	v_cndmask_b32_e64 v13, 0x80000000, v21, s11
	v_cndmask_b32_e64 v14, 0x80000000, v22, s12
	v_cndmask_b32_e64 v15, 0x80000000, v23, s13
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s14, s4, s14
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x6
	buffer_load_u8 v9, v9, s[68:71], 0 offen
	buffer_load_u8 v10, v10, s[68:71], 0 offen
	buffer_load_u8 v11, v11, s[68:71], 0 offen
	buffer_load_u8 v12, v12, s[68:71], 0 offen
	buffer_load_u8 v13, v13, s[68:71], 0 offen
	buffer_load_u8 v14, v14, s[68:71], 0 offen
	buffer_load_u8 v15, v15, s[68:71], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v24, s14
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v168, 14, v161
	v_add_nc_u32_e32 v164, 6, v161
	v_add_nc_u32_e32 v171, 18, v161
	v_add_nc_u32_e32 v180, 36, v161
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_u8 v16, v16, s[68:71], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v189, 54, v161
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s31, s63, v168
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v168, s47, v71, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s63, v161
	v_cmp_gt_i32_e64 s36, s63, v164
	v_cmp_gt_i32_e64 s29, s63, v171
	v_cmp_gt_i32_e64 s20, s63, v180
	v_cmp_gt_i32_e64 s11, s63, v189
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v164, 0x6c, v168
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v162, 2, v161
	v_add_nc_u32_e32 v165, 8, v161
	v_add_nc_u32_e32 v172, 20, v161
	v_add_nc_u32_e32 v181, 38, v161
	v_add_nc_u32_e32 v190, 56, v161
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v164, 0x80000000, v164, s11
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s38, s63, v162
	v_cmp_gt_i32_e64 s35, s63, v165
	v_cmp_gt_i32_e64 s28, s63, v172
	v_cmp_gt_i32_e64 s19, s63, v181
	v_cmp_gt_i32_e64 s10, s63, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v165, 0x70, v168
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v163, 4, v161
	v_add_nc_u32_e32 v166, 10, v161
	v_add_nc_u32_e32 v173, 22, v161
	v_add_nc_u32_e32 v182, 40, v161
	v_add_nc_u32_e32 v191, 58, v161
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v165, 0x80000000, v165, s10
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s37, s63, v163
	v_cmp_gt_i32_e64 s34, s63, v166
	v_cmp_gt_i32_e64 s27, s63, v173
	v_cmp_gt_i32_e64 s18, s63, v182
	v_cmp_gt_i32_e64 s9, s63, v191
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v166, 0x74, v168
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v167, 12, v161
	v_add_nc_u32_e32 v174, 24, v161
	v_add_nc_u32_e32 v183, 42, v161
	v_add_nc_u32_e32 v192, 60, v161
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v166, 0x80000000, v166, s9
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s33, s63, v167
	v_cmp_gt_i32_e64 s26, s63, v174
	v_cmp_gt_i32_e64 s17, s63, v183
	v_cmp_gt_i32_e64 s8, s63, v192
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v167, 0x78, v168
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v175, 26, v161
	v_add_nc_u32_e32 v184, 44, v161
	v_add_nc_u32_e32 v176, 28, v161
	v_add_nc_u32_e32 v185, 46, v161
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v167, 0x80000000, v167, s8
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s25, s63, v175
	v_cmp_gt_i32_e64 s16, s63, v184
	v_cmp_gt_i32_e64 s24, s63, v176
	v_cmp_gt_i32_e64 s15, s63, v185
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v177, 30, v161
	v_add_nc_u32_e32 v186, 48, v161
	v_add_nc_u32_e32 v170, 16, v161
	v_add_nc_u32_e32 v178, 32, v161
	v_add_nc_u32_e32 v179, 34, v161
	v_add_nc_u32_e32 v187, 50, v161
	v_add_nc_u32_e32 v188, 52, v161
	v_add_nc_u32_e32 v193, 62, v161
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s23, s63, v177
	v_cmp_gt_i32_e64 s14, s63, v186
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v161, 0x60, v168
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s22, s63, v178
	v_cmp_gt_i32_e64 s13, s63, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v162, 0x64, v168
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s30, s63, v170
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v161, 0x80000000, v161, s14
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s21, s63, v179
	v_cmp_gt_i32_e64 s12, s63, v188
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v162, 0x80000000, v162, s13
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s7, s63, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v163, 0x68, v168
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v169, s83, v42
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(7)
	ds_store_b8 v60, v9
	s_waitcnt vmcnt(5)
	ds_store_b8 v60, v11 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v60, v13 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b8 v60, v15 offset:1536
	ds_store_b8 v61, v10
	ds_store_b8 v61, v12 offset:512
	ds_store_b8 v61, v14 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v16 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[15:18], v62 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v62 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[19:22], v63 offset1:1
	ds_load_2addr_stride64_b64 v[149:152], v63 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v64 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v64 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v65 offset1:1
	ds_load_2addr_stride64_b64 v[157:160], v65 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v163, 0x80000000, v163, s12
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s63, v169
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v164, v164, s[72:75], 0 offen
	buffer_load_u16 v165, v165, s[72:75], 0 offen
	buffer_load_u16 v166, v166, s[72:75], 0 offen
	buffer_load_u16 v167, v167, s[72:75], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s14, s6, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v161, v161, s[72:75], 0 offen
	buffer_load_u16 v162, v162, s[72:75], 0 offen
	buffer_load_u16 v163, v163, s[72:75], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[15:16], v[44:45], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[44:45], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[19:20], v[46:47], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[46:47], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[44:45], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[48:49], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v146, 36, v168
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[48:49], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[149:150], v[46:47], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v150, 56, v168
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[50:51], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v146, 0x80000000, v146, s29
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[147:148], v[44:45], v[137:144] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v137, 0x80000000, v168, s39
	buffer_load_u16 v146, v146, s[72:75], 0 offen
	v_add_nc_u32_e32 v147, 40, v168
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[151:152], v[46:47], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[48:49], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v139, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v148, 44, v168
	v_cndmask_b32_e64 v147, 0x80000000, v147, s28
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[155:156], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v155, 0x48, v168
	v_add_nc_u32_e32 v156, 0x4c, v168
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[50:51], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v147, v147, s[72:75], 0 offen
	v_add_nc_u32_e32 v157, 0x50, v168
	v_cndmask_b32_e64 v155, 0x80000000, v155, s20
	v_cndmask_b32_e64 v156, 0x80000000, v156, s19
	v_cndmask_b32_e64 v148, 0x80000000, v148, s27
	v_add_nc_u32_e32 v158, 0x54, v168
	v_cndmask_b32_e64 v157, 0x80000000, v157, s18
	buffer_load_u16 v155, v155, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 4, v168
	s_clause 0x2
	buffer_load_u16 v156, v156, s[72:75], 0 offen
	buffer_load_u16 v149, v148, s[72:75], 0 offen
	buffer_load_u16 v157, v157, s[72:75], 0 offen
	v_add_nc_u32_e32 v148, 48, v168
	v_cndmask_b32_e64 v137, 0x80000000, v137, s38
	v_cndmask_b32_e64 v158, 0x80000000, v158, s17
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[159:160], v[50:51], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v159, 0x58, v168
	v_cndmask_b32_e64 v148, 0x80000000, v148, s26
	buffer_load_u16 v138, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 8, v168
	buffer_load_u16 v158, v158, s[72:75], 0 offen
	v_cndmask_b32_e64 v159, 0x80000000, v159, s16
	buffer_load_u16 v151, v148, s[72:75], 0 offen
	v_add_nc_u32_e32 v148, 52, v168
	v_cndmask_b32_e64 v137, 0x80000000, v137, s37
	v_add_nc_u32_e32 v160, 0x5c, v168
	buffer_load_u16 v159, v159, s[72:75], 0 offen
	v_cndmask_b32_e64 v150, 0x80000000, v150, s24
	v_cndmask_b32_e64 v148, 0x80000000, v148, s25
	buffer_load_u16 v140, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 12, v168
	v_cndmask_b32_e64 v160, 0x80000000, v160, s15
	s_clause 0x1
	buffer_load_u16 v150, v150, s[72:75], 0 offen
	buffer_load_u16 v148, v148, s[72:75], 0 offen
	v_add_nc_u32_e32 v152, 60, v168
	v_cndmask_b32_e64 v137, 0x80000000, v137, s36
	buffer_load_u16 v160, v160, s[72:75], 0 offen
	v_add_nc_u32_e32 v153, 64, v168
	v_add_nc_u32_e32 v154, 0x44, v168
	v_cndmask_b32_e64 v152, 0x80000000, v152, s23
	buffer_load_u16 v141, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 16, v168
	v_cndmask_b32_e64 v153, 0x80000000, v153, s22
	v_cndmask_b32_e64 v154, 0x80000000, v154, s21
	buffer_load_u16 v152, v152, s[72:75], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s17, s0, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v137, 0x80000000, v137, s35
	s_clause 0x1
	buffer_load_u16 v153, v153, s[72:75], 0 offen
	buffer_load_u16 v154, v154, s[72:75], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s16, s1, vcc_lo
	s_and_b32 s15, s5, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v142, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 20, v168
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v137, 0x80000000, v137, s34
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v143, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 24, v168
	v_cndmask_b32_e64 v137, 0x80000000, v137, s33
	buffer_load_u16 v144, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 28, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v137, 0x80000000, v137, s31
	buffer_load_u16 v145, v137, s[72:75], 0 offen
	v_add_nc_u32_e32 v137, 32, v168
	v_add_nc_u32_e32 v168, 0x7c, v168
	v_cndmask_b32_e64 v137, 0x80000000, v137, s30
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v168, 0x80000000, v168, s7
	s_clause 0x1
	buffer_load_u16 v137, v137, s[72:75], 0 offen
	buffer_load_u16 v168, v168, s[72:75], 0 offen
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v169, v72
	v_cmp_le_i32_e64 s7, v169, v73
	v_cmp_le_i32_e64 s8, v169, v74
	v_cmp_le_i32_e64 s9, v169, v75
	s_and_not1_b32 s11, s17, exec_lo
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s10, vcc_lo, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s15
	s_and_b32 s9, s9, s14
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s10
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s10, s14, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s10, s9
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v169, v76
	v_cmp_ge_i32_e64 s7, v169, v77
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v169, v80
	v_cmp_le_i32_e64 s10, v169, v81
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v169, v78
	v_cmp_ge_i32_e64 s11, v169, v79
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v169, v82
	v_cmp_le_i32_e64 s13, v169, v83
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, s7, s10
	s_and_b32 s9, s9, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s12
	s_and_b32 s10, s11, s13
	s_and_b32 s8, s8, s15
	s_and_b32 s10, s10, s14
	s_and_not1_b32 s11, s17, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s9
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s9, s14, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s9, s10
	s_branch .LBB0_9
.LBB0_14:                               ; %._crit_edge.loopexit
.Ltmp88:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v10, v10 :: v_dual_add_f32 v10, 0, v9
	v_readlane_b32 s25, v208, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v12, 0xff800000, v11 :: v_dual_mov_b32 v11, v68
.Ltmp89:
.LBB0_15:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshlrev_b32_e32 v9, 2, v0
.Ltmp91:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e64 s0, 0, v58
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp93:
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v12, 0xff800000, v12 :: v_dual_and_b32 v13, 12, v9
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v1, 0, v1, s0
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp95:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v13, 0, v13
.Ltmp97:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v17, 0, v4, s0
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v3
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_load_b32 v12, v13
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v10
.Ltmp102:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e64 v18, 0, v5, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s59, s59, s3
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v2
.Ltmp108:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s82, s82, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s25, s59
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v10, v1
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s4, s1, s82
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s1, exec_lo
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v13 :: v_dual_add_f32 v3, v3, v14
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v13, v12 :: v_dual_mov_b32 v16, v11
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v2 :: v_dual_mov_b32 v15, v3
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v14
	v_add_f32_e32 v14, v3, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v11, v16 :: v_dual_max_f32 v11, v12, v13
.Ltmp122:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp123:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v13, v11
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v3 :: v_dual_add_f32 v4, v14, v16
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp129:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v15
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v2, v1
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v18, v16
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v16 :: v_dual_add_f32 v15, v17, v15
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v16, v16, v18
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v7
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v18, v14, v19 :: v_dual_add_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v19, v7, v20 :: v_dual_mov_b32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v8, v8, v21
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v16
	v_dual_mov_b32 v22, v8 :: v_dual_mov_b32 v21, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v15, v17
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v16, v18, v20
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v8, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v22, v56, v41
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v21
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v8, v7
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_17
; %bb.16:
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, v11, v11
.Ltmp154:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s5, s4, 31
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v10, v12 :: v_dual_mov_b32 v12, 0
.Ltmp156:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[4:5], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v22, v13
.Ltmp158:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s6, s56, s6
	s_addc_u32 s7, s57, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_17:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
.Ltmp159:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v16, v19
	v_dual_add_f32 v16, v14, v15 :: v_dual_add_f32 v15, v4, v6
	v_dual_add_f32 v14, v3, v5 :: v_dual_add_f32 v13, v1, v2
.Ltmp160:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_lshlrev_b32_e32 v0, 5, v0
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v7, v8 :: v_dual_and_b32 v4, 0xe0, v57
.Ltmp162:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v57
	v_add_nc_u32_e32 v2, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 32, v0
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v18, v21 :: v_dual_add_nc_u32 v3, 0, v4
	v_add_f32_e32 v11, v17, v20
.Ltmp164:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v0, v2, v0, v1
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s4, v42
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[56:59], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp165:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 209
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 209
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14600
; TotalNumSgprs: 107
; NumVgprs: 209
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 209
; Occupancy: 7
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
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
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
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     209
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
